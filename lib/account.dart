// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MailWidget extends StatefulWidget {
  const MailWidget({super.key});

  @override
  State<MailWidget> createState() => _MailWidgetState();
}

class _MailWidgetState extends State<MailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            TextField(
                decoration:
                    InputDecoration(hintText: 'Телефон или адрес эл.почты')),
            TextField(decoration: InputDecoration(hintText: 'Пароль')),
            IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => MainApp(),
                //     ));
              },
              icon: Text(
                'Войти',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
