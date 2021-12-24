sudo launchctl disable system/com.adobe.acc.installer.v2
sudo launchctl disable system/com.adobe.acc.installer
sudo launchctl disable system/Adobe_Genuine_Software_Integrity_Service
sudo launchctl disable system/com.adobe.AdobeCreativeCloud
sudo launchctl disable system/com.adobe.agsservice
sudo launchctl disable system/com.adobe.accmac
launchctl disable gui/$(id -u)/com.adobe.acc.AdobeCreativeCloud.2416
launchctl disable gui/$(id -u)/com.adobe.accmac.8108
launchctl disable gui/$(id -u)/com.adobe.CCXProcess.2252
launchctl disable gui/$(id -u)/com.adobe.CreativeCloud
launchctl disable gui/$(id -u)/com.adobe.CCLibrary.4032
launchctl disable gui/$(id -u)/com.adobe.AdobeCreativeCloud
launchctl unload -w {,~}/Library/LaunchAgents/com.adobe.*.plist
sudo launchctl unload -w /Library/LaunchDaemons/com.adobe.*.plist
