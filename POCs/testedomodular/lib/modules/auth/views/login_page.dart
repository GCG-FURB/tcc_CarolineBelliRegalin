import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:testedomodular/modules/auth/blocs/events/login_event.dart';
import 'package:testedomodular/modules/auth/blocs/login_bloc.dart';
import 'package:testedomodular/modules/auth/blocs/states/login_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginBloc> {
  @override
  void initState() {
    super.initState();
    bloc.stream.listen((state) async {
      if (state is LoginSuccess) {
        await Future.delayed(Duration(milliseconds: 300));
        Modular.to.navigate('/product/red');
      }

      if (state is LoginFailure) {
        const snackBar = SnackBar(content: Text('Error'));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Modular.get<LoginBloc>();

    @override
    void dispose() {
      super.dispose();
      Modular.dispose<LoginBloc>();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
          bloc: bloc,
          builder: (context, state) {
            if (state is LoginLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is LoginSuccess) {
              return Center(
                child: Text('Entrou'),
              );
            }

            return Center(
              child: ElevatedButton(
                onPressed: () {
                  bloc.add(LoginWithEmail(
                      password: "123", email: "cregalin@furb.br"));
                  Modular.to.navigate('/product/red');
                },
                child: const Text('Entrar'),
              ),
            );
          }),
    );
  }
}
