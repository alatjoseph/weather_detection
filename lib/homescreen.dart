import 'package:flutter/material.dart';
import 'package:weather_app/widgets/search.dart';
import 'package:geolocator/geolocator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getcurrentlocation();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.white,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              Search(),
              const SizedBox(
                height: 40,
              ),
              Container(
                  child: Column(
                children: [
                  const Image(
                      image: AssetImage('assets/sun.png'),
                      width: 160,
                      height: 100),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Location',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  datacontainer('wind', 'assets/breeze.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  datacontainer('Pressure', 'assets/pressure.jpg'),
                  const SizedBox(
                    height: 10,
                  ),
                  datacontainer('Humidity', 'assets/humidity.webp'),
                  const SizedBox(
                    height: 10,
                  ),
                  datacontainer('Cloud Cover', 'assets/cloud.png'),
                ],
              )),
              const SizedBox(
                height: 40,
              ),
            ]),
          ),
        ));
  }

  Widget datacontainer(String text, String pic) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(30, 30),
                topRight: Radius.elliptical(30, 30))),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage(pic),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ],
            )),
      ),
    );
  }

  getcurrentlocation() async{
        var pos= await Geolocator.getCurrentPosition(
           desiredAccuracy : LocationAccuracy.low,
           forceAndroidLocationManager: true
        );

        if(pos!=Null)
        {

          print('Lat=${pos.latitude} long=${pos.longitude}');
        }
        else
        {
          print('not get');
        }

 }
}
