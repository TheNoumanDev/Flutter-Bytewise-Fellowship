import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class favouriteprovider with ChangeNotifier {
  List<int> _selected = [];

  List<int> get selected => _selected;

  void add(int index) {
    _selected.add(index);
    notifyListeners();
  }

  void remove(int index) {
    _selected.remove(index);
    notifyListeners();
  }
}
