import 'package:flutter/material.dart';

class LandscapeHomeScreen extends StatelessWidget {
  const LandscapeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: SizedBox(
            child: AspectRatio(
              aspectRatio: 9 / 9,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/flower.jpg'),
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
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
                  const SizedBox(height: 10.0),
                  GridView.count(
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                    crossAxisCount: 3,
                    primary: false,
                    shrinkWrap: true,
                    children: <Widget>[
                      ...List.generate(
                        10,
                        (index) => Image.asset(
                          'assets/images/flower.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
