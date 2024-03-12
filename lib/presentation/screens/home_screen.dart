import 'package:flutter/material.dart';
import '../../presentation/widgets/base widgets/appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(title: "12TH MAY"),
      body: SingleChildScrollView(
        child: Column(children: []),
      ),
    );
  }
}
