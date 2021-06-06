import 'package:flutter/material.dart';
import 'package:flutter_autosize/flutter_autosize.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BaseOnWidth(),
      //home: BaseOnHeight(),
    );
  }
}

class BaseOnWidth extends StatefulWidget {
  BaseOnWidth({Key key, this.title}) : super(key: key);
  final String title;
  @override
  BaseOnWidthState createState() => BaseOnWidthState();
}

class BaseOnWidthState extends State<BaseOnWidth> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    AutoSize().initSetting(context, 768, 1920);
    return Scaffold(
        appBar: AppBar(
          title: Text('以宽为基准适配'),
        ),
        body: Container(
        color: Colors.green,
    width: AutoSize().width(768/2),
    height: AutoSize().height(340),
    )
    );
  }
}

class BaseOnHeight extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BaseOnHeightState();
  }

}

class BaseOnHeightState extends State<BaseOnHeight>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AutoSize().initSetting(context, 768, 1920);
    AutoSize().setAdapterMode(false);
    return Scaffold(
        appBar: AppBar(
          title: Text('以高为基准'),
        ),
        body: Container(
          color: Colors.green,
          width: AutoSize().width(768/2),
          height: AutoSize().height(1920),
        ));
  }

}