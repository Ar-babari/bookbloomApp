import 'package:bookbloom/BaseClasses/ColorClass.dart';
import 'package:bookbloom/BaseClasses/TextClass.dart';
import 'package:bookbloom/BaseClasses/TextStyleClass.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // عدد التصنيفات
      child: Scaffold(
        backgroundColor: Colorclass.white,
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colorclass.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
            boxShadow: const [
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
                icon: Icon(Icons.home, size: 30),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book, size: 30),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark, size: 30),
                label: '',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // النص الرئيسي ومربع البحث
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('images/avatar1.png'), // صورة البروفايل
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "What do you want to\nread today?",
                      style: TextStyles.Bold30.copyWith(color: Colorclass.brown),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                      child: Container(
                        constraints: const BoxConstraints(
                          minHeight: 36, // ارتفاع أقل
                          maxHeight: 36, // ارتفاع ثابت
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Book, author",
                            hintStyle: TextStyle(color: Colorclass.brown, fontSize: 14), // تنسيق النص
                            prefixIcon: Icon(Icons.search, color: Colorclass.brown),
                            suffixIcon: Icon(Icons.close, color: Colorclass.brown),
                            filled: true,
                            fillColor: Colorclass.grey,
                            contentPadding: EdgeInsets.symmetric(vertical: 10), // تعديل المحاذاة الرأسية
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: const TextStyle(fontSize: 14), // حجم النص
                          textAlignVertical: TextAlignVertical.center, // محاذاة النص عمودياً
                        ),
                      ),
                    ),
                  ],
                ),
              ),
           
              // التصنيفات
              Container(
                color: Colorclass.white,
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: TabBar(
                  labelColor: Colorclass.brown,
                  unselectedLabelColor: Colorclass.brown,
                  isScrollable: true,
                  indicatorColor: Colorclass.dustyPink,
                  indicatorWeight: 3.0, // سمك الخط تحت الكلمة
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 0), // ضبط الخط تحت الكلمة
                  tabs: [
                    Tab(text: 'Novel'),
                    Tab(text: 'Self-love'),
                    Tab(text: 'Science'),
                    Tab(text: 'Romance'),
                    Tab(text: 'Tragedy'),
                  ],
                ),
              ),
              // الشبكة السفلية
              Expanded(
                child: Container(
                  color: Colorclass.gbrown,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                              image: AssetImage('images/book${index + 1}.png'), // صورة الكتاب
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
