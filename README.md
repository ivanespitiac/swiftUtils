# swiftUtils

[![CI Status](https://img.shields.io/travis/ivanespitiac/swiftUtils.svg?style=flat)](https://travis-ci.org/ivanespitiac/swiftUtils)
[![Version](https://img.shields.io/cocoapods/v/swiftUtils.svg?style=flat)](https://cocoapods.org/pods/swiftUtils)
[![License](https://img.shields.io/cocoapods/l/swiftUtils.svg?style=flat)](https://cocoapods.org/pods/swiftUtils)
[![Platform](https://img.shields.io/cocoapods/p/swiftUtils.svg?style=flat)](https://cocoapods.org/pods/swiftUtils)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

swiftUtils is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'swiftUtils'
```

## Usage

### String

Clean string value: 

````
"Hello World".removeSpaces()
````

Check if blank:

````
let val = ""
if val.isBlank() {
   // TODO
}
````

String to Date:

`````
"10/05/2019".toDate(format: "dd/MM/yyyy")
`````

Check valid email:

`````
let email = "example@example.com"
if email.isValidEmail() {
    // TODO    
}
`````

Check if String is a number:

`````
let val = "1234 aaa"
if val.isNumber {
    // TODO
}
`````

Get Localized String by key:

`````
let localized = "label_home".getLozalized()
`````


### UITextField & UILabel

Set text localized:

````
textfield.setLocalizedText(key: "label_home")

label.setLocalized(key: "label_home")
````

Set Hint localized:

````
textfield.setLocalizedHint(key: "label_hint")
````

Get text without spaces:

````
val text = textfield.removeSpaces()
````


### UIView

Set visible or invisible:

````
let label = UILabel()
label.visible()
label.invisible()
````

Set User Interaction:

````
label.interactionEnable()
label.interactionDisable()
````

Set corner radius:

````
label.setCornerRadius(radius: 6.0) // all corners

label.setCornerRadius([UIRectCorner.topLeft, UIRectCorner.topRight], radius: 6.0) // set corners to change
````

Set as a circle:

````
label.setCircle()
````

Set border:

````
label.setBorder(with: 2.0, color: UIColor.brown)
````

### UIViewController

Show alert without title:

````
controller.showAlertNoTitle(message: "Hello!") // optional completion onTap
````

Show alert with title:

````
controller.showAlert(title: "Hello title", message: "Hello message") // optional completion onTap
````

Show Question alert:

````
controller.showQuestionMessage(
    title: "Hello title",
    message: "Hello message",
    onAccept: {
        // TODO accept
}) {
    // TODO Cancel
}
````

Present new controller:

````
controller.presentController(
    storyboardID: Controller.storyboardID,
    storyboardName: "Main",
    presentation: .fullScreen)
````

Present mail app: (You have to delegate in your controller MFMailComposeViewControllerDelegate if you want to use in that way)

````
controller.requestEmailBuilder(email: "example@example.com")
````


### Utils

Get the screen size: (width & height)

````
Utils.screenHeight
Utils.screenWidth
````

Check if the app is in debug mode:

````
Utils.isDebug
````


## Author

ivanespitiac, ivanespitia19@gmail.com

## License

swiftUtils is available under the MIT license. See the LICENSE file for more info.
