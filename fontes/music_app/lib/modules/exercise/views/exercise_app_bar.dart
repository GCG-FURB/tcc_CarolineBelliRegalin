import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/exercise/controllers/exercises_controller.dart';

class ExerciseAppBar extends StatelessWidget with PreferredSizeWidget {
  final Function callbackClose;
  final ExercisesController controller;

  const ExerciseAppBar({this.callbackClose, this.controller});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        padding: EdgeInsets.all(10.0),
        icon: Icon(
          Icons.close,
          color: Colors.black,
          size: 32,
        ),
        onPressed: () {
          _onClickBtnClose();
        },
      ),
      actions: [
        Image.asset('assets/images/heart.png'),
        Observer(builder: (_) {
          return Padding(
            padding: EdgeInsets.only(
              right: 15,
              top: 15,
            ),
            child: Text(
              controller.lifes.toString(),
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        })
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  void _onClickBtnClose() {
    Modular.to.navigate('/home/');

    if (this.callbackClose != null) {
      this.callbackClose();
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
