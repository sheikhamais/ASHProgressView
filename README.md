# ASHProgressView

[![CI Status](https://img.shields.io/travis/sheikhamais/ASHProgressView.svg?style=flat)](https://travis-ci.org/sheikhamais/ASHProgressView)
[![Version](https://img.shields.io/cocoapods/v/ASHProgressView.svg?style=flat)](https://cocoapods.org/pods/ASHProgressView)
[![License](https://img.shields.io/cocoapods/l/ASHProgressView.svg?style=flat)](https://cocoapods.org/pods/ASHProgressView)
[![Platform](https://img.shields.io/cocoapods/p/ASHProgressView.svg?style=flat)](https://cocoapods.org/pods/ASHProgressView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

ASHProgressView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ASHProgressView'
```

## Usage

This pod empowers your UIViews to show a progess indicator that is customisable in four different ways. To use this:

```ruby  
  myUIView.showProgressView()
  myUIView.hideProgressView()
  ```
  
  This is all you need to use this.
  Also, you can use four different type of styles to customise it's appearence.

```ruby  
  //.fourCircles(nil, .black.withAlphaComponent(0.4), [.white])
  //.threeCircles(nil, .black.withAlphaComponent(0.4), [.white])
  //.plainCircle("Loading", .red)
  //.gradientCircle("Loading", [.red, .systemIndigo])
  ```
  
  Use the following styles in the following way:

```ruby    
  myUIView.showProgressView(style: 'anyAboveStyle')
  ```
  or
  set once the standard style:
  ```ruby  
  ASHProgessViewStyle.standard = 'anyAboveStyle'
  ```

## Author

sheikhamais, sheikhamais@gmail.com

## License

ASHProgressView is available under the MIT license. See the LICENSE file for more info.
