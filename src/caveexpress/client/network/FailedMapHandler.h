#pragma once

#include "ui/UI.h"
#include "network/IProtocolHandler.h"
#include "network/INetwork.h"
#include "network/messages/FailedMapMessage.h"
#include "caveexpress/client/ui/windows/UIMapFailedWindow.h"
#include "client/ClientMap.h"
#include "common/Commands.h"
#include "service/ServiceProvider.h"

namespace caveexpress {

class FailedMapHandler: public ClientProtocolHandler<FailedMapMessage> {
private:
	ClientMap& _clientMap;
	ServiceProvider& _serviceProvider;
public:
	FailedMapHandler(ClientMap& clientMap, ServiceProvider& serviceProvider) :
			_clientMap(clientMap), _serviceProvider(serviceProvider) {
	}

	void execute(const FailedMapMessage* msg) override
	{
		const bool isMultiplayer = _serviceProvider.getNetwork().isMultiplayer();
		_clientMap.close();
		Commands.executeCommandLine(CMD_CL_DISCONNECT);
		UI::get().popMain();
		UIMapFailedWindow* window = static_cast<UIMapFailedWindow*>(UI::get().push(UI_WINDOW_MAPFAILED));
		window->updateReason(isMultiplayer, msg->getReason(), msg->getTheme());
	}
};

}
