import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/model/category_model.dart';
import 'package:unit_converter/screens/common/angle_category_page.dart';
import 'package:unit_converter/screens/common/area_category_page.dart';
import 'package:unit_converter/screens/common/data_category_page.dart';
import 'package:unit_converter/screens/common/length_category_page.dart';
import 'package:unit_converter/screens/common/mass_category_page.dart';
import 'package:unit_converter/screens/common/temperature_category_page.dart';
import 'package:unit_converter/screens/common/time_category_page.dart';
import 'package:unit_converter/screens/common/volume_category_page.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
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
    CategoryImage(
      "images/data.png",
      "Data",
    ),
    CategoryImage(
      "images/time.png",
      "Time",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
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
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 8.0,
              ),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                "images/angle.png",
                height: 30.0,
              ),
              title: const Text(
                "Angle",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const AngleCategoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.asset(
                "images/area.png",
                height: 30.0,
              ),
              title: const Text(
                "Area",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const AreaCategoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.asset(
                "images/mass.png",
                height: 30.0,
              ),
              title: const Text(
                "Mass",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const MassCategoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.asset(
                "images/temperature.png",
                height: 30.0,
              ),
              title: const Text(
                "Temperature",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const TemperatureCategoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.asset(
                "images/length.png",
                height: 30.0,
              ),
              title: const Text(
                "Length",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const LengthCategoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.asset(
                "images/volume.png",
                height: 30.0,
              ),
              title: const Text(
                "Volume",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const VolumeCategoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.asset(
                "images/data.png",
                height: 30.0,
              ),
              title: const Text(
                "Data",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const DataCategoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.asset(
                "images/time.png",
                height: 30.0,
              ),
              title: const Text(
                "Time",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const TimeCategoryPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: isPortrait ? 10 : 7,
          mainAxisSpacing: isPortrait ? 10 : 7,
          crossAxisCount: isPortrait ? 2 : 3,
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
              } else if (index == 5) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VolumeCategoryPage(),
                  ),
                );
              } else if (index == 6) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DataCategoryPage(),
                  ),
                );
              } else if (index == 7) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TimeCategoryPage(),
                  ),
                );
              }
            },
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
          );
        },
      ),
    );
  }
}
