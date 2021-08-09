import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/grpc/greet.pbgrpc.dart';
import 'package:grpc/grpc_web.dart';
import 'package:grpc/service_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web gRPC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Web gRPC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loading = true;
  String message = 'none';

  late final ClientChannel _channel;
  late final GreetServiceClient _serviceClient;

  @override
  void initState() {
    _channel = GrpcWebClientChannel.xhr(
        Uri.parse('https://luisciber-grpc-test.herokuapp.com/'));

    _serviceClient = GreetServiceClient(_channel);

    _loadData();

    super.initState();
  }

  _loadData() async {
    try {
      final response = await _serviceClient.greet(
        GreetRequest(
          greeting: Greeting(firstName: 'Luis', lastName: 'Ciber'),
        ),
      );

      setState(() {
        loading = false;
        message = response.result;
      });
    } catch (e) {
      log(e.toString());
      setState(() {
        loading = false;
        message = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: loading ? CircularProgressIndicator() : Text(message),
      ),
    );
  }
}
