# Mobile Development Layouts

This project focuses on learning about different kinds of layouts used in mobile development. The following are the types of layouts covered in this project:

- Row
- Column
- Expanded
- Flow
- Stack
- Table
- Wrap

## Row

A row layout arranges its children in a horizontal line. It is generally used to arrange widgets that are related to each other and should be displayed next to each other.

Example:
```dart
Row(
  children: [
    Text('Hello'),
    Text('World')
  ]
) 
```

## Column

A column layout arranges its children in a vertical line. It is generally used to arrange widgets that are related to each other but should be displayed one below the other.

Example:
```dart
Column(
  children: [
    Text('Hello'),
    Text('World')
  ]
)
```

## Expanded

The expanded widget is used to fill the remaining space available after all other widgets have been laid out. It is commonly used inside a row or column widget to make a child widget take up as much space as possible.

Example:
```dart
Row(
  children: [
    Text('Hello'),
    Expanded(
      child: Text('World'),
    ),
  ],
)
```
## Flow

The flow layout arranges its children in a wrapping pattern. It is useful when you want to lay out widgets dynamically according to their size. The flow layout has properties that allow you to specify the spacing between widgets, the direction in which they should flow, and how much space the layout should take up.

Example:
```dart
Flow(
  delegate: FlowDelegate(margin: EdgeInsets.all(10.0)),
  children: [
    Text('Hello'),
    Text('World'),
    Text('Flutter'),
  ],
)
```
## Stack

The stack layout is used to place widgets on top of each other. It is commonly used for overlaying a widget on top of an image or background.

Example:
```dart
Stack(
  children: [
    Image.asset('my_image.jpg'),
    Positioned(
      top: 0,
      left: 0,
      child: Text('Hello World'),
    ),
  ],
)
```
## Table

The table layout arranges its children in rows and columns, similar to an HTML table. It is useful when you want to display data in a structured format.

Example:
```dart
Table(
  children: [
    TableRow(
      children: [
        Text('Name'),
        Text('Age'),
      ],
    ),
    TableRow(
      children: [
        Text('John Doe'),
        Text('30'),
      ],
    ),
    TableRow(
      children: [
        Text('Jane Smith'),
        Text('25'),
      ],
    ),
  ],
)
```
## Wrap

The wrap layout is similar to the flow layout, but instead of wrapping horizontally, it wraps vertically. It is useful when you want to lay out widgets dynamically according to their size, but with a vertical orientation.

Example:
```dart
Wrap(
  children: [
    Text('Hello'),
    Text('World'),
    Text('Flutter'),
  ],
)
```
