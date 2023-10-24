import 'package:flutter/material.dart';
import 'package:frequencia/components/user_tile.dart';
import 'package:frequencia/data/dummy_users.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';
import '../provider/users.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title:
        Text('Frequencia eCICT - 2023'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add),
          onPressed: (){
            users.put(User(
              name: 'Teste',
              cpf: 'Teste00',
              evento: 'Teste',
              avatarUrl: '',
            ));
          },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
    ),
    );
  }
}
