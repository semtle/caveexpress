#pragma once

#include "ui/UI.h"
#include "common/ConfigManager.h"
#include "common/CommandSystem.h"
#include "common/Commands.h"
#include "campaign/CampaignManager.h"

class ModeSwitchPopupCallback: public UIPopupCallback {
private:
	const std::string _mode;
	CampaignManager& _campaignManager;
public:
	ModeSwitchPopupCallback(const std::string& mode,
			CampaignManager& campaignManager) :
			_mode(mode), _campaignManager(campaignManager) {
	}

	void onOk() override {
		Config.setMode(_mode);
		if (Config.isModeHard()) {
			Commands.executeCommand(CMD_CL_DISCONNECT);
			_campaignManager.resetAllSavedData();
		}
		UIPopupCallback::onOk();
	}
};

class ModeSetListener: public UINodeListener {
private:
	const std::string _mode;
	CampaignManager& _campaignManager;
public:
	ModeSetListener(const std::string& mode, CampaignManager& campaignManager) :
			_mode(mode), _campaignManager(campaignManager) {
	}

	void onClick() override {
		if (Config.isModeSelected()) {
			if (Config.isModeHard() && _mode == "hard")
				return;
			if (Config.isModeEasy() && _mode == "easy")
				return;
			UIPopupCallbackPtr c(new ModeSwitchPopupCallback(_mode, _campaignManager));
			if (_mode == "hard")
				UI::get().popup(tr("Reset game progress?"), UIPOPUP_OK | UIPOPUP_CANCEL, c);
			else
				UI::get().popup(tr("Are you sure?"), UIPOPUP_OK | UIPOPUP_CANCEL, c);
		} else {
			Config.setMode(_mode);
			UI::get().delayedPop();
		}
	}
};
