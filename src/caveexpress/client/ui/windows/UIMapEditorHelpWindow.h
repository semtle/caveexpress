#pragma once

#include "ui/windows/UIHelpWindow.h"

namespace caveexpress {

class UIMapEditorHelpWindow: public UIHelpWindow {
public:
	explicit UIMapEditorHelpWindow (IFrontend* frontend);
	virtual ~UIMapEditorHelpWindow ();
};

}
