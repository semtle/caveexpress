#include "ClientConsole.h"
#include "ui/UI.h"
#include "ui/BitmapFont.h"
#include "common/CommandSystem.h"
#include "common/IFrontend.h"
#include "common/Log.h"
#include "common/ConfigManager.h"
#include "common/EventHandler.h"
#include "common/System.h"
#include <SDL.h>
#include <SDL_platform.h>

#define CMD_CL_TOGGLECONSOLE "cl_toggleconsole"

ClientConsole::ClientConsole () :
		IConsole(), _padding(2), _font(DEFAULT_FONT), _frontend(nullptr)
{
	Log::get().addConsole(this);
	_active = false;
}

ClientConsole::~ClientConsole ()
{
	Log::get().removeConsole(this);
	Commands.removeCommand(CMD_CL_TOGGLECONSOLE);
}

void ClientConsole::init (IFrontend *frontend)
{
	_frontend = frontend;
	Vector4Set(colorBlack, _fontColor);
	Commands.registerCommandVoid(CMD_CL_TOGGLECONSOLE, bindFunctionVoid(ClientConsole::toggleConsole));
}

void ClientConsole::render ()
{
	if (!_active)
		return;

	_frame++;
	if ((_frame % 10) == 0)
		_cursorBlink ^= true;

	const Color color = { 1.0f, 1.0f, 1.0f, 0.6f };
	_frontend->renderFilledRect(0, 0, 0, 0, color);

	const BitmapFontPtr& font = UI::get().getFont(_font);
	if (!_text.empty()) {
		int y = (_text.size() - 1) * font->getCharHeight();
		const int newY = _frontend->getHeight() - _padding * font->getCharHeight();
		if (y > newY)
			y = newY;

		for (ConsoleTextConstIter i = _text.end() - 1; i != _text.begin(); --i) {
			font->print(*i, _fontColor, _padding, y);
			y -= font->getCharHeight();
			if (y < 0)
				break;
		}
	}

	commandLineDraw(font);
}

void ClientConsole::toggleConsole ()
{
	_active ^= true;
	if (_active)
		SDL_StartTextInput();
	else
		SDL_StopTextInput();
}

void ClientConsole::logInfo (const std::string& string)
{
	std::vector<std::string> tokens;
	string::splitString(string, tokens, "\n");
	for (const std::string& token : tokens) {
		_text.push_back(token);
	}
}

void ClientConsole::logTrace (const std::string& string)
{
	logInfo(string);
}

void ClientConsole::logError (const std::string& string)
{
	std::vector<std::string> tokens;
	string::splitString(string, tokens, "\n");
	for (const std::string& token : tokens) {
		_text.push_back(token);
	}
}

void ClientConsole::logDebug (const std::string& string)
{
	logInfo(string);
}

void ClientConsole::update (uint32_t deltaTime)
{
}

bool ClientConsole::onKeyPress (int32_t key, int16_t modifier)
{
	switch (key) {
	case SDLK_TAB:
		if (modifier & KMOD_SHIFT) {
			toggleConsole();
			return true;
		}
	}

	if (!_active)
		return false;

	switch (key) {
	case SDLK_ESCAPE:
		toggleConsole();
		break;
	case SDLK_RETURN:
		executeCommandLine();
		break;
	case SDLK_BACKSPACE:
		cursorDelete();
		break;
	case SDLK_DELETE:
		cursorDelete(false);
		break;
	case SDLK_INSERT:
		_overwrite ^= true;
		break;
	case SDLK_LEFT:
		cursorLeft();
		break;
	case SDLK_RIGHT:
		cursorRight();
		break;
	case SDLK_UP:
		cursorUp();
		break;
	case SDLK_DOWN:
		cursorDown();
		break;
	case SDLK_TAB:
		autoComplete();
		break;
	default:
		return false;
	}

	return true;
}

void ClientConsole::commandLineDraw (const BitmapFontPtr& font) const
{
	std::string s = "]" + _commandLine;
	if (_cursorBlink)
		s += "_";
	font->print(s, _fontColor, _padding, _frontend->getHeight() - font->getCharHeight());
}
