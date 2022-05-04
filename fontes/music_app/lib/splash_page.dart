import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/modules/shared/auth/auth_controller.dart';
import 'package:music_app/widgets/default_circular_progress_indicator.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  ReactionDisposer disposer;

  @override
  initState() {
    super.initState();
    disposer = autorun((_) {
      final auth = Modular.get<AuthController>();

      if (auth.status == AuthStatus.login) {
        Modular.to.navigate('/home/');
      } else if (auth.status == AuthStatus.logoff) {
        Modular.to.navigate('/login/');
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    disposer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: DefaultCircularProgressIndicatorWidget(),
      ),
    );
  }
}
