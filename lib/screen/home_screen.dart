import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.info, color: Colors.white),
        ],
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Application',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.purple, width: 2)),
                  child: Row(
                    children: [
                      Radio(
                          value: _isSelected,
                          groupValue: _isSelected,
                          onChanged: (value) {
                            setState(() {
                              _isSelected = value!;
                            });
                            print(_isSelected);
                          }),
                      const Text(
                        'This is a simple app',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
