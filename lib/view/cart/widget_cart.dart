import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/prov/prov.dart';

class WidgetCart extends StatelessWidget {
  WidgetCart({super.key, required this.data, required this.i});
  var data;
  var i;
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return Container(
        padding: EdgeInsets.all(10),
        height: 170,
        width: 125,
        decoration: BoxDecoration(
            border: Border.all(width: 0.4),
            borderRadius: BorderRadius.circular(10)),
        child: MaterialButton(
          onPressed: () async {
            await val.OnProdect(i);
            Navigator.of(context).pushNamed("details");
          },
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                  Container(
                      height: 55,
                      width: 55,
                      child: Image.network("${val.api.ip}/${data['image']}")),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "${data['name']}",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Vexa"),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  maxLines: 1,
                  "${data['description']}",
                  style: TextStyle(
                      fontSize: 10, color: Colors.grey, fontFamily: "Vexa"),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  maxLines: 1,
                  "${data['weight']} kg",
                  style: TextStyle(
                      fontSize: 10, color: Colors.grey, fontFamily: "Vexa"),
                ),
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "\$",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Vexa"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${data['price']}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Vexa"),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 78, 230, 83),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete_outline,
                          size: 15,
                          color: Colors.white,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
