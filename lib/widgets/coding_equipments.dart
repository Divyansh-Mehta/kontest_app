import "package:flutter/material.dart";

class CodingEquipments extends StatelessWidget {
  final String eqName;
  final int red, green, blue;
  // ignore: use_key_in_widget_constructors
  const CodingEquipments(
    this.eqName,
    this.red,
    this.green,
    this.blue,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: InkWell(
        onTap: () {},
        child: ListTile(
          tileColor: Color.fromRGBO(red, green, blue, 1),
          title: Text(
            eqName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
