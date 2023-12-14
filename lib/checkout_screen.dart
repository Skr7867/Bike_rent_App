// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intui/const.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                  height: 160,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Positioned(
                  top: 5,
                  left: 20,
                  right: 20,
                  bottom: 0,
                  child: ListView.builder(
                    itemCount: bikeDate.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 60,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: ListTile(
                            title: Text(
                              bikeDate[index],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                            subtitle: Text(
                              bikeTime[index],
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                            trailing: Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 35,
              width: 312,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey.withOpacity(0.4), width: 2)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 3),
                child: Text(
                  'Apply Coupon',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 263),
              child: Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 18,
              ),
              child: Divider(
                thickness: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 90, top: 5),
                      child: Text(
                        'Day',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 87, top: 4),
                      child: Text(
                        'Rent',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 4, right: 23),
                      child: Text(
                        'Additional Items',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24, top: 4, right: 23),
                      child: Text(
                        'Coupon Discount',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, top: 4),
                      child: Text(
                        'Rs.5996',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, top: 4),
                      child: Text(
                        'Rs.6400',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 4),
                      child: Text(
                        'Rs. 396',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 18),
              child: Divider(
                thickness: 2,
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'Rs. 12000',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 330,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'Pay',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
