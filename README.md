# AppusContactPicker

[![CI Status](http://img.shields.io/travis/Hennadij/AppusContactPicker.svg?style=flat)](https://travis-ci.org/Hennadij/AppusContactPicker)
[![Version](https://img.shields.io/cocoapods/v/AppusContactPicker.svg?style=flat)](http://cocoapods.org/pods/AppusContactPicker)
[![License](https://img.shields.io/cocoapods/l/AppusContactPicker.svg?style=flat)](http://cocoapods.org/pods/AppusContactPicker)
[![Platform](https://img.shields.io/cocoapods/p/AppusContactPicker.svg?style=flat)](http://cocoapods.org/pods/AppusContactPicker)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Available for iOS 9.0 and higher

## Installation

AppusContactPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AppusContactPicker"
```

## Usage

We did built in two kinds of views for usage

1. ContactPickerTagsView

Add UIScrollView to your storyboard. Set custom class as "ContactPickerTagsView".

Add #import "ContactPickerTagsView.h" to your ViewController class. Drag outlet to your ViewControllerClass. Component is ready for use. 
```objective-c
@property (weak, nonatomic) IBOutlet ContactPickerTagsView *contactPickerTagsView;
```

You can set colors of tags using TagViewStyle class.

```objective-c
	TagViewStyle *style = [[TagViewStyle alloc] init];
   	style.borderColor = [UIColor grayColor];
	style.backgroundColor = [UIColor clearColor];
	style.textColor = [UIColor blackColor];
	style.deleteColor = [UIColor redColor];
	self.contactPickerTagsView.tagViewStyle = style;
```

To show contacts you can call 

```objective-c
	[self.contactPickerTagsView showContactViewController];
```

When you did choose any phone number just tap on it and it will be added to your contactPickerTagsView. 
You can add contacts manually using Recipient.h class instances

```objective-c
	Recipient *recipient = [[Recipient alloc] init];
	recipient.phoneNumber = @"555-44-550";
  	[self.contactPickerTagsView addRecipient:recipient];
```

_NOTE: recipients with equal numbers won't be added._

All your data stores in 
```objective-c
self.contactPickerTagsView.recipients
```

You can type number manually. ContactPickerTagsView support autocompletion. If numbers which you did enter match phone numbers in your contacts book you will see popup table with available contacts.

2. ContactPickerTableView
Add UITableView to your storyboard. Set custom class as "ContactPickerTableView".

Add #import "ContactPickerTableView.h" to your ViewController class. Drag outlet to your ViewControllerClass. Component is ready for use. 

```objective-c
	@property (weak, nonatomic) IBOutlet ContactPickerTableView *contactPickerTableView;
```

To show contacts you can call 

```objective-c
	[self.contactPickerTagsView showContactViewController];
```

When you did choose any phone number just tap on it and it will be added to your contactPickerTagsView. 

You can add contacts manually using Recipient.h class instances

 ```objective-c
	Recipient *recipient = [[Recipient alloc] init];
	recipient.phoneNumber = @"555-44-550";
	[self.contactPickerTableView addRecipient:recipient];
 ```
_NOTE: recipients with equal numbers won't be added._

All your data stores in 
```objective-c 
self.contactPickerTableView.recipients
```

## Author

Hennadij, hennadii.oleynik@appus.me

## License

AppusContactPicker is available under the Apache License. See the LICENSE file for more info.
