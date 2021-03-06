import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/model/category_model.dart';
import 'package:unit_converter/screens/common/angle_category_page.dart';
import 'package:unit_converter/screens/common/area_category_page.dart';
import 'package:unit_converter/screens/common/binary_coode_category_page.dart';
import 'package:unit_converter/screens/common/data_category_page.dart';
import 'package:unit_converter/screens/common/electric_current_category.dart';
import 'package:unit_converter/screens/common/force_category_page.dart';
import 'package:unit_converter/screens/common/frequency_category_page.dart';
import 'package:unit_converter/screens/common/gas_pump_category_page.dart';
import 'package:unit_converter/screens/common/length_category_page.dart';
import 'package:unit_converter/screens/common/mass_category_page.dart';
import 'package:unit_converter/screens/common/shoe_size_category_page.dart';
import 'package:unit_converter/screens/common/speed_category_page.dart';
import 'package:unit_converter/screens/common/temperature_category_page.dart';
import 'package:unit_converter/screens/common/time_category_page.dart';
import 'package:unit_converter/screens/common/torque_category_page.dart';
import 'package:unit_converter/screens/common/volume_category_page.dart';

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
    CategoryImage(
      "images/data.png",
      "Data",
    ),
    CategoryImage(
      "images/time.png",
      "Time",
    ),
    CategoryImage(
      "images/binary-code.png",
      "Binary Conversion",
    ),
    CategoryImage(
      "images/force.png",
      "Force",
    ),
    CategoryImage(
      "images/gas-pump.png",
      "Fuel",
    ),
    CategoryImage(
      "images/size.png",
      "Shoe Size",
    ),
    CategoryImage(
      "images/torque-wrench.png",
      "Torque",
    ),
    CategoryImage(
      "images/speedometer.png",
      "Speed",
    ),
    CategoryImage(
      "images/frequency.png",
      "Frequency",
    ),
    CategoryImage(
      "images/electric-current.png",
      "Electric Current",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var devicePadding = MediaQuery.of(context).padding;
    var newDeviceHeight = MediaQuery.of(context).size.height * 1.00 -
        devicePadding.top -
        devicePadding.bottom;
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
              } else if (index == 8) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BinaryCodeCategoryPage(),
                  ),
                );
              } else if (index == 9) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ForceCategoryPage(),
                  ),
                );
              } else if (index == 10) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FuelCategoryPage(),
                  ),
                );
              } else if (index == 11) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ShowSizeCategoryPage(),
                  ),
                );
              } else if (index == 12) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TorqueCategoryPage(),
                  ),
                );
              } else if (index == 13) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SpeedCategoryPage(),
                  ),
                );
              } else if (index == 14) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FrequencyCategoryPage(),
                  ),
                );
              } else if (index == 15) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ElectricCurrentCategoryPage(),
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
                SizedBox(
                  height: newDeviceHeight * 0.02,
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
