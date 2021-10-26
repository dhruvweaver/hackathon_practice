import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/authentication_service.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen(this.title, {Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.logout_rounded,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {
            context.read<AuthenticationService>().signOut();
          },
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
