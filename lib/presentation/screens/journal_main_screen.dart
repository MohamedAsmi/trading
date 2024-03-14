import 'package:flutter/material.dart';
import 'package:hero_app/presentation/screens/journal_screen.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/appbar_widget.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';

class JournalMainScreen extends StatelessWidget {
  JournalMainScreen({super.key});

  final List<String> journalList = [
    'JOURNAL 1',
    'JOURNAL 2',
    'JOURNAL 3',
    'JOURNAL 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        title: "JOURNALS",
      ),
      body: ListView.builder(
        itemCount: journalList.length,
        itemBuilder: (context, index) {
          return BaseButton(
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JournalScreen(
                    journalName: journalList[index],
                  ),
                ),
              );
            },
            label: journalList[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
