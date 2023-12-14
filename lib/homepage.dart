// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intui/bike_details.dart';
import 'package:intui/const.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Ellipse.png'),
                ),
                title: Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8C7E7E),
                  ),
                ),
                subtitle: Text(
                  'Abhi Tiwari',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 324,
                decoration: BoxDecoration(
                    color: const Color(0xffEFEEEE),
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Bike",
                      hintStyle: TextStyle(
                          color: Color(0xffD2CFCF),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      prefixIcon: Icon(Icons.search),
                      iconColor: Color(0xffD2CFCF)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 0),
                  itemCount: bikeType.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          bikeType[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                        TextSpan(text: 'Popular '),
                        TextSpan(
                          text: 'items',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Color(0xffBABABA),
                          ),
                        ),
                      ])),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BikeDetails())),
                      },
                      child: Card(
                          margin: EdgeInsets.all(4.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(8.0),
                                    ),
                                    child: Image.asset(
                                      'assets/images/meteor 1.png',
                                      fit: BoxFit.cover,
                                      width: 130,
                                      height: 118.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Meteore',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Royal Enfield'),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('699/per day'),
                                ]),
                          )),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BikeDetails()),
                        ),
                      },
                      child: Card(
                          margin: EdgeInsets.all(4.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(8.0)),
                                    child: Image.asset(
                                      'assets/images/Indian-Scout-Bobber-2 1.png',
                                      fit: BoxFit.cover,
                                      width: 130,
                                      height: 118.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Scout Bobber',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Indian'),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('1499/per day'),
                                ]),
                          )),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BikeDetails()),
                        ),
                      },
                      child: Card(
                          margin: EdgeInsets.all(4.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(4.0)),
                                    child: Image.asset(
                                      'assets/images/meteor 1.png',
                                      fit: BoxFit.cover,
                                      width: 130,
                                      height: 118.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Reben',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Honda'),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('1199/per day'),
                                ]),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(top: 0),
                    itemCount: bikeName.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: ListTile(
                            leading: Image.asset('assets/images/Frame 4.png'),
                            title: Text(bikeName[index]),
                            subtitle: Text('${bikeRating[index]}/- per day'),
                            trailing: InkWell(
                              onTap: () {
                                setState(() {
                                  isSelected = !isSelected;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      index == 1 ? Colors.black : Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 1),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      bikeAvailbe[index],
                                      style: TextStyle(
                                          color:
                                              (index % 2 == 0 || index % 3 == 0)
                                                  ? Colors.black
                                                  : Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
