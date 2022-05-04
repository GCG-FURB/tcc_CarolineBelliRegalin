import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:testedomodular/modules/product/product_module.dart';
import 'package:testedomodular/splash_page.dart';
import 'modules/auth/auth_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => []; // sistema de injeção de dependencia
  // os objetos daui serão injetados globalmente

  // dois tipos de rota:
  // - rota de modulo
  // - rota de "criança"
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/product', module: ProductModule()),
        WildcardRoute(
          child: (_, __) => Scaffold(
            body: Center(
              child: Text('Página não existe'),
            ),
          ),
        ) // usado para quando acessa uma rota que não existe
      ]; // sistema de rotas
}
