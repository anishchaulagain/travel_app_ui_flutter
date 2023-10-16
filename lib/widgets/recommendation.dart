import 'package:flutter/material.dart';
import 'package:travel_app/models/recommendation_model.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 256,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        itemCount: recommendedplaces.length,
        itemBuilder: (context, index) => buildCard(index),
      ),
    );
  }
}

Widget buildCard(int index) => SizedBox(
      width: 220,
      height: 200,
      child: Card(
        elevation: 0.4,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(12),
        )),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    recommendedplaces[index].urlImage,
                    height: 150,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      recommendedplaces[index].location,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.yellow.shade700,
                    ),
                    const Text(
                      '4.4',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'French Polynesia',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
