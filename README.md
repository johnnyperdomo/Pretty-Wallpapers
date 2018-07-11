# Pretty-Wallpapers
iOS Wallpaper App using Unsplash API

## Preview
![Alt Text](https://media.giphy.com/media/2wh2BAO7mztG2I4Rpk/giphy.gif)

**Built with**
- Ios 11.4
- Xcode 9.4 
- Swift 4.1

## Features
- **Get a Random Image from [Unsplash Api](https://source.unsplash.com/)**
- **Turn a URL String into an Image**
- **Share and Download Images using ```UIActivityViewController```**
- **Swipe Left or Right to Change Images with ```UISwipeGestureRecognizer```**
- **Custom Animations with [Spring by MengTo](https://github.com/MengTo/Spring)**

## Project Configuration
You'll have to configure your Xcode project in order to download images into Photo Library.

_Your Xcode project should contain an ```Info.plist``` file._

1. In Info.plist, open Information Property List. 

2. Hover your cursor over the up-down arrows, or click on any item in the list,   
to display the + and – symbols, then click the + symbol to create a new item. 

3. Scroll down to select ```Privacy - Photo Library Additions Usage Description```, then set its Value to something like: 
> Add photo to library

## License
Standard MIT [License](https://github.com/johnnyperdomo/Pretty-Wallpapers/blob/master/LICENSE)
