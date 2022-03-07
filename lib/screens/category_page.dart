import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/model/category_model.dart';
import 'package:unit_converter/screens/angle_category_page.dart';
import 'package:unit_converter/screens/area_category_page.dart';
import 'package:unit_converter/screens/length_category_page.dart';
import 'package:unit_converter/screens/mass_category_page.dart';
import 'package:unit_converter/screens/temperature_category_page.dart';
import 'package:unit_converter/screens/volume_category_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<CategoryImage> _items = [
    CategoryImage(
      "images/angle.png",
      "Angle",
    ),
    CategoryImage(
      "images/area.png",
      "Area",
    ),
    CategoryImage(
      "images/mass.png",
      "Mass",
    ),
    CategoryImage(
      "images/temperature.png",
      "Temperature",
    ),
    CategoryImage(
      "images/length.png",
      "Length",
    ),
        CategoryImage(
      "images/volume.png",
      "Volume",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Unit Converter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AngleCategoryPage(),
                  ),
                );
              } else if (index == 1) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AreaCategoryPage(),
                  ),
                );
              } else if (index == 2) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MassCategoryPage(),
                  ),
                );
              } else if (index == 3) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TemperatureCategoryPage(),
                  ),
                );
              } else if (index == 4) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LengthCategoryPage(),
                  ),
                );
              }
              else if (index == 5) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VolumeCategoryPage(),
                  ),
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _items[index].imagePath,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    _items[index].categoryName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
