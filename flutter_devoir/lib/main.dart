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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String valeur = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: TextField(
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                decoration: const InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  icon: Icon(Icons.keyboard),
                                  hintText: "Faite votre Rechercher",
                                  suffixIcon: Icon(Icons.search),
                                ),
                                onChanged: (txt){
                                  setState(() {
                                    valeur = txt;
                                  });
                                },
                              ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              elevation: 10,
                              child: Container(
                                width: 200,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/1.jpg'),
                                    fit: BoxFit.fill
                                  )
                                ),
                              ),
                            ),
                            Card(
                              elevation: 10,
                              child: Container(
                                width: 200,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/2.jpg'),
                                    fit: BoxFit.fill
                                  )
                                ),
                              ),
                            ),
                            Card(
                              elevation: 10,
                              child: Container(
                                width: 200,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/3.jpg'),
                                    fit: BoxFit.fill
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            )
            ),
          Expanded(
            flex: 5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70)
                ),
                image: DecorationImage(
                  image: AssetImage('assets/4.jpg'),
                  fit: BoxFit.fill,
                )
              ),
              child: Center(
                child: Text(
                  valeur.toString(),
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
            ),
        ],
      )
    
    );
  }
}
