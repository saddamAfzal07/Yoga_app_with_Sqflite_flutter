import 'package:flutter/material.dart';

import 'are_u_ready.dart';

class YogadetailsScreen extends StatefulWidget {
  final String title;
  const YogadetailsScreen({super.key, required this.title});

  @override
  State<YogadetailsScreen> createState() => _YogadetailsScreenState();
}

class _YogadetailsScreenState extends State<YogadetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 200.0,
        height: 48.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2.0,
              blurRadius: 4.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AreUReady(),
              ),
            );
          },
          child: const Text(
            'START',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            centerTitle: true,
            expandedHeight: 235.0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.all(12),
              title: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              background: Image.network(
                'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1520&q=80',
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up_sharp,
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 13,
                    bottom: 5,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        "16 Min || 26 Workouts",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          "Yoga ${index}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Text(
                          (index % 2 == 0 ? "00:20" : "x20"),
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        leading: Container(
                          margin: const EdgeInsets.only(
                            right: 7,
                          ),
                          child: Image.network(
                              "https://media.giphy.com/media/XyakWW6WwplIPSHfuR/giphy.gif"),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        thickness: 2,
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
