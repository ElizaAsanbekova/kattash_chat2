import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kattash_chat2/firebase_options.dart';
import 'package:kattash_chat2/registration.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const KatChat());
}

class KatChat extends StatelessWidget {
  const KatChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}
