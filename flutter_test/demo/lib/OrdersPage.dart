import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}
class Drink {
  Drink({this.name, this.pic, this.des});
  final String name;
  final String pic;
  final String des;
}

class DrinkListTile extends Card {
  DrinkListTile(Drink drink)
      : super(
      child: ListTile(
        title: Text(drink.name,
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        subtitle: Text(drink.des),
        leading: CircleAvatar(
          backgroundImage: AssetImage(drink.pic),
          maxRadius: 28,
        )
      )
  );
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          child: Stack(
            children: <Widget>[
              _buildContent(allDrinks),
//            _buildContent(milkTea),
//            _buildContent(coffee),
//            _buildContent(fruity),
//            _buildContent(flavoredMilk),
//            _buildContent(iceCream),
            ],
          )
      ),
    );
  }
  Widget _buildContent(list) {
    return new ListView.separated(
      itemCount: list.length,
      itemBuilder: (BuildContext content, int index) {
        Drink drink = list[index];
        return DrinkListTile(drink);
      },
      separatorBuilder: (context, index){
        return Divider();
      },
    );
  }
}

List<Drink> allDrinks = [
  Drink(name: 'Earl Grey Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Assam Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Thai Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Coconut Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Match Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Vietnamese Coffee', pic: 'assets/drink1.jpg', des: 'Cold Brew Hazelnut'),
  Drink(name: 'Hibiscus', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Lemon Grass', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Ginger', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Lemonade', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Stawberry Milk', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Ube Milk', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Mung Bean Pandan Milk', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Brown Sugar Milk Tea', pic: 'assets/drink1.jpg', des: 'Ice Cream'),
  Drink(name: 'Thai Iced Tea', pic: 'assets/drink1.jpg', des: 'Ice Cream'),
  Drink(name: 'Matcha Milk Tea', pic: 'assets/drink1.jpg', des: 'Ice Cream'),
];

List<Drink> milkTea = [
  Drink(name: 'Earl Grey Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Assam Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Thai Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Coconut Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Match Milk Tea', pic: 'assets/drink1.jpg', des: ' '),
];

List<Drink> coffee = [
  Drink(name: 'Vietnamese Coffee', pic: 'assets/drink1.jpg', des: 'Cold Brew Hazelnut'),
];

List<Drink> fruity = [
  Drink(name: 'Hibiscus', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Lemon Grass', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Ginger', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Lemonade', pic: 'assets/drink1.jpg', des: ' '),
];

List<Drink> flavoredMilk = [
  Drink(name: 'Stawberry Milk', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Ube Milk', pic: 'assets/drink1.jpg', des: ' '),
  Drink(name: 'Mung Bean Pandan Milk', pic: 'assets/drink1.jpg', des: ' '),
];

List<Drink> iceCream = [
  Drink(name: 'Brown Sugar Milk Tea', pic: 'assets/drink1.jpg', des: 'Ice Cream'),
  Drink(name: 'Thai Iced Tea', pic: 'assets/drink1.jpg', des: 'Ice Cream'),
  Drink(name: 'Matcha Milk Tea', pic: 'assets/drink1.jpg', des: 'Ice Cream'),
];