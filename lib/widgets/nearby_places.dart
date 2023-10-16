import 'package:flutter/material.dart';
import 'package:travel_app/models/nearby_places_model.dart';
import 'package:travel_app/widgets/distance.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyPlaces.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 135,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          nearbyPlaces[index].image,
                          height: double.maxFinite,
                          fit: BoxFit.cover,
                          width: 130,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Sea of peace',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const Text('Portic Team'),
                            const SizedBox(
                              height: 10,
                            ),
                            //distance widget
                            const Distance(),
                            const Spacer(),
                            Container(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                  const Text('4.4'),
                                  const Spacer(),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.blue),
                                        text: '\$225',
                                        children: [
                                          TextSpan(
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54),
                                              text: '/ Person')
                                        ]),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
