import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: List.generate(1000, (index) => "Item $index")));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 10;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: count,
              itemBuilder:(context,index){
              return new ListTile(// 记得要使用return将widget返回，否则不显示任何类容
                onTap: (){
                  setState(() {
                    count++;
                  });
                },
                  title: new Text("$index",


                  ),

                );
              },

          ),


//          ListView(
//        children: <Widget>[
//          Column(
//            children: <Widget>[
//              Image(
//                width: 300.0,
//                height: 504,
//                fit: BoxFit.contain,
//                color: Colors.yellowAccent,
//                colorBlendMode: BlendMode.colorBurn,
//                image: NetworkImage(
//                    "http://pic1.win4000.com/pic/0/5f/c8fe1346516.jpg"),
//              ),
//              Container(
//                child: Text("Hi,Flutter!"),
//                alignment: Alignment.topLeft,
//                width: 500,
//                height: 100.0,
//                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
//                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
//                decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                        colors: [Colors.red, Colors.green, Colors.blueAccent]),
//                    border: Border.all(
//                        color: Colors.yellowAccent,
//                        width: 2.0,
//                        style: BorderStyle.solid)),
//              ),
//            ],
//          ),
//          new Image.network(
//              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547631297622&di=4b7212aaa454706b1e59d497f1e7eccb&imgtype=0&src=http%3A%2F%2Fimg1d.xgo-img.com.cn%2Fpics%2F1549%2F1548964.jpg"),
//          new Image.network(
//              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547631297622&di=8627ac5f4f226f1f9bb73766d80f19a8&imgtype=0&src=http%3A%2F%2Fimg.xgo-img.com.cn%2Fpics%2F1549%2F1548905.jpg"),
//          new Image.network(
//              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547631297621&di=cf301c4470c5d4456cd302f80883e3ff&imgtype=0&src=http%3A%2F%2Fimg1d.xgo-img.com.cn%2Fpics%2F1549%2F1548904.jpg'),
//          new Image.network(
//              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547631297621&di=a29f2518a2713b655f199499a25388ff&imgtype=0&src=http%3A%2F%2Fimg1d.xgo-img.com.cn%2Fpics%2F152%2F151019.jpg'),
//          new Image.network(
//              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547631297615&di=e4dd988f99004e578b55956b467cd022&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fd%2F38%2F94105c4042.jpg'),
//        ],
//      )
    ),
    );
  }
}
