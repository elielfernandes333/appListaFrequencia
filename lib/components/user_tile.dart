import 'package:flutter/material.dart';
import 'package:frequencia/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
      ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.evento),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
                color: Colors.grey,
                onPressed: (){

            },
                icon: Icon(Icons.edit)),
            IconButton(
                color: Colors.red,
                onPressed: (){

            },
                icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );

  }


}