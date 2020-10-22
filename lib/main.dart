import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = "Dashboard Olahraga";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: List.generate(menus.length, (index) {
            return Center(
                child: MenuCard(menu: menus[index])
            );
          }),
        ),
      ),
    );
  }
}

class Menu {
  const Menu({this.title, this.icon});

  final String title;
  final String icon;
}

const List<Menu> menus = const [
  const Menu(title: "Arm", icon: "gambar/dumbell.png"),
  const Menu(title: "Chest", icon: "gambar/ladderup.png"),
  const Menu(title: "Leg", icon: "gambar/treadmill.png"),
  const Menu(title: "Suplemen", icon: "gambar/suplemen.png"),
  const Menu(title: "Baju", icon: "gambar/baju.png"),
  const Menu(title: "Celana", icon: "gambar/celana.png"),
  const Menu(title: "Sepatu", icon: "gambar/sepatu.png"),
  const Menu(title: "Aksesoris", icon: "gambar/aksesoris.png"),


];

class MenuCard extends StatelessWidget {
  const MenuCard({Key key, this.menu}) : super(key: key);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          _showDialog(context, menu);
        },
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(5),),
              Expanded(
                  child:
                  Image.asset(menu.icon, height: 80.0, width: 80.0, fit: BoxFit.contain,)
              ),
              Text(menu.title, style: TextStyle(fontSize: 12.0)),
              Padding(padding: EdgeInsets.all(5),),
            ]
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, Menu menu) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Keterangan"),
            content: new Text("Ini menu " + menu.title),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }


}

