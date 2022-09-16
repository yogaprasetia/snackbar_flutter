import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Update profile berhasil",
                style: TextStyle(color: Colors.black),
                ),
                action: SnackBarAction(
                  label: "CANCEL", 
                  onPressed: () {
                    print("TIDAK JADI HAPUS PRODUK");
                }),
                backgroundColor: Colors.amber,
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                ),
            );
          },
          child: Text("SHOW SNACKBAR")),
      ),
    );
  }
}