import "package:flutter/material.dart";
import "../widgets/coding_equipments.dart";

// ignore: use_key_in_widget_constructors
class CodingEquipmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //ignore: avoid_unnecessary_containers
        Container(
          margin: const EdgeInsetsDirectional.only(
            top: 50,
            bottom: 80,
          ),
          child: const Text(
            "FETCH YOUR CODING EQUIPMENTS",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        // ignore: avoid_unnecessary_containers
        Expanded(
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CodingEquipments("QUESTIONS", 248, 124, 124),
              const SizedBox(
                height: 20,
              ),
              const CodingEquipments("BOOKS", 255, 219, 89),
              const SizedBox(
                height: 20,
              ),
              const CodingEquipments("CODING SHEETS", 153, 202, 74),
              const SizedBox(
                height: 20,
              ),
              const CodingEquipments("SUBMISSIONS", 93, 173, 173),
            ],
          ),
        ),
      ],
    );
  }
}
