import 'package:flutter/material.dart';

class Distance extends StatelessWidget {
  const Distance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Icon(
            Icons.my_location_outlined,
            color: Colors.black54,
          ),
          const Text(
            'Accra',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          ...List.generate(18, (index) {
            return Container(
              height: 2,
              color: index.isOdd ? Colors.transparent : Colors.black54,
            );
          }),
          const SizedBox(
            width: 3,
          ),
          const Spacer(),
          const Icon(
            Icons.location_on_outlined,
            color: Colors.black54,
          ),
          const Text(
            'Kumasi',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
