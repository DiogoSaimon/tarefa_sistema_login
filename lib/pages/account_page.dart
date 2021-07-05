import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Olá, usuário",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle, size: 70.0),
                  )
                ],
              ),
            ),
            ListTile(),
            ListTile(),
            ListTile(),
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Text(
            "Bem-vindo!",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
