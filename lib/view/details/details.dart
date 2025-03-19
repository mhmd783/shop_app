import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/prov/prov.dart';
import 'package:shop_app/view/cart/widget_cart.dart';

class Details extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Details();
  }
}

class _Details extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Consumer<Control>(builder: (context, val, child) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Stack(
                    children: [
                      Container(
                        height: 220,
                        width: 220,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.amber.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(150)),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(150)),
                        ),
                      ),
                      Container(
                          height: 210,
                          width: 210,
                          child: Image.network(
                            "${val.api.ip}/${val.onprodect['image']}",
                            // fit: BoxFit.fill,
                          )), //
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${val.onprodect['name']}",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Vexa"),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0.4),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: const Color.fromARGB(255, 250, 180, 75),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${val.onprodect['stars']}",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Vexa"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    maxLines: 1,
                    "${val.onprodect['weight']} kg",
                    style: TextStyle(
                        fontSize: 10, color: Colors.grey, fontFamily: "Vexa"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${val.onprodect['description']}",
                    style: TextStyle(
                        fontSize: 13, color: Colors.grey, fontFamily: "Vexa"),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "\$",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Vexa"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${val.onprodect['price']}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Vexa"),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0.4),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Vexa"),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.remove,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 105, 225, 109),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Buy now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Vexa"),
                      ),
                    )
                  ],
                ),
                Container(
                  // padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(bottom: 20, top: 30),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Similar products",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Vexa",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: val.api.prodect['data'].length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 30,
                            crossAxisSpacing: 30,
                            childAspectRatio: 0.8,
                            crossAxisCount:
                                MediaQuery.of(context).size.width < 600
                                    ? 2
                                    : 3),
                        itemBuilder: (context, i) {
                          return WidgetCart(
                              data: val.api.prodect['data'][i], i: i);
                        }),
                  ),
                )
              ],
            ),
          );
        }));
  }
}
