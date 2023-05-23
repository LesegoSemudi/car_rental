import 'package:car_rental/Widgets/BestCars.dart';
import 'package:car_rental/Widgets/BrandsBar.dart';
import 'package:car_rental/Widgets/SearchProfile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const SearchProfile(),
            Image.asset(
              'assets/images/image1.png',
              width: 526,
              height: 320,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Best',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' Brands',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const BrandsBar(),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Best',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' Cars',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const BestCars(),
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/images/custombar.png')
          ],
        ),
      ),
    );
  }
}
