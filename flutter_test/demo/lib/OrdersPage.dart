import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'drink_object.dart';
import 'Cart.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  List<Drink> _drinks = List<Drink>();
  List<Drink> _cartList = List<Drink>();

  // Allows you to call the populateDrinks function
  @override
  void initState() {
    super.initState();
    _populateDrinks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Orders'),
        //backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 36.0,
                  ),
                  if (_cartList.length > 0)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(
                          _cartList.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              onTap: () {
                if (_cartList.isNotEmpty)
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cart(_cartList),
                    ),
                  );
              },
            ),
          )
        ],
      ),
      body: _buildListView(),
    );
  }

  ListView _buildListView() {
    return ListView.builder(
      itemCount: _drinks.length,
      itemBuilder: (context, index) {
        var item = _drinks[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 2.0,
          ),
          child: Card(
            elevation: 4.0,
            child: ListTile(
              leading:
                CircleAvatar(backgroundImage: AssetImage(item.pic)),
              title: Text(item.name),
              trailing: GestureDetector(
                child: (!_cartList.contains(item))
                    ? Icon(
                        Icons.add_circle,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                onTap: () {
                  setState(() {
                    if (!_cartList.contains(item))
                      _cartList.add(item);
                    else
                      _cartList.remove(item);
                  });
                },
              ),
            ),
          ),
        );
      },
    );
  }

  void _populateDrinks() {
    var list = <Drink>[
        Drink(
          name: 'Earl Grey Milk Tea',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Assam Milk Tea',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Thai Milk Tea',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Coconut Milk Tea',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Matcha Milk Tea',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Vietnamese Coffee',
          pic: 'assets/drink1.jpg',
          des: 'Cold Brew Hazelnut'
        ),
        Drink(
          name: 'Hibiscus',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Lemon Grass',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Ginger',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Lemonade',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Stawberry Milk',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Ube Milk',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Mung Bean Pandan Milk',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Brown Sugar Milk Tea',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Thai Iced Tea',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
        Drink(
          name: 'Matcha Milk Tea',
          pic: 'assets/drink1.jpg',
          des: ' '
        ),
    ];

    setState(() {
      _drinks = list;
    });
  }
}
