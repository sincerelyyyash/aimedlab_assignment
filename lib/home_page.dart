import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Cards')),
      body: const ResponsiveCards(),
    );
  }
}

class ResponsiveCards extends StatefulWidget {
  const ResponsiveCards({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ResponsiveCardsState createState() => _ResponsiveCardsState();
}

class _ResponsiveCardsState extends State<ResponsiveCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 8,
              shadowColor: const Color.fromARGB(255, 89, 89, 89),
              child: Container(
                color: const Color(0xffD18585),
                height: MediaQuery.of(context).size.height * (1.2 / 7),
                width: MediaQuery.of(context).size.width * (0.9),
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          color: const Color(0xffC4C4C4),
                          height:
                              MediaQuery.of(context).size.height * (0.3 / 7),
                          width: 300,
                        ),
                        Container(
                          color: const Color(0xffA8D8AD),
                          height:
                              MediaQuery.of(context).size.height * (0.3 / 7),
                          width: MediaQuery.of(context).size.width * (0.85),
                        )
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * (0.1),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * (0.35 / 7)),
                  child: Card(
                    elevation: 8,
                    shadowColor: const Color.fromARGB(255, 89, 89, 89),
                    child: Container(
                      color: const Color(0xffD18585),
                      height: MediaQuery.of(context).size.height * (1 / 7),
                      width: MediaQuery.of(context).size.width * (0.88),
                      child: Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.01),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                color: const Color(0xffA8D8AD),
                                height: MediaQuery.of(context).size.height *
                                    (0.3 / 7),
                                width: double.infinity,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * (0.88),
                  child: Center(
                    child: Container(
                      color: const Color(0xffC4C4C4),
                      height: MediaQuery.of(context).size.height * (0.6 / 7),
                      width: 280,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
