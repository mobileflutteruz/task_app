import 'package:flutter/material.dart';
import 'package:test_app/views/notification/notification_page.dart';

import 'info_cont.dart';

class NotificationDetailPage extends StatelessWidget {
  const NotificationDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.orange),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            color: Colors.grey.withOpacity(0.2),
            margin: const EdgeInsets.only(bottom: 20),
            height: 3,
          ),
        ),
      ),
      body: CustomScrollView(

        slivers: [
          SliverAppBar(
            expandedHeight: 361.0,
            floating: false,
            pinned: true,

            flexibleSpace: FlexibleSpaceBar(

              background: Container(
                width: 361,
                height: 361,
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                decoration: ShapeDecoration(
                  color: Color(0xffDFDFDF),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image/image.png',
                      // fit: BoxFit.cover,
                    ),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

            ),
            backgroundColor: Colors.white,
            elevation: 1,
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        '25 Iyul, 17:25',
                        style: TextStyle(color: Colors.grey, fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,),
                      ),
                      const SizedBox(width: 8),
                      _buildTag('#qabul'),
                      _buildTag('#new'),
                      _buildTag('#admission'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'TDYU bakalavriyatiga yo\'llanma ega bo\'lgan akademik litsey bitiruvchilarini o\'qishga qabul qilish bo\'yicha arizalar qabul boshlandi',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Toshkent davlat yuridik universiteti bakalavriatiga 2024/2025-o‘quv yili uchun yo‘llanmaga ega bo‘lgan akademik litsey bitiruvchilarini o‘qishga qabul qilish bo‘yicha arizalar qabul qilinadi.',
                    style: TextStyle(color: Color(0xFF202325),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,),
                  ),
                  const SizedBox(height: 12),
                  InfoContainer(),
                  // GestureDetector(
                  //   onTap: () {
                  //     // Handle link tap
                  //   },
                  //   child: const Text(
                  //     'Hujjatlar http://qabul2024-litsey.tsu.uz platformasi orqali 2024-yil 25-iyundan 5-iyul (shu kuni ham qabul qilinadi).',
                  //     style: TextStyle(
                  //         color: Colors.blue,
                  //         fontSize: 14,
                  //         decoration: TextDecoration.underline),
                  //   ),
                  // ),
                  const SizedBox(height: 12),
                  const Text(
                    'Toshkent davlat yuridik universiteti bakalavriatiga 2024/2025-o‘quv yili uchun yo‘llanmaga ega bo‘lgan akademik litsey bitiruvchilarini o‘qishga qabul qilish bo‘yicha arizalar qabul qilinadi.',
                    style: TextStyle(color: Color(0xFF202325),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                    SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        _showDetailsDialog(context);
                      },
                      child:  Text("Qabul", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),),

                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 50),
                        alignment: Alignment.center,
                        backgroundColor: Color(0xffFD4D00),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
    
    
  }

  Widget _buildTag(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF72777A),
        fontSize: 14,
        fontFamily: 'Plus Jakarta Sans',
        fontWeight: FontWeight.w400,
        height: 0.07,),
    );
  }


  void _showDetailsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 24,
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Text(
                   "Beginner kursiga qabul",
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.w700,
                   )
               ),
               Icon(
                   Icons.close,

               )
             ],
           ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 313,
              height: 313,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              decoration: ShapeDecoration(
                color: Color(0xffDFDFDF),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image/image.png',
                    // fit: BoxFit.cover,
                  ),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Beginner kursiga qabul',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const Text(
              'Umumiy 36 ta dars boshlanish sanasi 24-iyul',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF808080),
                  fontSize: 16,

                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.08),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showSuccessDialog(context),
              child: const Text("Kursga o'tish", style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                height: 0.06,
              )),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFD4D00),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    Navigator.of(context).pop(); // Close previous dialog
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                      "Tabriklaymiz!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      )
                  ),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(
                    Icons.close,

                  ))
                ],
              ),
              SizedBox(
                height: 24,
              ),
              const Icon(Icons.verified, size: 80, color: Colors.orange),
              const SizedBox(height: 16),
              const Text(
                'Tabriklaymiz!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Kursga muvaffaqiyatli qo\'shildingiz.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("Bosh sahifaga qaytish", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFD4D00),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
