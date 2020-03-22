import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Milk Tea',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                )
            ),
            backgroundColor: Colors.white,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                _buildMenuItem('assets/drink1.jpg', 'Earl Grey Milk Tea'),
                _buildMenuItem('assets/drink2.jpg', 'Assam Milk Tea'),
                _buildMenuItem('assets/drink3.jpg', 'Thai Milk Tea'),
                _buildMenuItem('assets/drink1.jpg', 'Coconut Milk Tea'),
                _buildMenuItem('assets/drink2.jpg', 'Match Milk Tea'),
              ],
            ),
          ),
          SliverAppBar(
            title: Text('Coffee',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                )
            ),
            backgroundColor: Colors.white,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                _buildMenuItem('assets/drink1.jpg', 'Cold Brew Hazelnut Vietnamese Coffee'),
              ],
            ),
          ),
          SliverAppBar(
            title: Text('Fruity',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                )
            ),
            backgroundColor: Colors.white,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                _buildMenuItem('assets/drink1.jpg', 'Hibiscus'),
                _buildMenuItem('assets/drink2.jpg', 'Lemon Grass'),
                _buildMenuItem('assets/drink3.jpg', 'Giner'),
                _buildMenuItem('assets/drink1.jpg', 'Lemonade'),
              ],
            ),
          ),
          SliverAppBar(
            title: Text('Flavored Milk',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                )
            ),
            backgroundColor: Colors.white,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                _buildMenuItem('assets/drink1.jpg', 'Strawberry Milk'),
                _buildMenuItem('assets/drink2.jpg', 'Ube Milk'),
                _buildMenuItem('assets/drink3.jpg', 'Mung Bean Pandan Milk'),
              ],
            ),
          ),
          SliverAppBar(
            title: Text('Ice Cream',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                )
            ),
            backgroundColor: Colors.white,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                _buildMenuItem('assets/drink1.jpg', 'Brown Sugar Milk Tea'),
                _buildMenuItem('assets/drink2.jpg', 'Thai Iced Tea'),
                _buildMenuItem('assets/drink3.jpg', 'Matcha Milk Tea'),
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