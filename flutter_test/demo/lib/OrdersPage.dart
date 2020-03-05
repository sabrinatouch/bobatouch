import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:
      CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                _buildMenuItem('assets/drink1.jpg', 'Item 1'),
                _buildMenuItem('assets/drink2.jpg', 'Item 2'),
                _buildMenuItem('assets/drink3.jpg', 'Item 3'),
                _buildMenuItem('assets/drink1.jpg', 'Item 4'),
                _buildMenuItem('assets/drink2.jpg', 'Item 5'),
                _buildMenuItem('assets/drink3.jpg', 'Item 6'),
              ],
            ),
          ),
        ],
      )
    );
  }
}

_buildMenuItem(String imgPath, String name) {
  return Container(
    padding: const EdgeInsets.all(8),
      child: Stack(
        children: <Widget>[
          // Stroked text as border.
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 3
                ..color = Colors.black,
            ),
          ),
          // Solid text as fill.
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: ExactAssetImage(imgPath),
          fit: BoxFit.cover,
        ),
      )
  );
}