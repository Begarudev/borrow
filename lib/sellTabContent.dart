import 'package:flutter/material.dart';

class SellTabContent extends StatefulWidget {
  const SellTabContent({super.key});

  @override
  _SellTabContentState createState() => _SellTabContentState();
}

class _SellTabContentState extends State<SellTabContent> {
  String _selectedCategory = 'For Sale'; // Default category

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Content for the "देन" tab goes here
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(17.36),
          color: const Color(0xFF0A2647),
          child: SizedBox(
            // Container for Item Title
            width: 393.07,
            height: 42.44,
            child: TextFormField(
              controller: _titleController,
              style: const TextStyle(color: Colors.white), // Text color
              decoration: const InputDecoration(
                fillColor: Color.fromRGBO(10, 38, 71, 1),
                filled: true,
                border: InputBorder.none,
                hintText: 'Item Title(Keep it short)......',
                hintStyle: TextStyle(
                  fontSize: 12.06,
                  color: Color.fromARGB(138, 255, 255, 255),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(17.36),
          color: const Color(0xFF0A2647),
          child: SizedBox(
            // Container for Item Description
            width: 393.07,
            height: 121.06,
            child: TextFormField(
              controller: _descriptionController,
              style: const TextStyle(color: Colors.white), // Text color
              maxLines: 4,
              decoration: const InputDecoration(
                fillColor: Color.fromRGBO(10, 38, 71, 1),
                filled: true,
                border: InputBorder.none,
                hintText: 'Item Description........',
                hintStyle: TextStyle(
                  fontSize: 12.06,
                  color: Color.fromARGB(138, 255, 255, 255),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Category',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: _selectedCategory,
          onChanged: (value) {
            setState(() {
              _selectedCategory = value!;
            });
          },
          items: ['For Sale', 'For Rent', 'For Exchange', 'Other']
              .map<DropdownMenuItem<String>>(
                (value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 16),
        const Text(
          'Upload Image',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        // Add your image upload widget here

        const Spacer(),
        ElevatedButton(
          onPressed: () {
            // Handle the post button click
            String title = _titleController.text;
            String description = _descriptionController.text;
            String category = _selectedCategory;

            // You can now post this data to your backend or perform any desired action
          },
          child: const Text('Post'),
        ),
      ],
    );
  }
}
