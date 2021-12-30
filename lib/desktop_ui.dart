import 'package:flutter/material.dart';

class DesktopUi extends StatelessWidget {
  const DesktopUi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('Desktop UI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: Colors.deepPurple[400],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.deepPurple[300],
                            height: 120,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple[300],
                      height: 80,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
