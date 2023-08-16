import 'package:flutter/material.dart';

class MYTile extends StatelessWidget {
  const MYTile(
      {super.key,
      required this.flavour,
      required this.color,
      required this.price,
      this.icon});

  final String flavour;

  final color;
  final String price;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0)),
                    color: color[100],
                  ),
                  child: Text(
                    "\$ $price",
                    style: TextStyle(
                        color: color[500],
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
              child: Icon(
                icon,
                size: 100,
              ),
            ),
            SizedBox(height: 10),
            Text(
              flavour,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "By Pizza Garden",
              style: TextStyle(
                color: Colors.grey[600],
                // fontSize: 14,
                // fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
