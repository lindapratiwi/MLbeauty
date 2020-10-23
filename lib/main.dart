import 'package:flutter/material.dart';
import 'package:layout/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = "Dashboard ML Beauty";

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
  const Menu(title: "Foundation", icon: "gambar/foundation.JPG"),
  const Menu(title: "Eyeshadow", icon: "gambar/eyeshadow.JPG"),
  const Menu(title: "Lips Cosmetic", icon: "gambar/lipstik.JPG"),
  const Menu(title: "Nailpolish", icon: "gambar/nailpolish.JPG"),
  const Menu(title: "Eyeliner", icon: "gambar/eyeliner.JPG"),
  const Menu(title: "Mascara", icon: "gambar/mascara.JPG"),
  const Menu(title: "Brush", icon: "gambar/brush.JPG"),
  const Menu(title: "Eyebrows", icon: "gambar/eyebrow.JPG"),


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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductList()
            ),
          );
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
}

