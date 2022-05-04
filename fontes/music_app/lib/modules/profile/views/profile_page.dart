import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/profile/controller/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  final controller = Modular.get<ProfileController>();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 12),
          child: CircleAvatar(
            radius: mediaQuery.size.height * 0.08,
            backgroundImage: NetworkImage(
              controller.auth.currentUser.imageUrl,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          child: Text(
            controller.auth.currentUser.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        _buildTextLabel('Email', Colors.purple),
        _buildTextLabel(controller.auth.currentUser.email, Colors.black),
        _buildTextLabel('Estatísticas', Colors.purple),
        Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.only(left: 16.0, right: 16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[500],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(children: [
            Column(
              children: [
                Icon(
                  Icons.bolt,
                  color: Colors.yellow[800],
                  size: 40.0,
                )
              ],
            ),
            Column(
              children: [
                Text(controller.auth.currentUser.points.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  'Total de XP',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ]),
        ),
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
            ),
            icon: const Icon(
              Icons.logout,
            ),
            label: Text('Sair'),
            onPressed: () {
              controller.logoff();
            }),
      ],
    ));
  }

  _buildTextLabel(String text, Color color) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(left: 16),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
