import 'package:flutter/material.dart';
import 'package:flutter_basics/third.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var starsRow = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );
    var imagesRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Image.network(
            'https://picsum.photos/200',
          ),
        ),
        Expanded(
          flex: 2,
          child: Image.network(
            'https://picsum.photos/200',
          ),
        ),
        Expanded(
          child: Image.network(
            'https://picsum.photos/200',
          ),
        ),
      ],
    );

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ThirdScreen();
          }));
        },
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [imagesRow, starsRow])),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
