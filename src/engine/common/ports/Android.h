#pragma once

#include "engine/common/ports/Unix.h"
#include "engine/common/String.h"
#include "engine/common/Version.h"
#include <string>
#include <vector>
#include <jni.h>
#include <android/log.h>

class Android: public Unix {
private:
	bool _paymentLoaded;
	mutable JNIEnv* _env;
	jclass _cls;
	jobject _assetManager;

	jmethodID _showAds;
	jmethodID _hideAds;
	jmethodID _showFullscreenAds;
	jmethodID _openURL;
	jmethodID _hasItem;
	jmethodID _track;
	jmethodID _buyItem;
	jmethodID _isOUYA;
	jmethodID _isSmallScreen;
	jmethodID _minimize;
	jmethodID _getPaymentEntries;
	jmethodID _getLocale;

	int _externalState;

	bool testException ();

	String getSystemProperty (const char *name) const;

public:
	Android ();
	virtual ~Android ();

	void logError (const std::string& error) const override {
		__android_log_write(ANDROID_LOG_ERROR, APPFULLNAME, error.c_str());
	}

	void logOutput (const std::string& string) const override {
		__android_log_write(ANDROID_LOG_INFO, APPFULLNAME, string.c_str());
	}

	void notifyPaymentLoaded ();
	bool isOUYA () const override;
	void tick (uint32_t deltaTime) override;
	int getAdHeight() const override;
	bool track (const std::string& hitType, const std::string& screenName) override;
	int getScreenPadding() override;
	DirectoryEntries listDirectory (const std::string& basedir, const std::string& subdir = "") override;
	void showAds (bool show, bool ontop) override;
	bool showFullscreenAds () override;
	int openURL (const std::string& url) const override;
	void exit (const std::string& reason, int errorCode) override;
	std::string getHomeDirectory () override;
	std::string getCurrentWorkingDir () override { return ""; }
	std::string getDatabaseDirectory () override;
	void achievementUnlocked (const std::string& id) override;
	bool hasAchievement (const std::string& id) override;
	bool hasTouch () const override;
	bool quit () override;
	bool wantCursor () override;
	bool isSmallScreen () override;
	bool supportFocusChange () override;
	std::string getLanguage () override;
	bool supportPayment () override;
	void getPaymentEntries (std::vector<PaymentEntry>& entries) override;
	bool hasItem (const std::string& id) override;
	bool buyItem (const std::string& id) override;
	bool hasMouseOrFinger () override;
	bool canDisableJoystick () override { return !isOUYA(); }
	bool wantBackButton () override { return isOUYA(); }
};
