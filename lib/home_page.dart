import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app/widgets/custom_icon_button.dart';
import 'package:travel_app/widgets/location_cards.dart';
import 'package:travel_app/widgets/nearby_places.dart';
import 'package:travel_app/widgets/recommendation.dart';
import 'package:travel_app/widgets/tourist_places.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: false,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.transparent,
        ),
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good Evening',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Text(
              'Anish Chaulagain',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        actions: const [
          CustomIconButton(
            icon: Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14.0),
        children: const [
          //location card
          LocationCard(),
          SizedBox(
            height: 15,
          ),
          //categories
          TouristPlaces(),
          SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommendation',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              TextButton(
                  onPressed: null,
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
          //recommendations
          SizedBox(
            height: 10,
          ),
          RecommendationSection(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nearby From You',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              TextButton(
                  onPressed: null,
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          NearbyPlaces(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.bookmarks_outline), label: 'Bookmark'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.ticket_outline), label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline), label: 'Profile'),
          ]),
    );
  }
}
