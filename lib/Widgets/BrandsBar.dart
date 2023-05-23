import 'package:flutter/material.dart';
import 'package:car_rental/Data/BrandsJSON.dart';

class BrandsBar extends StatelessWidget {
  const BrandsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: Future.delayed(const Duration(
          seconds: 1)), // Replace with your actual Future that loads the data
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Text('Error loading brands');
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: decodedBrands.map((brand) {
                  String imageUrl = brand['image'];
                  String text = brand['text'];
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        width: 60,
                        height: 60,
                        child: Image.network(
                          imageUrl,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(text),
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
