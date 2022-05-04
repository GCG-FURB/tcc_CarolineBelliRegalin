import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({key}) : super(key: key);

  // três formas de passar parametro para as rotas
  // primeira forma: list?id=1&name=carol
  // rotas dinâmicas: list/1
  // via arguments (ai da pra passar objetos)
  // Modular.to.pushNamed('./list', arguments: '3')

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product page'),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width * 0.2,
            child: NavigationListener(builder: (context, widget) {
              return Column(
                children: [
                  ListTile(
                    title: Text('Red'),
                    selected: Modular.to.path.endsWith('/red'),
                    onTap: () {
                      Modular.to.navigate('./red');
                    },
                  ),
                  ListTile(
                    title: Text('Blue'),
                    selected: Modular.to.path.endsWith('/blue'),
                    onTap: () {
                      Modular.to.navigate('./blue');
                    },
                  ),
                  ListTile(
                    title: Text('Yellow'),
                    selected: Modular.to.path.endsWith('/yellow'),
                    onTap: () {
                      Modular.to.navigate('./yellow');
                    },
                  )
                ],
              );
            }),
          ),
          Expanded(child: RouterOutlet()),
        ],
      ),
    );
  }
}
