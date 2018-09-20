# Change Log

> **Note:** Changes mark as **Beta** can change rapidly without backwards compatimbility.

#### 0.4.x Releases
- [0.4.9](#0.4.9)
- [0.4.8](#0.4.8)
- [0.4.7](#0.4.7) Swift **4.2**
- [0.4.6](#0.4.6)
- [0.4.5](#0.4.5)
- [0.4.4](#0.4.4)
- [0.4.3](#0.4.3)
- [0.4.2](#0.4.2)
- [0.4.1](#0.4.1)
- [0.4.0](#0.4.0)

#### 0.3.x Releases

0.3.x Releases are the last release that will mantain support for iOS 9.x. Since Release 0.4.0 wingu-ios-sdk-essentials minimum deployment target will be set to iOS 10.0

- [0.3.0](#0.3.0)

--

## [0.4.9](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.9)

###### API VERSION 0.12

#### Fixed
- Fixed issue with auto-dismissing controller whenever form component was filled incorrectly.

## [0.4.8](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.8)

###### API version 0.12

#### Added
- New callback method in `WinguLocationsDelegate` for unseen channels `winguUnseenChannels(_:)` [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Protocols/WinguLocationsDelegate.html)
- `SeenChannels` as a companion for above delegate method [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/SeenChannels.html)
- `Channel` gain ability to be marked as seen by user with method `Channel.seen()`. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Channel.html)


## [0.4.7](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.7)

###### API version 0.12

#### Changed
- Library was compiled with Swift version **4.2**.


> If you need to work with version **4.1.2** use versions [0.4.6](#0.4.6) or below.<br/>
> Versions for Swift 4.1.x will not be supported anymore. Please update your project to the latest Swift version.

## [0.4.6](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.6)

###### API version 0.12

#### Added
- Form component. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/FormComponent.html)
- Documentation has now purpose-based structure rather than type-based

#### Fixed
- Whenever directory for writing was not open SDK may failed to store data persistently. Fixed.

## [0.4.5](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.5)

###### API version 0.12

#### Added
- Collection of content languages in `AvailableLanguages`. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/AvailableLanguages.html)

## [0.4.4](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.4)

###### API version 0.12

#### Fixed
- fix issue when occasionally notification may be triggered with cached data 

## [0.4.3](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.3)

###### API version 0.12

#### Added
- variable `notifiedDate` is now `public` in `Channel`. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Channel.html)

## [0.4.2](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.2)

###### API version 0.12

#### Added
- `Card` conform fully to `Codable`.
- Encoded `Content` object now contain also informations about `Pack`
- Allow `Channel` to be encoded and decoded [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Channel.html)

#### Fixed
- `Channel` without content now return correctly in delegate methods.
- Notification payload will again contain information about channel that trigger notification in `userInfo` under key `channel`

## [0.4.1](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.1)

###### API version 0.12

#### Added
- `NotificationsManager` gain ability to not send wingu notifications. It can be used with custom notifications or to disable them completely. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/NotificationsManager.html)

## [0.4.0](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.0)

###### API version: 0.12

#### Added
- [Beacon](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Beacon.html) gain `inRange` var with associated `enum`
- WinguLocationsDelegate gain extra callback method `updatePhysical()` [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Protocols/WinguLocationsDelegate.html)
- update Analytics for automatic sending and data collection for enter in trigger region. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/WinguAnalytics.html)

#### Removed
- iOS 9.x is no longer supported

#### Beta
- `Logger` struct that help limit logging [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Logger.html) 


## [0.3.0](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.3.0)

###### API version: 0.12

#### Added
- update channels is now possible to trigger manually. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Channel.html#/s:17winguSDKEssential7ChannelC6updateyySbcF)
- notifications now can be configured to be triggered only when content is updated in wingu portal. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/NotificationsManager.html#/s:17winguSDKEssential20NotificationsManagerC04onlyC17WithContentUpdateSbvp)
- `Content` now contains `lastChange: Date` that tell when last update in wingu portal was made. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Content.html#/s:17winguSDKEssential7ContentC10lastChange10Foundation4DateVSgvp)
