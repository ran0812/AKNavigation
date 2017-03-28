# AKNavigation
+ iOS navigation framework written by swift

![](demo.gif)

# install
### cocoaPods
You can install AKNavigation via CocoaPods by adding it to your Podfile:

```
use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

pod 'AKNavigation'

```

# How to Use
```swift
// init
let root = AKBaseViewController()
let nav = AKNavigationController(rootViewController: root)

// set navTitle
root.navTitle = "Hello"

// set navTitle color
root.navTitleColor = .green

// set navBar Color
root.navBarBackgroundColor = .orange

// set navBar backgroundImage
root.navBarBackgroundImage = UIImage(named: "xxx")

// set single button
root.rightImage = UIImage(named: "ak_back")
  // or
root.rightTitle = "right title"

// set button color
root.rightButtonColor = .red

// set a group of buttons 
root.leftItems = [
	AKNavigationItem(UIImage(named: "ak_back"), action:{[unowned self] in
		self.log("l1 clicked")
	}),
	AKNavigationItem("l2", action: {[unowned self] in
		self.log("l2 clicked")
	})
]

// change statusBar
root.statusBarStyle = .light // .dark

// hide navBar
root.hideNavBar = true
```