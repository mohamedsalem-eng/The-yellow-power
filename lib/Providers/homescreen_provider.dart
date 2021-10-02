import 'package:flutter/foundation.dart';

class IndexProvider extends ChangeNotifier {
  int index = 0;
  void incrementCount(_index) {
    index = _index;
    notifyListeners();
  }
}
