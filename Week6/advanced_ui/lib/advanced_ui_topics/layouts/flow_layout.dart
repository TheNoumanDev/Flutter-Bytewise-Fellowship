import 'package:flutter/material.dart';

class FlowLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flow Layout'),
      ),
      body: Flow(
        delegate: TestFlowDelegate(),
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            color: Colors.red,
          ),
          Container(
            width: 50.0,
            height: 50.0,
            color: Colors.green,
          ),
          Container(
            width: 120.0,
            height: 120.0,
            color: Colors.blue,
          ),
          Container(
            width: 80.0,
            height: 80.0,
            color: Colors.yellow,
          ),
          Container(
            width: 50.0,
            height: 50.0,
            color: Colors.orange,
          ),
          Container(
            width: 120.0,
            height: 120.0,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = 0.0;
    var y = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i)!.width + x;
      if (w < context.size.width) {
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        x = w;
      } else {
        x = 0.0;
        y += context.getChildSize(i)!.height;
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        x = context.getChildSize(i)!.width;
      }
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
