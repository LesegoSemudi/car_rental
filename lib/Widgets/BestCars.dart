import 'package:flutter/material.dart';
import 'package:car_rental/Data/CarsJSON.dart';

class BestCars extends StatelessWidget {
  const BestCars({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: Future.delayed(const Duration(
          seconds: 1)), // Replace with your actual Future that loads the data
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Text('Error loading cars');
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: decodedCars.map((cars) {
                  String imageUrl = cars['image'];
                  String text = cars['text'];
                  String price = cars['price'];
                  return Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        width: 240,
                        height: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                              imageUrl,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(text),
                                Text(price),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            );
          }
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
