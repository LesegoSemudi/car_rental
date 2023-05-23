import 'dart:convert';

const String brandsData = '''
[
    {
        "image": "assets/images/audi.png",
        "text": "Audi"
    },
    {
        "image": "assets/images/nissan.png",
        "text": "Nissan"
    },
    {
        "image": "assets/images/ferrari.png",
        "text": "Ferrari"
    },
    {
        "image": "assets/images/kia.png",
        "text": "Kia"
    },
    {
        "image": "assets/images/honda.png",
        "text": "Honda"
    },
    {
        "image": "assets/images/mercedes.png",
        "text": "Mercedes"
    },
    {
        "image": "assets/images/toyota.png",
        "text": "Toyota"
    }
]
''';

List<Map<String, dynamic>> decodedBrands = json.decode(brandsData).cast<Map<String, dynamic>>();
