import 'package:flutter/material.dart';
import 'package:week7/advanced_ui_topics/layouts/column_layout.dart';
import 'layouts/expanded_layout.dart';
import 'layouts/flow_layout.dart';
import 'layouts/row_layout.dart';
import 'layouts/stack_layout.dart';
import 'layouts/table_layout.dart';
import 'layouts/wrap_layout.dart';
import 'layouts_screen.dart';

class AdvancedUIScreen extends StatefulWidget {
  @override
  _AdvancedUIScreenState createState() => _AdvancedUIScreenState();
}

class _AdvancedUIScreenState extends State<AdvancedUIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custome Widget Example'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Advanced UI Topics:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Text(
                '1. Layouts',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Advanced UI Topics',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text('Layouts'),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LayoutScreen()),
                  );
                });
                Navigator.pop(context);
                // Navigate to Layouts screen
              },
            ),
            ListTile(
              title: const Text('Row Layout'),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RowLayoutScreen()),
                  );
                });
                Navigator.pop(context);
                // Navigate to Layouts screen
              },
            ),
            ListTile(
              title: const Text('Column Layout'),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ColumnLayoutScreen()),
                  );
                });
                Navigator.pop(context);
                // Navigate to Layouts screen
              },
            ),
            ListTile(
              title: const Text('Stack Layout'),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StackLayoutScreen()),
                  );
                });
                Navigator.pop(context);
                // Navigate to Layouts screen
              },
            ),
            ListTile(
              title: const Text('Expanded Layout'),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExpandedLayoutScreen()),
                  );
                });
                Navigator.pop(context);
                // Navigate to Layouts screen
              },
            ),
            ListTile(
              title: const Text('Wrap Layout'),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WrapLayoutScreen()),
                  );
                });
                Navigator.pop(context);
                // Navigate to Layouts screen
              },
            ),
            ListTile(
              title: const Text('Flow Layout'),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FlowLayoutScreen()),
                  );
                });
                Navigator.pop(context);
                // Navigate to Layouts screen
              },
            ),
            ListTile(
              title: const Text('Table Layout'),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TableLayoutScreen()),
                  );
                });
                Navigator.pop(context);
                // Navigate to Layouts screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
