import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn FLutter Now"),
        automaticallyImplyLeading: false, //it will remove the back going button
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions:  [
          IconButton(icon: const Icon(Icons.info), onPressed: (){
            debugPrint('App Bar Button');

          },)
        ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/one.jpg"),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              color: Colors.blueGrey,
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(5.0),
              child: const Center(
                child: Text(
                  "This is a text",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.amber : Colors.green),
              onPressed: () {
                debugPrint("This is elevated button");
              },
              child: const Text("This is elevated button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("This is outlined button");
              },
              child: const Text("This is outlined button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("This is text button");
              },
              child: const Text("This is text button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is gesture detector");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.access_alarm_outlined,
                    color: Colors.red,
                  ),
                  Text("row widget is here"),
                  Icon(
                    Icons.access_alarm_outlined,
                    color: Colors.green,
                    size: 40,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwitch = newBool;
                  },
                );
              },
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? newBool) {
                setState(
                  () {
                    isChecked = newBool;
                  },
                );
              },
            ),
            
            Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.wallpapers13.com%2Fwp-content%2Fuploads%2F2016%2F05%2FSunset-red-sky-cloud-field-with-sunflower-HD-Desktop-Wallpaper-for-mobile-1680x1050.jpg&f=1&nofb=1&ipt=2666f2159cbf3780d867b002150ef0b21a56dbd9ead504b597bfbb237ea2b3be&ipo=images'),
            
          ],
        ),
      ),
    );
  }
}
