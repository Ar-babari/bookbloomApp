import 'package:bookbloom/BaseClasses/ColorClass.dart';
import 'package:bookbloom/BaseClasses/TextClass.dart';
import 'package:bookbloom/BaseClasses/TextStyleClass.dart';
import 'package:flutter/material.dart';

class ReadBookScreen extends StatefulWidget {
  const ReadBookScreen({super.key});

  @override
  State<ReadBookScreen> createState() => _ReadBookScreenState();
}

class _ReadBookScreenState extends State<ReadBookScreen> {
  int? _selectedOption; // لتخزين الخيار المحدد

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorclass.white,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 230, // القسم العلوي الأبيض
                  width: double.infinity,
                  color: Colorclass.white,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colorclass.gbrown,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 135), // رفع النصوص
                                  Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Never Tell",
                                          style: TextStyles.Bold20.copyWith(
                                            color: Colorclass.brown,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        Text(
                                          "Author Name",
                                          style: TextStyles.normal16.copyWith(
                                            color: Colorclass.grey,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: List.generate(
                                            5,
                                            (index) => Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 15,
                                            ),
                                          )
                                            ..add(
                                              const SizedBox(width: 8),
                                            )
                                            ..add(
                                              Text(
                                                "5.0",
                                                style: TextStyles.normal16
                                                    .copyWith(
                                                  color: Colorclass.grey,
                                                ),
                                              ),
                                            ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    "About the Author",
                                    style: TextStyles.Bold16.copyWith(
                                      color: Colorclass.brown,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "[Author's Name] writes with a quiet\n passion, crafting stories that feel like\n gentle reflections of life. Their words \ninvite readers into vivid worlds filled \n with warmth and thoughtfulness.",
                                    style: TextStyles.hint14.copyWith(
                                      color: Colorclass.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    "Overview",
                                    style: TextStyles.Bold18.copyWith(
                                      color: Colorclass.brown,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    '"Never Tell" is a quiet, introspective tale of longing\n and unspoken emotions. Through the struggles of\n distance, loss, and vulnerability, the protagonist \nseeks solace in music and fleeting moments of connection. It’s a story about what remains unsaid,\n the ache of solitude, and the hope for healing and\n understanding.',
                                    style: TextStyles.hint14.copyWith(
                                      color: Colorclass.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // زر "Start Reading"
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // أضف الإجراء هنا
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colorclass.dustyPink,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 25, // عرض الزر محدود
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Text(
                                "Start Reading",
                                style: TextStyles.Bold24.copyWith(
                                  color: Colorclass.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // الكتاب فوق الحاوية
            Positioned(
              top: 110, // تعديل مكان الكتاب
              left: MediaQuery.of(context).size.width / 2 - 85,
              child: Container(
                height: 250,
                width: 170,
                decoration: BoxDecoration(
                  color: Colorclass.dustyPink,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('images/book.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // الأيقونات في أعلى الصفحة
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_backspace,
                  color: Colorclass.dustyPink,
                  size: 40,
                ),
                onPressed: () {
                  // قم بإضافة الوظيفة هنا
                },
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colorclass.dustyPink,
                  size: 40,
                ),
                onPressed: () {
                  _showAddDialog(context); // استدعاء نافذة الإضافة
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: StatefulBuilder(
            // لجعل التغيير فوريًا
            builder: (context, setState) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // زر الإغلاق
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.highlight_off, // أيقونة Cancel
                            color: Colorclass.brown,
                            size: 30,
                            weight: 10,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            // حفظ الخيار المحدد
                            print("Selected option: $_selectedOption");
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(0, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                             Textclass.Save,
                              style: TextStyles.Bold16.copyWith(
                                color: Colorclass.brown,
                                
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
        
                    // خيارات الإضافة
                    ListTile(
                      title: Text(
                        "Add to current reading",
                        style: TextStyles.normal16.copyWith(
                          color: Colorclass.brown,
                        ),
                      ),
                      trailing: Radio<int>(
                        value: 1,
                        groupValue: _selectedOption,
                        activeColor: Colorclass.brown,
                        fillColor: MaterialStateProperty.all(
                            Colorclass.brown), // لون رمادي للدائرة
                        onChanged: (value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                      ),
                    ),
                    const Divider(
                      color: Colorclass.brown,
                          ), // لون أغمق للخط// لون أغمق للخطوط
                    
                    ListTile(
                      title: Text(
                        "Add to reading later",
                        style: TextStyles.normal16.copyWith(
                          color: Colorclass.brown,
                        ),
                      ),
                      trailing: Radio<int>(
                        value: 2,
                        groupValue: _selectedOption,
                        activeColor: Colorclass.grey,
                        fillColor: WidgetStateProperty.all(Colorclass.brown),
                        onChanged: (value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                      ),
                    ),
                    const Divider(
                      color:
                            Colorclass.brown,// لون أغمق للخطوط
                    ),
                    ListTile(
                      title: Text(
                        "", // خيار فارغ
                        style: TextStyles.normal16.copyWith(
                          color: Colorclass.brown,
                        ),
                      ),
                      trailing: Radio<int>(
                        value: 3,
                        groupValue: _selectedOption,
                        activeColor: Colorclass.brown,
                        fillColor: MaterialStateProperty.all(Colorclass.brown),
                        onChanged: (value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
