fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
## iOS
### ios prebuild
```
fastlane ios prebuild
```

### ios upload_beta
```
fastlane ios upload_beta
```
Deploy to iTunes Connect
### ios screenshot
```
fastlane ios screenshot
```
Create Screenshots
### ios upload_screenshots
```
fastlane ios upload_screenshots
```
Upload Screenshots
### ios match_development
```
fastlane ios match_development
```
Match Development
### ios match_adhoc
```
fastlane ios match_adhoc
```
Match Adhoc
### ios match_appstore
```
fastlane ios match_appstore
```
Match Appstore
### ios add_device
```
fastlane ios add_device
```

### ios refresh_profiles
```
fastlane ios refresh_profiles
```


----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
