import 'dart:convert';

const String carsData = '''
[
    {
        "image": "assets/images/image2.png",
        "text": "Suzuki Swift",
        "price": "\$ 130/Day"
    },
    {
        "image": "assets/images/image3.png",
        "text": "Mercerdes",
        "price": "\$ 260/Day"
    },
    {
        "image": "assets/images/image4.png",
        "text": "Toyota",
        "price": "\$ 240/Day"
    }
]
''';

List<Map<String, dynamic>> decodedCars = json.decode(carsData).cast<Map<String, dynamic>>();
