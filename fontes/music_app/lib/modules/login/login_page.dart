import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/login/login_controller.dart';
import 'package:music_app/widgets/default_circular_progress_indicator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({key}) : super(key: key);

  @override
  AuthPageState createState() {
    return AuthPageState();
  }
}

class AuthPageState extends State<LoginPage> {
  var controller = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (controller.loading) {
        return Material(
          child: Center(
            child: DefaultCircularProgressIndicatorWidget(),
          ),
        );
      } else {
        return Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.purple,
              ],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    'MUSICANDO',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[900],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    'Aprenda música brincando',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[900],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child:
                      Image.asset('assets/images/personagem.png', width: 200.0),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[100], padding: EdgeInsets.all(10)),
                    icon: Image.asset('assets/images/google.png', width: 40.0),
                    onPressed: () {
                      controller.loginWithGoogle();
                    },
                    label: Text(
                      'Entrar com Google',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}
