import 'package:flutter/material.dart';

class NewsFeedsScreen extends StatefulWidget {
  const NewsFeedsScreen({Key? key}) : super(key: key);

  @override
  State<NewsFeedsScreen> createState() => _NewsFeedsScreenState();
}

class _NewsFeedsScreenState extends State<NewsFeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('News Feeds Screen'),
      ),
    );
  }
}
