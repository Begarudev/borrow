import 'package:flutter/material.dart';
import 'buyTabContent.dart'; // Import "लेन" tab content
import 'sellTabContent.dart'; // Import "देन" tab content

class PostTab extends StatelessWidget {
  const PostTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFF113861),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                tabs: [
                  Tab(text: 'लेन'), // First Tab
                  Tab(text: 'देन'), // Second Tab
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    BuyTabContent(), // "लेन" tab content
                    SellTabContent(), // "देन" tab content
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
