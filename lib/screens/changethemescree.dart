import 'package:changetheme_provider/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData myth = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("My Theme"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "my theme",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ThemeProvider>().settheme(myth);
        },
        child: Icon(Icons.brightness_medium_outlined),
      ),
    );
  }
}
