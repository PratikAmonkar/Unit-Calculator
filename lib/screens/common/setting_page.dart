import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:url_launcher/url_launcher.dart';


// import '../../database/shared_pref_db.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isDarkMode = false;
  bool isZeroRemoved = false;
  // late bool value1;

  @override
  void initState() {
    super.initState();
    // await getData();
  }

  @override
  Widget build(BuildContext context)  {
    // print(await value1);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Setting",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Basic",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SwitchListTile(
                title: isDarkMode
                    ? const Text(
                        "Remove dark mode",
                      )
                    : const Text(
                        "Enable dark mode",
                      ),
                value: isDarkMode,
                onChanged: (bool value) {
                  setState(
                    () {
                      isDarkMode = value;
                    },
                  );
                },
                secondary: isDarkMode
                    ? Image.asset(
                        "images/moon.png",
                        width: 35.0,
                      )
                    : Image.asset(
                        "images/sun.png",
                        width: 35.0,
                      ),
              ),
              SwitchListTile(
                title: const Text(
                  "Removed trailing zeros?",
                ),
                subtitle: const Text(
                  "Eg: 1.300 to 1.3",
                ),
                value: isZeroRemoved,
                onChanged: (bool value) {
                  // if (value) {
                    // setRemoveZero(value);
                  // } else {
                    // setRemoveZero(value);
                  // }
                  setState(
                    () {
                      isZeroRemoved = value;
                    },
                  );
                },
                secondary: Image.asset(
                  "images/zero.png",
                  width: 35.0,
                ),
              ),
              const Divider(
                thickness: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Credits",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Flutter",
                        ),
                        TextButton(
                          onPressed: () {
                            // openBrowser("https://flutter.dev/");
                          },
                          child: const Text(
                            "Open",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Flaticon",
                        ),
                        TextButton(
                          onPressed: () {
                            // getData();
                          },
                          child: const Text(
                            "Open",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Canva",
                        ),
                        TextButton(
                          onPressed: () {
                            // setState(() {
                            //   value1 = getDemoBool() ?? false;
                            // });
                          },
                          child: const Text(
                            "Open",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void setDemoData() async {
  //   final prefs = await SharedPreferences.getInstance();

  //   await prefs.setString('action', 'Start');
  // }

  // void setRemoveZero(bool value) async {
  //   // final prefs = await SharedPreferences.getInstance();
  //   // await prefs.setBool("repeat", value);
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setBool('boolValue', value);
  // }

  getData() async {
    // print(await value1);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // //Return bool
    // bool boolValue = prefs.getBool('boolValue') ?? false;
    // // print(boolValue);
    // setState(
    //   () {
    //     isZeroRemoved = boolValue;
    //   },
    // );
    // return boolValue;
  }

  // openBrowser(String url) async {
  //   print(url);
  //   try {
  //     if (await canLaunch(url)) await launch(url);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
