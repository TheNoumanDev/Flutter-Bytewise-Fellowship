import 'package:flutter/material.dart';

class TableLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table Layout'),
      ),
      body: Table(
        columnWidths: const {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(3),
          2: FlexColumnWidth(3),
          3: FlexColumnWidth(3),
        },
        border: TableBorder.all(),
        children: [
          TableRow(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            children: const [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Name'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Age'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Occupation'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Salary'),
                ),
              ),
            ],
          ),
          const TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('John Doe'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('35'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Software Engineer'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('\$100,000'),
                ),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            children: const [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Jane Smith'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('28'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Graphic Designer'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('\$70,000'),
                ),
              ),
            ],
          ),
          const TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tom Johnson'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('42'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Marketing Manager'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('\$120,000'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
