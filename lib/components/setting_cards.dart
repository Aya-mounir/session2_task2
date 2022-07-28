// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SettingCards extends StatefulWidget {
  final IconData next;
  String name;

  SettingCards({Key? key, required this.next, required this.name})
      : super(key: key);

  @override
  State<SettingCards> createState() => _SettingCardsState();
}

class _SettingCardsState extends State<SettingCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      width: 300,
      decoration: BoxDecoration(
          color: const Color(0xFF444444),
          borderRadius: BorderRadius.circular(60)),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8,left: 8),
                  child: Icon(
                    widget.next,
                    color: Colors.white70,
                    size: 22,
                  ),
                ),
                Text(
                  widget.name,
                  style: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white70,
              size: 22,
            ),
          )
        ],
      ),
    );
  }
}
