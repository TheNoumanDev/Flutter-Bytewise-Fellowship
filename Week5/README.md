# Flutter Splash Screen with Animations

In this flutter project, I have created a splash screen using GetX state management. To achieve the animation effect, I have used a combination of `Stack`, `PositionedAnimated` and `Opacity` widgets.

## Stack Widget
The `Stack` widget is used to place widgets on top of each other in a specific order. In our case, we are placing one widget on top of another to create the animation effect.

## AvatarGlow Widget
To add some visual effects to the app logo, we use the `AvatarGlow` widget. This widget creates a glowing effect around the `CircleAvatar` widget.

## PositionedAnimated Widget
The `PositionedAnimated` widget is used to animate the position of a child widget. It takes four properties: `top`, `left`, `right`, and `bottom`. These properties determine the position of the child widget relative to the parent widget.

## Opacity Widget
The `Opacity` widget is used to control the visibility of a child widget. It takes an `opacity` property that ranges from `0.0` to `1.0`, where `0.0` means completely transparent and `1.0` means completely opaque.

## Attributes
There are two attributes that we need to consider for our animation effect:
- **Duration**: The time duration for which the animation will run.
- **Flag**: A boolean value that controls the visibility of the child widget.

## Obx Widget
To use GetX state management, we wrap our child widget with an `Obx` widget. This allows us to access the GetX variables inside our widget.

## Conclusion
By using a combination of these widgets and properties, we can create a visually appealing splash screen for our Flutter app with smooth animations.
