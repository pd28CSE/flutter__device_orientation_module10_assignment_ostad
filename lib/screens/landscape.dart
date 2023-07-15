import 'package:flutter/material.dart';

class LandscapeHomeScreen extends StatelessWidget {
  const LandscapeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            child: AspectRatio(
              aspectRatio: 9 / 9,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/flower.jpg'),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Partho Debnath',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: <Widget>[
                      ...List.generate(7, (index) {
                        return SizedBox(
                          width: 141,
                          height: 120,
                          child: Image.asset(
                            'assets/images/flower.jpg',
                            fit: BoxFit.cover,
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
