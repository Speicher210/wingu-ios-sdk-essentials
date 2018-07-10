# Change Log

#### 0.3.x Releases

0.3.x Releases are the last release that will mantain support for iOS 9.x. Since Release 0.4.0 wingu-ios-sdk-essentials minimum deployment target will be set to iOS 10.0

- [0.3.0](#0.3.0)

--
## [0.3.0](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.3.0)

#### Added
- update channels is now possible to trigger manually. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Channel.html#/s:17winguSDKEssential7ChannelC6updateyySbcF)
- notifications now can be configured to be triggered only when content is updated in wingu portal. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/NotificationsManager.html#/s:17winguSDKEssential20NotificationsManagerC04onlyC17WithContentUpdateSbvp)
- `Content` now contains `lastChange: Date` that tell when last update in wingu portal was made. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Content.html#/s:17winguSDKEssential7ContentC10lastChange10Foundation4DateVSgvp)