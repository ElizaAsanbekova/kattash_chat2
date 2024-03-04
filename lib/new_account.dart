import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:kattash_chat2/home_view.dart';


class OpenMail extends StatefulWidget {
  const OpenMail({super.key});

  @override
  State<OpenMail> createState() => _OpenMailState();
}

class _OpenMailState extends State<OpenMail> {
  String userName = '';
  String email = '';
  String password = '';

  Future<void> kattaluu() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print('kata');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextWidget(
              TopText: 'Жаныдан Катталуу',
              TextColor: Colors.black,
              TextSize: 40,
            ),
            TextfieldWidget(
              hinText: 'Атыны жаз',
              Onchanged: () {},
            ),
            const SizedBox(height: 25),
            TextfieldWidget(
              hinText: 'Почтаны жаз',
              Onchanged: () {},
            ),
            const SizedBox(height: 25),
            TextfieldWidget(
              hinText: 'Пароль',
              Onchanged: () {},
            ),
            ElevatedButton(
              onPressed: () {
                kattaluu();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ));
              },
              child: const TextWidget(
                TopText: 'Катталуу',
                TextColor: Colors.black,
                TextSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextfieldWidget extends StatelessWidget {
  String hinText;
  Function Onchanged;
  TextfieldWidget({
    required this.hinText,
    required this.Onchanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 400,
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(Icons.lock_outline),
            hintText: hinText),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String TopText;
  final Color TextColor;

  final double TextSize;
  const TextWidget({
    required this.TopText,
    required this.TextColor,
    required this.TextSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TopText,
      style: TextStyle(color: TextColor, fontSize: TextSize),
    );
  }
}
