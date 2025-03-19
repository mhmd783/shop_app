import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/prov/prov.dart';
import 'package:shop_app/view/cart/widget_cart.dart';
import 'package:shop_app/view/home/widget_home.dart';

class Cart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Cart> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<Control>(context, listen: false).Prodect();
    });

    super.initState();
  }

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
          return val.api.prodect == null
              ? Center(child: CircularProgressIndicator())
              : val.api.prodect['status'] != true
                  ? SizedBox()
                  : Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            margin: EdgeInsets.only(bottom: 30),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Everything in your\ndoor step",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Vexa",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                              child: GridView.builder(
                                  itemCount: val.api.prodect['data'].length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: 30,
                                          crossAxisSpacing: 30,
                                          childAspectRatio: 0.8,
                                          crossAxisCount: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  600
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
