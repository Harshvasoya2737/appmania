import 'package:flutter/material.dart';
import 'Bills_pages.dart';
import 'Foods_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => app(),
      "Foods_page": (context) => FoodDetail(),
      "Bills_pages": (context) => Billpage(),
    },
  ));
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  Icon(Icons.location_on, size: 25),
                  Text(
                    "Habiganj City",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 170),
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF4F4F4)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "Bills_pages");
                      },
                      child: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, right: 100),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Find The",
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                    TextSpan(
                        text: " Best",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "\nFood",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "  Around You",
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                  ])),
            ),
            Container(
              height: 60,
              width: 600,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: Icon(
                        Icons.search,
                        size: 29,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Search your favourit food",
                      style: TextStyle(
                          color: Color(0xffADAEAF),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Icon(Icons.sync_alt_outlined),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27, top: 20),
                  child: Row(
                    children: [
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Find  ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700)),
                            TextSpan(
                                text: "5km",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Icon(Icons.arrow_forward_ios_sharp,
                            size: 16, color: Colors.red),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xff5CC24A),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text(
                              "Salads",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "Foods_page", arguments: foodlist3[0]);
                        },

                        child: Container(
                          height: 50,
                          width: 120,
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                              color: Color(0xffF4F4F4),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                                "Hot sale",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "Foods_page", arguments: foodlist4[0]);
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                              color: Color(0xffF4F4F4),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                                "Popularity",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: foodlist1.map((e) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "Foods_page",
                                arguments: e);
                          },
                          child: Foodies(
                            img: e["img"],
                            name: e["name"],
                            min: e["min"],
                            price: e["price"],
                            rating: e["rating"],
                          ),
                        );
                      }).toList(),
                    ),
                    Row(
                      children: foodlist2.map((e) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "Foods_pages",
                                arguments: e);
                          },
                          child: Foodies(
                            img: e["img"],
                            name: e["name"],
                            min: e["min"],
                            price: e["price"],
                            rating: e["rating"],
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Foodies extends StatelessWidget {
  String? img;
  double? price;
  String? name;
  double? rating;
  String? min;

  Foodies({super.key, this.img, this.price,this.name, this.rating, this.min});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 270,
          width: 180,
          margin: EdgeInsets.only(left: 17, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xffF4F4F4)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 10),
                child: Icon(Icons.favorite_border),
              ),
              Image.network(
                img ?? "",
                height: 130,
                width: 150,
              ),
              Text(
                name ?? "",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      min ?? "",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffADAEAF)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 37),
                    child: Icon(
                      Icons.star_border,
                      color: Colors.orangeAccent,
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      "$rating",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffADAEAF)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      "\$$price",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 47,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff5CC24A),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

List<Map> foodlist1 = [
  {
    "img":
    "https://i.pinimg.com/originals/5e/74/7a/5e747a359c5347e7854903bb8486ce90.png",
    "name": "Avocada salad",
    "min": "20min",
    "price": 12.00,
    "rating": 4.5,
    "quantity":1
  },
  {
    "img":
    "https://i.pinimg.com/originals/5e/74/7a/5e747a359c5347e7854903bb8486ce90.png",
    "name": "Fruits salad ",
    "min": "20min",
    "price": 11.00,
    "rating": 4.5,
    "quantity":1
  },
];

List<Map> foodlist2 = [
  {
    "img":
    "https://i.pinimg.com/originals/5e/74/7a/5e747a359c5347e7854903bb8486ce90.png",
    "name": "Tomato salad",
    "min": "20min",
    "price": 13.00,
    "rating": 4.5,
    "quantity":1
  },
  {
    "img":
    "https://i.pinimg.com/originals/5e/74/7a/5e747a359c5347e7854903bb8486ce90.png",
    "name": "Onion salad",
    "min": "20min",
    "price": 14.00,
    "rating": 4.5,
    "quantity":1
  },
];
List<Map> foodlist3 = [
{
"img":
"https://i.pinimg.com/originals/5e/74/7a/5e747a359c5347e7854903bb8486ce90.png",
"name": "Tomato salad",
"min": "20min",
"price": 13.00,
"rating": 4.5,
"quantity":1
},
];
List<Map> foodlist4 = [
  {
    "img":
    "https://i.pinimg.com/originals/5e/74/7a/5e747a359c5347e7854903bb8486ce90.png",
    "name": "Fruits salad ",
    "min": "20min",
    "price": 11.00,
    "rating": 4.5,
    "quantity":1
  },
];

List<Map> Billlist = [];