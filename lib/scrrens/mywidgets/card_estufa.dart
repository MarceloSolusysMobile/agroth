import 'package:flutter/material.dart';

class CardEstufa extends StatelessWidget {
  final String title;
  final String subTitle;
  final double temp;
  final String img;

  const CardEstufa(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.temp,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.black.withOpacity(0.8),
      elevation: 10,
      child: Column(
        children: [
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(img),
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  color: Colors.black.withOpacity(0.8),
                  height: 70,
                  padding: const EdgeInsets.all(8),
                  child: Wrap(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                          Text(
                            subTitle,
                            style: const TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 70,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[800],
                  child: Row(
                    children: [
                      const Icon(
                        Icons.thermostat,
                        color: Colors.white,
                      ),
                      Text(
                        '$temp °C',
                        style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
