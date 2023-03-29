import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/fish_model.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => FishModel(name : 'Salmon', number:10, size:'big'),
      child: MaterialApp(
        home : FishOrder(),
      ),
    );
  }
}

class FishOrder extends StatelessWidget {
  const FishOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Fish Order'),
      ),
      body : Center(
        child: Column(
          children: [
            Text('FishName : ${Provider.of<FishModel>(context).name}',
            style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            High()
          ],
        ),
      )
    );
  }
}

class High extends StatelessWidget {
  const High({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Spicy A is located at high place',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        SpiceA()
      ],
    );
  }
}

class SpiceA extends StatelessWidget {
  const SpiceA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Fish Number : ${Provider.of<FishModel>(context).number}',
          style: TextStyle(fontSize: 16),
        ),
        Text('Fish Size : ${Provider.of<FishModel>(context).size}',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        Middle()
      ],
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Spicy B is located at Middle place',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyB()
      ],
    );
  }
}

class SpicyB extends StatelessWidget {
  const SpicyB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Fish Number : ${Provider.of<FishModel>(context).number}',
          style: TextStyle(fontSize: 16),
        ),
        Text('Fish Size : ${Provider.of<FishModel>(context).size}',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        Low()
      ],
    );
  }
}

class Low extends StatelessWidget {
  const Low({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Spicy C is located at Low place',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyC()
      ],
    );
  }
}

class SpicyC extends StatelessWidget {
  const SpicyC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Fish Number : ${Provider.of<FishModel>(context).number}',
          style: TextStyle(fontSize: 16),
        ),
        Text('Fish Size : ${Provider.of<FishModel>(context).size}',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}





