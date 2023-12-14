// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intui/checkout_screen.dart';
import 'package:intui/const.dart';

class BikeDetails extends StatefulWidget {
  const BikeDetails({super.key});

  @override
  State<BikeDetails> createState() => _BikeDetailsState();
}

class _BikeDetailsState extends State<BikeDetails> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(onTap: Get.back, child: Icon(Icons.arrow_back)),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 50,
                    width: 290,
                    child: Center(
                        child: Text(
                      'Bike Details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Indian',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        Text(
                          'Scout Bobber',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 58,
                          width: 140,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 54, top: 5),
                              child: Text(
                                'Category',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1, right: 70),
                              child: Text(
                                'Cruiser',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 58,
                          width: 140,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, right: 20),
                              child: Text(
                                'Displacement',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 39),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, right: 30),
                                child: Text(
                                  '1133cc',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 58,
                          width: 140,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 40, top: 7),
                              child: Text(
                                'Max. Speed',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 62),
                              child: Text(
                                '124km/h',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Color(0xffBABABA).withOpacity(.3),
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset('assets/images/bike3.png'),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 58,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(children: [
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CheckoutScreen())),
                              },
                              child: Text(
                                'Rent',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            Text(
                              '1499/Per day',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250, top: 25),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(fontSize: 17),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Add  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Items',
                            style: TextStyle(color: Colors.black))
                      ]),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: bikeDress.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Card(
                        child: ListTile(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          leading: Image.asset(bikeImg[index]),
                          title: Text(bikeDress[index]),
                          subtitle: Text('800/per day'),
                          trailing: Container(
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(5),
                              color: index == 1 ? Colors.black : Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: Text(
                                bikeAdd[index],
                                style: TextStyle(
                                    color: (index % 2 == 0 || index % 3 == 0)
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
