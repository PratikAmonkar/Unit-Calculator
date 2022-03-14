import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../model/category_model.dart';
import '../common/angle_category_page.dart';
import '../common/area_category_page.dart';
import '../common/data_category_page.dart';
import '../common/length_category_page.dart';
import '../common/mass_category_page.dart';
import '../common/temperature_category_page.dart';
import '../common/time_category_page.dart';
import '../common/volume_category_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  String indexNum = "";
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
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
            fontSize: 35.0,
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
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: deviceWidth / 2,
              height: deviceHeight,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                ),
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        indexNum = index.toString();
                      });
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
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: isPortrait ? 21 : 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: deviceWidth / 2,
              height: deviceHeight,
              child: indexNum.isEmpty
                  ? const Center(
                      child: Text(
                        "Choose any category",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : (() {
                      if (indexNum == "0") {
                        return const AngleCategoryPage();
                      } else if (indexNum == "1") {
                        return const AreaCategoryPage();
                      } else if (indexNum == "2") {
                        return const MassCategoryPage();
                      } else if (indexNum == "3") {
                        return const TemperatureCategoryPage();
                      } else if (indexNum == "4") {
                        return const LengthCategoryPage();
                      } else if (indexNum == "5") {
                        return const VolumeCategoryPage();
                      } else if (indexNum == "6") {
                        return const DataCategoryPage();
                      } else if (indexNum == "7") {
                        return const TimeCategoryPage();
                      }
                    }()),
            ),
          ],
        ),
      ),
    );
  }
}
