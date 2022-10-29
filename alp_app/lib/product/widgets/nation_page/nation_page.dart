import 'package:flutter/material.dart';

class NationPage extends StatefulWidget {
  final Widget child;
  final Widget? floatingActionButton;
  final BottomNavigationBar? bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  final bool? resizeToAvoidBottomInset;
  final Color? backgroundColor;

  NationPage({
    Key? key,
    this.appBar,
    required this.child,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.resizeToAvoidBottomInset = false,
    this.backgroundColor,
  }) : super(key: key);

  @override
  _NationPageState createState() => _NationPageState();
}

class _NationPageState extends State<NationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      appBar: widget.appBar,
      backgroundColor: widget.backgroundColor,
      body: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: widget.child,
      ),
      floatingActionButton: widget.floatingActionButton,
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
