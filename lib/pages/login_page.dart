import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Logo(),
              _Form(),
              _Labels(),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Text(
                  "Términos y condiciones",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class _Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        width: 170,
        child: Column(
          children: [
            Image.asset("assets/tag-logo.png"),
            const Text(
              "Messenger",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({super.key});

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TextField(),
        TextField(),
        ElevatedButton(onPressed: () {}, child: Container())
      ]),
    );
  }
}

class _Labels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            "¿No tienes cuenta?",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.black54),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Crea una ahora!",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue[600]),
          )
        ],
      ),
    );
  }
}
