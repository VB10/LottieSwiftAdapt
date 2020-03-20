# Lottie IOS To Adapt New Version

![lottie-gif](https://github.com/VB10/LottieSwiftAdapt/blob/master/github/bird.gif?raw=true)

## Installiton

[cocoa-lottie-ios](https://cocoapods.org/pods/lottie-ios)

## How to use

- Go to download sample lottie json. [lottie-bird](https://lottiefiles.com/17655-bird-flying)
- You craete folder then into this json.
- You move to folder in app project also check **Create folder references** box.
  ![alt](https://github.com/VB10/LottieSwiftAdapt/blob/master/github/Screen%20Shot%202020-03-21%20at%2001.23.35.png?raw=true)
- If you use storyboard

  - First you can declare uiview and change class **AnimationView** and module is **Lottie**
  - ![alt](https://github.com/VB10/LottieSwiftAdapt/blob/master/github/Screen%20Shot%202020-03-21%20at%2001.27.15.png?raw=true)

  - Now you can uiview relataions viewcontroller with storyboard.
  - Lottie must be requried init functions. Write this line in viewdidload

```swift
        let animation = Animation.named("bird", subdirectory: "TestAnimations")
        lottie.animation = animation
        lottie.contentMode = .scaleAspectFit
```

And finaly call play functions in viewdidappear

```swift
    lottie.play(fromProgress: 0,
                    toProgress: 1,
                    loopMode: LottieLoopMode.playOnce,
                    completion: { (finished) in
                        if finished {
                            print("Animation Complete")
                        } else {
                            print("Animation cancelled")
                        }
        })
```

- You want to use programmatic lottie files, look this [lottie-swift](https://github.com/airbnb/lottie-ios/blob/master/Example/lottie-swift/ViewController.swift)
