# SwiftColorPicker

[![CI Status](http://img.shields.io/travis/Andrea Antonioni/SwiftColorPicker.svg?style=flat)](https://travis-ci.org/Andrea Antonioni/SwiftColorPicker)
[![Version](https://img.shields.io/cocoapods/v/SwiftColorPicker.svg?style=flat)](http://cocoapods.org/pods/SwiftColorPicker)
[![License](https://img.shields.io/cocoapods/l/SwiftColorPicker.svg?style=flat)](http://cocoapods.org/pods/SwiftColorPicker)
[![Platform](https://img.shields.io/cocoapods/p/SwiftColorPicker.svg?style=flat)](http://cocoapods.org/pods/SwiftColorPicker)

SwiftColorPicker is a fantastic color picker 🎨 written in Swift. Developers can use our color picker just like we do in [crystal.io](https://crystal.io) or they can customize it with all the available features .

## Requirements
 * Swift 3.0
 * Xcode 8.0+
 * iOS 8.0+

## Installation

SwiftColorPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your ```Podfile```:

```ruby
pod 'SwiftColorPicker'
```
## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Getting Started
### ColorPickerView

### Delegate
```ColorPickerViewDelegate``` is the delegate protocol that recognizes the tap gesture on a color. This is an option delegate, but if you need to know when the user selects a color you should implement it.

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

### Layout delegate

Every developer can customize the color picker layout in the way to fit with their design. To do that you have to implement our layout delegate ```ColorPickerViewDelegateFlowLayout```

```swift
// Set the delegate 🙋🏻‍♂️
colorPickerView.layoutDelegate = self

// MARK: - ColorPickerViewDelegateFlowLayout
@objc public protocol ColorPickerViewDelegateFlowLayout {
    
    @objc optional func colorPickerView(_ colorPickerView: ColorPickerView, sizeForItemAt indexPath: IndexPath) -> CGSize
    
    @objc optional func colorPickerView(_ colorPickerView: ColorPickerView, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    
    @objc optional func colorPickerView(_ colorPickerView: ColorPickerView, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    
    @objc optional func colorPickerView(_ colorPickerView: ColorPickerView, insetForSectionAt section: Int) -> UIEdgeInsets
}

```

## Author

* Andrea Antonioni ([@andrea_anto97](https://twitter.com/andrea_anto97)), antonioni@igenius.net 

## Contributing
Feel free to collaborate with ideas 💭 , issues ⁉️ and/or pull requests 🔃.

**P.S.** If you use SwiftColorPicker in your app we would love to hear about it! 😉
## License

> Copyright (c) 2017 iGenius Srl

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
