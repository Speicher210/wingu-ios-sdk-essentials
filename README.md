# wingu-ios-sdk-essentials

[![Documentation](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/badge.svg)](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/)
[![Platform](https://img.shields.io/cocoapods/p/wingu-ios-sdk-essentials.svg?style=flat)](http://cocoapods.org/pods/wingu-ios-sdk-essentials)
[![License](https://img.shields.io/cocoapods/l/wingu-ios-sdk-essentials.svg?style=flat)](http://cocoapods.org/pods/wingu-ios-sdk-essentials)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Version](https://img.shields.io/cocoapods/v/wingu-ios-sdk-essentials.svg?style=flat)](http://cocoapods.org/pods/wingu-ios-sdk-essentials)


wingu sdk essentials is an iOS SDK for managing triggers configured at [wingu](https://wingu.de). It will range beacons and find geofences already with content attached. 

wingu essentials is delivered to you in pre-compiled form `.framework`. It's written in Swift 4.2.1


# Table of Contents
1. [Installation](#installation)
 * [Cocoapods](#cocoapods)
 * [Carthage](#carthage)
 * [Manual installation](#manual_installation)
2. [Requirements](#requirements)
3. [Quick start guide](#quick_start)
4. [Documentation](#full_documentation)
5. [License](#license)

<a name="installation"></a>
## Installation

<a name="cocoapods"></a>
### Cocoapods
wingu-ios-sdk-essentials is available through [CocoaPods](http://cocoapods.org). To install
it, add the following line to your Podfile:

```ruby
pod 'wingu-ios-sdk-essentials'
```
<a name="carthage"></a>
### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a simple, decentralized dependency manager for Cocoa. 


Version of library can be downloaded using `binary` option in `Cartfile`. Add this line to `Cartfile`:

```ruby
binary "https://raw.githubusercontent.com/wingu-GmbH/wingu-ios-sdk-essentials/master/wingu-ios-sdk-essentials.json"
```
<a name="manual_installation"></a>
### Manual Installation

Copy `winguSDKEssential.framework` file from this repository to your project.

<a name="requirements"></a>
## Requirements

There is a location permission needed to run an app and work with wingu channels. Add this keys into your `Info.plist` file:

```
NSLocationAlwaysAndWhenInUseUsageDescription
NSLocationWhenInUseUsageDescription
```

<a name="quick_start"></a>
## Quick start guide

This guide shows you how get triggers callbacks with default configuration. You can always have some custom parameters in scanners. For all available configuration please check our [full documentation](#full_documentation). Depends on a use case you may need `winguLocations` in only one model or in whole app.

We recommend create a one instance of `winguLocations`:

```swift
lazy var wingu: WinguLocations = {
    let wingu: WinguLocations = WinguLocations(configuration: WinguConfiguration.defaultConfiguration)
    wingu.delegate = self
    return wingu
}()
```

Your class should conform to protocol `WinguLocationsDelegate` and there you will receive all delegate callbacks from wingu triggers 
```swift
extension YourClass: WinguLocationsDelegate { 
	func winguChannels(_ channels: [Channel]) {
    	// your code here
	}
}
```

`WinguLocationsDelegate` requires only one method implemented to get triggers, but you can check [full documentation](#full_documentation). This required callback is:


`Channel` is default class for all wingu triggers. This method will return available list of channels in range and will also get called whenever some trigger are out of range or scanner found a new one.

You can start ranging beacons by calling

```swift
wingu.start()
```

See example project to learn more.

> The quickest way to get started is to use above code in your project. Demo `apiKey` is already there. If you want to start receiving geofences just select `San Francisco, CA, USA` from predefined locations in Xcode and you'll get content attached to default configuration.

![alt text](https://raw.githubusercontent.com/wingu-GmbH/wingu-ios-sdk-essentials/master/docs/docs_assets/sfXcode.gif "San Francisco, CA, USA")

<a name="full_documentation"></a>
## Documentation

Documentation is available [here](https://wingu-gmbh.github.io/wingu-ios-sdk-essentials/) or through your IDE.

<a name="license"></a>
## License

`wingu-ios-sdk-essentials` is available under the Apache-2.0 license. See the LICENSE file for more info.
