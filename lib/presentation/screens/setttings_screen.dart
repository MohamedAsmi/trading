import 'package:flutter/material.dart';

import '../widgets/base widgets/appbar_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: "Settings"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Colors.white10,
              ),
              itemCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 231, 208, 141),
                    child: Icon(
                      Icons.dark_mode_rounded,
                      color: Colors.amber,
                    ),
                  ),
                  title: Text(
                    "Dark Mode",
                    style: TextStyle(fontSize: 17),
                  ),
                  // trailing: Switch(value: value, onChanged: onChanged),
                ),
              ),
            ),
            const Text("Build number")
          ],
        ),
      ),
    );
  }
}
