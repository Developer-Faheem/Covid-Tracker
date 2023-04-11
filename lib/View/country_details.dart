import 'package:flutter/material.dart';
import 'world_states.dart';

class CountryDetails extends StatefulWidget {
  String image, name;
  int totalDeaths,
      totalCases,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  CountryDetails(
      {required this.name,
      required this.image,
      required this.totalDeaths,
      required this.totalCases,
      required this.totalRecovered,
      required this.active,
      required this.critical,
      required this.todayRecovered,
      required this.test});

  @override
  State<CountryDetails> createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image(height: 80, width: 80, image: NetworkImage(widget.image)),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 65.0),
                  child: Card(
                    child: Column(
                      children: [
                        ReusableRow(
                            title: 'totalDeaths',
                            value: widget.totalDeaths.toString()),
                        ReusableRow(
                            title: 'totalCases',
                            value: widget.totalCases.toString()),
                        ReusableRow(
                            title: 'totalRecovered',
                            value: widget.totalRecovered.toString()),
                        ReusableRow(
                            title: 'active', value: widget.active.toString()),
                        ReusableRow(
                            title: 'critical',
                            value: widget.critical.toString()),
                        ReusableRow(
                            title: 'todayRecovered',
                            value: widget.todayRecovered.toString()),
                        ReusableRow(
                            title: 'test', value: widget.test.toString())
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(widget.image),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
