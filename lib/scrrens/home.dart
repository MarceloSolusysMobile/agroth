import 'package:agroth/scrrens/mywidgets/card_estufa.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Estufas',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CardEstufa(
              title: 'ESTUFA DE TOMATE',
              subTitle: 'JARDIM-PR',
              temp: 45,
              img: 'images/estufa1.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CardEstufa(
              title: 'ESTUFA DE MORANGO',
              subTitle: 'iVAIPORÃ-PR',
              temp: 45,
              img: 'images/estufa2.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CardEstufa(
              title: 'ESTUFA DE TOMATE',
              subTitle: 'LIDIANÓPOLIS-PR',
              temp: 45,
              img: 'images/estufa3.jpg',
            )
          ],
        ),
      ),
    );
  }
}
