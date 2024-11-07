import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'mapsScreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final box = GetStorage();

  @override
  void initState() {

    if( box.read('lang')==null)
    {
      box.write('lang', 'ar');
      box.write('contry', 'SA');
    }






    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      const GetMaterialApp(


        //locale: Get.deviceLocale,

        //onGenerateRoute: appRouter.generateRoute,
        // home: box.read("username")!=null?NavBarScreen(): FirstScreen(),
        home: MapScreen(),

        //initialRoute: '/navigationbar',
        getPages: [

        ],
      );
  }
}



