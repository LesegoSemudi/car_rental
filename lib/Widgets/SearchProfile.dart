import 'package:flutter/material.dart';

class SearchProfile extends StatelessWidget {
  const SearchProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 53,
          width: 259,
          decoration: BoxDecoration(
            color: Colors.grey[80],
            borderRadius: BorderRadius.circular(90),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        Image.asset(
          'assets/images/profile.png',
        ),
      ],
    );
  }
}
