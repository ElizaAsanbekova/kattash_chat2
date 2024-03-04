// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextFormField(
            onChanged: (value) {},
            decoration: InputDecoration(
              suffixIcon:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
              labelText: 'Атыны жаз',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
