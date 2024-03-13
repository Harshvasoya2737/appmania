import 'package:flutter/material.dart';
import 'main.dart';

class FoodDetail extends StatefulWidget {
  FoodDetail({Key? key}) : super(key: key);

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    final food2 = ModalRoute.of(context)?.settings.arguments as Map?;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff4A9936),
          Color(0xff81D96A),
          Color(0xff97DF84)
        ])),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: 230),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                  color: Color(0xffFFFFFF)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 92),
                    child: Container(
                      height: 10,
                      width: 95,
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 105),
                    child: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 230 - 150,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    child: Image.network(food2?["img"] ?? ""),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1000,
                            color: Color(0xff5ED240),
                            spreadRadius: 1,
                          )
                        ],
                      shape: BoxShape.circle
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      height: 52,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff5ED240)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (itemCount > 1) {
                                      itemCount--;
                                    }
                                  });
                                },
                                child: Icon(Icons.remove,
                                    color: Colors.white, size: 20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("$itemCount",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: InkWell(
                                onTap: () {
                                  itemCount = itemCount + 1;
                                  setState(() {});
                                },
                                child: Icon(Icons.add,
                                    color: Colors.white, size: 20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 35),
                        child: Row(
                          children: [
                            Text(
                              food2?["name"] ?? "",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Fresh Avocado, shrimps salad with lettuce green mix,\ncherry tomatoes,herbs and olive oil, lemon dressing. \nhealthy food...",
                              style: TextStyle(
                                  color: Color(0xffADAEAF),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: "Read More",
                              style: TextStyle(
                                  color: Color(0xff5CC24A),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ])),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 15),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                              food2?["rating"]?.toString() ?? "",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 15),
                            child: Text(
                              "🔥",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 15),
                            child: Text(
                              "100 Kcal",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 15),
                            child: Text(
                              "⏰",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 15),
                            child: Text(
                              "5-10 Min",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 20),
                            child: Text(
                              "Ingradients",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        height: 40,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("🌿",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Color(0xff64FFDA))),
                            Text("🍅",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Color(0xff64FFDA))),
                            Text("🍒",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Color(0xff64FFDA))),
                            Text("🥑",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Color(0xff64FFDA))),
                            Text("🥬",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Color(0xff64FFDA))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xff5ED240)),
                          child: InkWell(
                              onTap: () {
                                if (food2 != 0) {
                                  Billlist.add(food2!);
                                }
                                Navigator.pushNamed(context, "Bills_pages");
                              },
                              child: Center(
                                  child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ))),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
