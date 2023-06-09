import 'package:agroth/scrrens/mywidgets/card_estufa.dart';
import 'package:agroth/scrrens/mywidgets/menu_drawer.dart';
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
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Image.asset(
          'images/logo.png',
          fit: BoxFit.cover,
          height: AppBar().preferredSize.height,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
            ),
          )
        ],
      ),
      drawer: const MenuDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 8, 68, 10),
              Color.fromARGB(255, 151, 224, 154),
            ],
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'MINHAS ESTUFAS',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              CardEstufa(
                title: 'TOMATES VERDES',
                subTitle: 'JARDIM-PR',
                temp: 20,
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
                height: 10,
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
      ),
    );
  }
}
