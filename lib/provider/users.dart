import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:frequencia/data/dummy_users.dart';
import 'package:frequencia/models/user.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count{
    return _items.length;
  }

  User byIndex(int i){
    return _items.values.elementAt(i);
  }

  void put(User user){

    if(user == null) {
      return;
    }

    final id = Random().nextDouble().toString();
    _items.putIfAbsent('1000', () => User(id: id,name: user.name, cpf: user.cpf, evento: user.evento, avatarUrl: user.avatarUrl));


    notifyListeners();
  }
}