# Change Log


#### 1.0.x Releases
- [1.0.6](#1.0.6)
- [1.0.5](#1.0.5)
- [1.0.4](#1.0.4)
- [1.0.3](#1.0.3)
- [1.0.2](#1.0.2)
- [1.0.1](#1.0.1) Swift **4.2.1**
- [1.0.0](#1.0.0)

#### 0.4.x Releases
- [0.4.12](#0.4.12)
- [0.4.11](#0.4.11)
- [0.4.10](#0.4.10)
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
# [1.0.6](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/1.0.6)

###### API version 0.13

#### Changed:
- `CMSComponent` was renamed to `TextComponent`.
- `CMSType` was renamed to `TextType`.
- When fetching a stored file will fail for some reason file will be clear up from invalid data.


#### Added:
- `CouponComponent` has now option to save data and get saved collection. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/CouponComponent.html)
- `RatingComponent` now has ability to store value and return voted value from cache.
- Add `FileDownloadDelegate` protocol to be able to track progress of download large files like PDF.
- Add support for `.png` files in `ImageMetadata`.

#### Fixed:
- Fixed issue that may cause `SeenChannels` not load after incomplete analytics. 
- GIFs wrong url generation was fixed.

--
# [1.0.5](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/1.0.5)

###### API version 0.13

#### Added:
- variable `unseen` is now `public` in `Channel`. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Channel.html)

# [1.0.4](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/1.0.4)

###### API version 0.13

#### Fixed:
- Sending geofences physical is now working as expected [See Issue #1](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/issues/1)

# [1.0.3](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/1.0.3)

###### API version 0.13

#### Added:
- Add [MenuItem](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/MenuItem.html) and [ContentOfMenuItem](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/ContentOfMenuItem.html).

# [1.0.2](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/1.0.2)

###### API version 0.13

#### Changed:
* API Version changed from `0.12` to `0.13`.
* `RatingComponent` post method changed from single parameters for a helper structure `RatingComponentInfo` [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Structs/RatingComponent.html) 

#### Added:
* Analytics for `Deck` and `Content` visibility will be automatically collected when `winguSDKContent` in use. Whenever you're using plain `winguSDKEssentials` and want to keep track analytics in wingu portal [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Interatction.html)
* Add extension for `Notification.Name` with `winguLogger`. That's allow you to get logs in convenient place using `NotificationCenter` registration. Full list of errors and warnings will be released soon.
* `Interaction` gain ability to record different types of analytics. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Interatction.html)
* `Analyzable` types such as `Channel`, `Content`, `Deck` now has `stop` methods for Analytics (`stopViewing` and `stopDwelling`).
* `FormComponent` get `displayable()` function to return item that was displayed for a user to get persistent field filled up [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/FormComponent.html)
* `FormComponent` has now `savePersistantForm()` that will store on device pre-filled persistent form mark as persistent in a wingu portal [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/FormComponent.html)
* `FormElement` has `isPersistent` value for keeping object persistent (settable in wingu portal) [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/FormElement.html)


#### Removed:
* As `Analytics` shoudn't really be a part of `WinguLocation` this part was moved to `Interaction`.
* Classes `DwellInteraction`, `EnterInteraction` and `ViewInteraction` are no longer public. `Interaction` gain special level of abstraction to handle different analytics types. 

# [1.0.1](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/1.0.1)

###### API version 0.12

#### Changed:
* This version was recompiled for Swift **4.2.1**

# [1.0.0 Aviation](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/1.0.0)

###### API version 0.12

This version has changed a lot in process of initialization an SDK and with interacting from background. See changes in public methods below. All configuration from classes like `BeaconScanner` or `NotificationsManager` was moved from clasess to one structure - `WinguConfiguration` [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Structs/WinguConfiguration.html)

#### Removed:
* `WinguLocations` is no longer singleton. `WinguLocations.shared` was removed. This should be replaced by `WinguLocation(configuraton:)` initializer.
- `BeaconScanner` is no longer singleton. `BeaconScanner.shared` was removed. This should be replaced by regular initializer.
- `GeofenceScanner` is no longer singleton. `GeofenceScanner.shared` was removed. This should be replaced by regular initializer.

#### Added:
- `WinguLocation` has now initializer with `WinguConfiguration`. 
- `WinguConfiguration` now containing all the information that should be used to configure SDK for your use case. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Structs/WinguConfiguration.html)

#### Changed:
- wingu no longer stopping a service on deinit method. Remember to stop service when you no longer need it.

## [0.4.12](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.12)

###### API version 0.12

#### Fixed
- Fixed issue with analytics data format.

## [0.4.11](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.11)

###### API version 0.12

#### Added
- Add [EnterInteraction](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/EnterInteraction.html), [DwellInteraction](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/DwellInteraction.html) and [ViewInteraction](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/ViewInteraction.html) measurements that allows you to monitore enter action and record time spend in channel or deck.

- Add `init` for [Interaction](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/Interaction.html).

#### Fixed
- Fixed issue with sending empty `timespan`.

## [0.4.10](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.10)

###### API version 0.12

#### Added
- Add extra validations for `FormComponent` that allows you to not make request before all the fields are properly filled. [See documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/Classes/FormComponent.html)

## [0.4.9](https://github.com/wingu-GmbH/wingu-ios-sdk-essentials/releases/tag/0.4.9)

###### API version 0.12

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
