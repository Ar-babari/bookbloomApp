import 'package:flutter/material.dart';
import 'package:bookbloom/BaseClasses/ColorClass.dart';
import 'package:bookbloom/BaseClasses/TextStyleClass.dart';

class ShelfBook extends StatefulWidget {
  const ShelfBook({super.key});

  @override
  State<ShelfBook> createState() => _ShelfBookState();
}

class _ShelfBookState extends State<ShelfBook> {
  final List<String> shelves = [
    "currently reading",
    "reading later",
    "my favourite"
  ];

  void _addNewShelf(String shelfName) {
    setState(() {
      shelves.add(shelfName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorclass.white,
      appBar: AppBar(
        backgroundColor: Colorclass.white,
        elevation: 0,
        title: Text(
          "my book shelf",
          style: TextStyles.Bold16.copyWith(color: Colorclass.brown),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colorclass.dustyPink,
              size: 40,
            ),
            onPressed: () {
              _showAddShelfDialog(context);
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: shelves.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle(shelves[index]),
              const SizedBox(height: 20),
              _buildEmptyBookPlaceholder(),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
      
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyles.Bold16.copyWith(color: Colorclass.brown),
    );
  }

  Widget _buildEmptyBookPlaceholder() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colorclass.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "No books added",
          style: TextStyles.normal16.copyWith(color: Colorclass.shelf),
        ),
      ),
    );
  }

  void _showAddShelfDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController shelfNameController = TextEditingController();
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.close, color: Colorclass.shelf),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: shelfNameController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Shelf name",
                  hintStyle: TextStyles.normal18
                      .copyWith(color: Colorclass.shelf),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colorclass.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colorclass.brown),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  if (shelfNameController.text.isNotEmpty) {
                    _addNewShelf(shelfNameController.text);
                  }
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: Colorclass.gradient,
                  ),
                  child: Center(
                    child: Text(
                      "create shelf",
                      style:
                          TextStyles.Bold16.copyWith(color: Colorclass.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
