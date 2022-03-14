import 'package:flutter/material.dart';

class row_item extends StatelessWidget {
  late String? _key;
  late String? value;

  row_item(this._key, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      padding: const EdgeInsets.all(3),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              child: Text(
                "$value",
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(width: 1, color: Colors.black)),
            ),
            flex: 2,
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              child: Text(
                "$_key",
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(width: 1, color: Colors.black)),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(245,237,237,150),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(width: 1, color: Colors.black)),
    );
  }
}
