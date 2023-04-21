# Introduction to widgets

Flutter's UI framework is built around the concept of widgets, which are the building blocks used to create the user interface. This approach is inspired by React's component-based architecture. Widgets define the appearance of the view based on their settings and state. When a widget's state changes, its definition is recreated, and the framework compares it with the previous one to determine the smallest changes required to switch between states.

## Running the flutter app

The root widget of a Flutter app is specified in the runApp() function. The main() function is the entry point of the app, and it calls runApp() to run the app with a root widget. Widgets can be either StatelessWidget or StatefulWidget, depending on whether or not they manage state. The primary responsibility of a widget is to implement a build() function that defines the widget in terms of other, lower-level widgets. The framework then builds those widgets in sequence until it reaches the bottom-level widgets that represent the underlying RenderObject, which calculates and defines the widget's geometry. Here is an Example: 

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction to Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
```


## Basic widgets

Flutter provides a wide variety of basic widgets. The following are some of the most commonly used widgets:

- `Scaffold` - This widget provides a default app bar, title, and a body property that holds the widget tree for the home screen.

- `Text` - The Text widget displays text and can be configured with different fonts, sizes, and colors.

- `Row` and `Column` - These widgets are used to arrange child widgets in a horizontal or vertical list.

- `Stack` - This widget is used to arrange child widgets in a z-index manner.

- `SizeBox` - This widget is used to specify the width and height of a widget.

- `Center` - This widget is used to center its child widget within itself.

- `Container` - This widget is used to create a rectangular visual element. It is a convenience widget that combines common painting, positioning, and sizing widgets.

## Using Material Components

Flutter provides a set of Material widgets that implement the Material Design specification. Material Design is a design language that combines the classic principles of successful design along with innovation and technology. The Flutter framework is built on the same principles as Google's Android and iOS operating systems.


```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction to Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
```

## Handling gestures

The GestureDetector widget is used to listen for touch events, and its onTap property defines what happens when the widget is tapped.

```dart
import 'package:flutter/material.dart';
void main() {
  runApp(
    const MaterialApp(
      home: MyButton(),
    ),
  );
}
class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Click me!'),
        ),
      ),
    );
  }
}
```

## Responding to widget lifecycle events

When creating a StatefulWidget, we use initState() to perform one-time setup tasks, such as configuring animations or subscribing to platform services. We use dispose() to clean up any resources that were allocated during the state object's lifetime, such as cancelling timers or unsubscribing from platform services. To ensure proper disposal of the state object, you should call `super.dispose()` at the end of your `dispose()` implementation.

```dart
  @override
  initState(){
    super.initState();
    someAPICall();
  }
  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
```

## Keys

In Flutter, `Keys` are objects that are used to uniquely identify widgets or elements in the widget tree. They are used to help Flutter efficiently update the UI when changes occur in the widget tree.

When a widget is rebuilt, Flutter looks at the old and new widgets and tries to match them up by their types and key values. If a matching widget is found, Flutter will update the existing widget instead of creating a new one. This helps reduce unnecessary widget rebuilds and can improve app performance.

There are several types of keys in Flutter, including:

- `ValueKey`: Used to identify widgets by a specific value, such as a string or number.
- `ObjectKey`: Used to identify widgets by an object reference, such as a model object.
- `GlobalKey`: Used to identify widgets across different parts of the widget tree, such as between parent and child widgets or between different routes.
- `UniqueKey`: Used to identify widgets that are guaranteed to be unique within the widget tree, such as when creating new widgets on demand.
