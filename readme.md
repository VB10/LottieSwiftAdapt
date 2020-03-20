# Lottie IOS New Version Helper

## Installiton

[cocoa-lottie-ios](https://cocoapods.org/pods/lottie-ios)

## How to use

- Go to download sample lottie json. [lottie-bird](https://lottiefiles.com/17655-bird-flying)
- You craete folder then into this json.
- You move to folder in app project also check **Create folder references** box.
  ![alt](https://link)
- If you use storyboard
  - First you can declare uiview and change class **AnimationView** and module is **Lottie**
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
