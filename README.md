![alt text](https://github.com/iGenius-Srl/IGColorPicker/blob/master/Resources/Logo.png "IGColorPicker")

<p align="center">
<img src="https://img.shields.io/badge/language-swift%205-orange.svg" alt="Language: Swift 5">
<img src="https://img.shields.io/badge/license-MIT-000000.svg" alt="License: MIT">
<img src="https://img.shields.io/badge/platform-iOS-blue.svg" alt="Platform: iOS">
</p>

IGColorPicker is a fantastic color picker 🎨 written in Swift. 

![alt text](https://github.com/iGenius-Srl/IGColorPicker/blob/master/Resources/wall-examples.png "Examples")

## Table of Contents
* [**Documentation**](#documentation)
  * [Colors](#colors)
  * [Style](#style)
  * [Other features](#other-features)
* [**Installation**](#installation)
  * [Example](#example)
* [**Getting Started**](#getting-started)
  * [ColorPickerView](#colorpickerview)
  * [Delegate](#delegate)
  * [Layout](#layout)
* [**Project Details**](#project-details)
  * [Requirements](#requirements)
  * [Contributing](#contributing)
  * [Author](#author)
  * [License](#license)

## Documentation
### Colors
The color picker comes with our set of colors:

![alt text](https://github.com/iGenius-Srl/IGColorPicker/blob/master/Resources/Palette.png "Color Palette")

But if you don't like them, you are free to use your own colors 🖍:
```swift

colorPickerView.colors = [UIColor.red, UIColor.yellow, UIColor.green, UIColor.black]

```

### Style
* **style** ```enum```: look and feel of color picker cells
  * **circle**

    ![alt text](https://github.com/iGenius-Srl/IGColorPicker/blob/master/Resources/Circle.png "Circle style")

  * **square**

    ![alt text](https://github.com/iGenius-Srl/IGColorPicker/blob/master/Resources/Square.png "Square style")

* **selectionStyle** ```enum```: style applied when a color is selected
  * **check**

    ![alt text](https://github.com/iGenius-Srl/IGColorPicker/blob/master/Resources/Check.png "Check selection style")

  * **none**

    ![alt text](https://github.com/iGenius-Srl/IGColorPicker/blob/master/Resources/None.png "None selection style")

### Other features
* **preselectedIndex** ```Int?```: the index of the preselected color in the color picker

* **isSelectedColorTappable** ```Bool```: if true, the selected color can be deselected by a tap

* **scrollToPreselectedIndex** ```Bool```: if true, the preselectedIndex is showed in the center of the color picker


## Installation

IGColorPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your `Podfile`:

```ruby
pod 'IGColorPicker'
```
### Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Getting Started
### ColorPickerView

`ColorPickerView` is just a class that inheritance from `UIView`, so you can both use a storyboard or you can create the color picker programmatically:

#### Storyboard
* Add a `UIView` to the storyboard. Go to the **Identity inspector** and in set its class to `ColorPickerView`.
* Just drag and drop the view in the correct class  🤙🏻

#### Programmatically
Just initialize the color picker like one would initialize a `UIView`, and add it as a subview to your view hierarchy.

```swift
import IGColorPicker

class ViewController {
  var colorPickerView: ColorPickerView!

  override func viewDidLoad() {
    super.viewDidLoad()

    colorPickerView = ColorPickerView(frame: CGRect(x: 0.0, y: 0.0, width: widthSize, height: heightSize))
    view.addSubview(colorPickerView)
  }

}

```

### Delegate
`ColorPickerViewDelegate` is the delegate protocol that recognizes the tap gesture on a color. This is an option delegate, but if you need to know when the user selects a color you should implement it.

```swift

// Set the delegate 🙋🏻‍♂️
colorPickerView.delegate = self

// MARK: - ColorPickerViewDelegate
extension ViewController: ColorPickerViewDelegate {

  func colorPickerView(_ colorPickerView: ColorPickerView, didSelectItemAt indexPath: IndexPath) {
    // A color has been selected
  }

  // This is an optional method
  func colorPickerView(_ colorPickerView: ColorPickerView, didDeselectItemAt indexPath: IndexPath) {
    // A color has been deselected
  }

}

```

### Layout

Every developer can customize the color picker layout in the way to fit with their design. To do that you have to implement our layout delegate `ColorPickerViewDelegateFlowLayout`

```swift
// Set the delegate 🙋🏻‍♂️
colorPickerView.layoutDelegate = self

// MARK: - ColorPickerViewDelegateFlowLayout
extension ViewController: ColorPickerViewDelegateFlowLayout {

  // ------------------------------------------------------------------
  // All these methods are optionals, your are not to implement them 🖖🏻
  // ------------------------------------------------------------------

  func colorPickerView(_ colorPickerView: ColorPickerView, sizeForItemAt indexPath: IndexPath) -> CGSize {
    // The size for each cell
    // 👉🏻 WIDTH AND HEIGHT MUST BE EQUALS!
  }

  func colorPickerView(_ colorPickerView: ColorPickerView, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    // Space between cells
  }

  func colorPickerView(_ colorPickerView: ColorPickerView, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    // Space between rows
  }

  func colorPickerView(_ colorPickerView: ColorPickerView, insetForSectionAt section: Int) -> UIEdgeInsets {
    // Inset used aroud the view
  }

}

```

## Project Details

### Requirements
* Swift 4.1
* Xcode 9.0+
* iOS 8.3+

### Contributing
Feel free to collaborate with ideas 💭 , issues ⁉️ and/or pull requests 🔃.

Here is a list of ToDo about bug fix and new features you can work on:
* Custom check size
* Support to custom view in `ColorPickerViewSelectStyle`
* Support custom style in `ColorPickerViewStyle`
* Substitute `M13Checkbox` with another framework. Or just create a custom checkbox with animation

**P.S.** If you use IGColorPicker in your app we would love to hear about it! 😉

### License

> Copyright (c) 2018 iGenius Srl

> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:

> The above copyright notice and this permission notice shall be included in
> all copies or substantial portions of the Software.

> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> THE SOFTWARE.
