import 'package:bookbloom/BaseClasses/ColorClass.dart';
import 'package:bookbloom/BaseClasses/TextClass.dart';
import 'package:bookbloom/BaseClasses/TextStyleClass.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colorclass.gbrown,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colorclass.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 50, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('images/avatar1.png'), // صورة البروفايل
                    ),
                    const SizedBox(height: 15),
                    Text(
                      Textclass.WhatDo,
                      style:
                          TextStyles.Bold30.copyWith(color: Colorclass.brown),
                    ),
                    SizedBox(height: 20,),
                    // تعديل مربع البحث ليظهر في المنتصف
                    Padding(
                      padding: const EdgeInsets.only(left: 
                      15 , right: 30),
                      child: Align(
                        alignment: Alignment.center, // محاذاة المربع في المنتصف
                        child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 30, // ارتفاع أقل
                            maxHeight: 32, // ارتفاع ثابت
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: Textclass.author,
                              hintStyle: TextStyles.normal16.copyWith(
                                  color: Colorclass.brown), // استدعاء التنسيق
                              prefixIcon: const Icon(Icons.search,
                                  color: Colorclass.brown),
                              suffixIcon: const Icon(Icons.close,
                                  color: Colorclass.brown),
                              filled: true,
                              fillColor: Colorclass.grey,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5), // تعديل المحاذاة الرأسية
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            style: const TextStyle(fontSize: 14), // حجم النص
                            textAlignVertical:
                                TextAlignVertical.center, // محاذاة النص عمودياً
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    const TabBar(
                      labelColor: Colorclass.brown,
                      unselectedLabelColor: Colorclass.brown,
                      isScrollable: true,
                      indicatorColor: Colorclass.brown,
                      indicatorWeight: 3.0, // سمك الخط تحت الكلمة
                      indicatorPadding:
                          EdgeInsets.only(bottom: 15), // محاذاة الخط للكلمة
                      tabs: [
                        Tab(text: 'Novel'),
                        Tab(text: 'Self-love'),
                        Tab(text: 'Science'),
                        Tab(text: 'Romance'),
                        Tab(text: 'Tragedy'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colorclass.gbrown,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30), // الحواف العلوية اليسرى
                        topRight: Radius.circular(30), // الحواف العلوية اليمنى
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // عرض كتابين في كل صف
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 2 / 3, // النسبة بين العرض والارتفاع
                      ),
                      itemCount: 6, // عدد الكتب
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(
                                  'images/book${index + 1}.png'), // صورة الكتاب
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
          ],
        ),
        bottomNavigationBar: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Colorclass.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colorclass.brown,
            unselectedItemColor: Colorclass.dustyPink,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 40),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.auto_stories, size: 40),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark, size: 40),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
