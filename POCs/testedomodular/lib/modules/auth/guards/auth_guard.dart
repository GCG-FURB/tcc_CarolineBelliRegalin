import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';

class AuthGuard extends RouteGuard {
  AuthGuard(guardedRoute) : super(guardedRoute);

  @override
  Future<bool> canActivate(String path, ModularRoute router) async {
    return false; //toke, se tiver, retorna true, senao retorna falso
  }
}
