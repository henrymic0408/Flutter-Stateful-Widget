import 'package:belajarstatefull/dadu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //function untuk show bottom
  void _showButtom(){
    showModalBottomSheet(
      context: context,
       builder: (BuildContext context){
        return Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Some Info Here',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Close')),
            ],
          ),
        );
       });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefull Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Text('Statefull Widget'),
              ElevatedButton(
                onPressed: () {
                  _showButtom();
                },
                child: Text('Klik Saya'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context) => DaduPage()
                    )
                    );
              }, 
              child: Text('Dadu'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
