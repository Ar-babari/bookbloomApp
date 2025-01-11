import 'package:bookbloom/BaseClasses/ColorClass.dart';
import 'package:bookbloom/BaseClasses/TextClass.dart';
import 'package:bookbloom/BaseClasses/TextStyleClass.dart';
import 'package:flutter/material.dart';

class Writeingspacescreen extends StatefulWidget {
  const Writeingspacescreen({super.key});

  @override
  State<Writeingspacescreen> createState() => _WriteingspacescreenState();
}

class _WriteingspacescreenState extends State<Writeingspacescreen> {
  final List<String> books = [
    'images/book1.png',
    'images/book2.png',
  ];
  final List<String> picks = [
    'images/book1.png',
    'images/book2.png',
  ];

  void showEditStoryForm(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Center(
                  child: Text(
                    Textclass.Editstory,
                    style: TextStyles.Bold18,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 120,
                      height: 180,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colorclass.grey,
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: AssetImage('images/book1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            // Add cover action
                          },
                          icon: const Icon(
                            Icons.add_circle_outline_rounded,
                            size: 80,
                            color: Colorclass.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      Textclass.AddACover,
                      style: TextStyles.Bold16,
                    ),
                  ],
                ),
                _buildTextFieldWithValidation(Textclass.Title),
                _buildTextFieldWithValidation(Textclass.Description),
                _buildTextFieldWithValidation(Textclass.Category),
                _buildTextFieldWithValidation(Textclass.Tags),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      Textclass.Mature,
                      style: TextStyles.normal18,
                    ),
                    Switch(
                   
                      value: false,
                      onChanged: (value) {
                        // Handle mature toggle
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      Textclass.Completed,
                      style: TextStyles.normal18,
                    ),
                    Switch(
                      value: false,
                      onChanged: (value) {
                        // Handle completed toggle
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Save action
                  },
                  child: const Text(
                    Textclass.Save,
                    style: TextStyles.Bold18,
                    
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTextFieldWithValidation(String labelText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            labelText,
            style: TextStyles.normal16,
          ),
          const Text(
            ' *',
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
          const Expanded(
            child: SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 16),
               
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        elevation: 0,
          scrolledUnderElevation: 0,
          forceMaterialTransparency: true,
        title: const Text(
          Textclass.Inkspire,
          style: TextStyles.Bold18,
          textAlign: TextAlign.center,
          
        ),
        centerTitle: true
      ),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/avatar1.png'),
              radius: 40,
              
            ),
            const SizedBox(height: 25),
            const Text(
              Textclass.displayname,
              style: TextStyles.Bold18,
            ),
            const Text(
              '@Username',
              style: TextStyles.hint14,
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  Textclass.Book,
                  style: TextStyles.normal16,
                ),
                Text(
                  Textclass.Readers,
                  style: TextStyles.normal16,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Transform.translate(
              offset: const Offset(-130, 0),
              child: const Text(
                Textclass.MyBooks,
                style: TextStyles.Bold18,
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: books.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return GestureDetector(
                      onTap: () {
                        showEditStoryForm(context);
                      },
                      child: Container(
                        width: 120,
                        height: 180,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colorclass.grey,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(
                          Icons.add_circle_outline_rounded,
                          size: 120,
                          color: Colorclass.addicon,
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      width: 120,
                      height: 180,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colorclass.grey,
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(books[index - 1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            const SizedBox(height: 30),
            Transform.translate(
              offset: const Offset(-130, 0),
              child: const Text(
                Textclass.MyPicks,
                style: TextStyles.Bold18,
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: picks.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    height: 180,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colorclass.grey,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(picks[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
