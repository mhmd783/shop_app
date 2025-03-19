import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/prov/prov.dart';
import 'package:shop_app/view/home/widget_home.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
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
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("cart");
                },
                icon: Icon(Icons.shopping_cart_outlined))
          ],
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
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Fruits &\nVegetables",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Vexa",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(20),
                              child: Image.asset("assets/images/panner.png")),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                              child: GridView.builder(
                                  itemCount: val.api.prodect['data'].length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: 50,
                                          crossAxisSpacing: 50,
                                          childAspectRatio: 0.8,
                                          crossAxisCount: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  600
                                              ? 2
                                              : 3),
                                  itemBuilder: (context, i) {
                                    return WidgetHome(
                                      data: val.api.prodect['data'][i],
                                    );
                                  }),
                            ),
                          )
                        ],
                      ),
                    );
        }));
  }
}
