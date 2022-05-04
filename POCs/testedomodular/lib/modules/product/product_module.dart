import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:testedomodular/modules/product/list_product_page.dart';
import 'package:testedomodular/modules/product/views/product_page.dart';

class ProductModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const ProductPage(), children: [
          ChildRoute('/red', child: (_, __) => Container(color: Colors.red)),
          ChildRoute('/blue', child: (_, __) => Container(color: Colors.blue)),
          ChildRoute('/yellow',
              child: (_, __) => Container(color: Colors.yellow))
        ]),
        ChildRoute(
          '/list',
          child: (_, args) => ListProductPage(id: args.data),
          transition: TransitionType.rotate,
          duration: const Duration(seconds: 1),
        )
      ];
}
