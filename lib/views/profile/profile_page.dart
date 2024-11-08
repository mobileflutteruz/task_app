import 'package:flutter/material.dart';
import 'package:test_app/views/profile/profile_edit_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0, // Shadowni yo'q qilish
        centerTitle: true,
        // leading: const Icon(
        //   Icons.arrow_back,
        //   color: Color(0xffFD4D00), // Orqaga qaytish tugmasining rangi
        // ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1), // Pastki chiziq balandligi
          child: Container(
            color: Colors.grey.withOpacity(0.2), // Pastki chiziq rangi
            height: 3, // Chiziq qalinligi
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage(),));
                  },
                  
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage("assets/image/person.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      'Anvar',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0A1E56),

                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '+998 99 842 79 79',
                      style: TextStyle(color: Color(0xff0A1E56), fontSize: 16,
                        fontWeight: FontWeight.w400,),

                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            FullWidth(),
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.orange.shade100,
            //     foregroundColor: Colors.orange,
            //     fixedSize: (361, 82),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //     padding:
            //     const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            //   ),
            //   child: const Text('Ma’lumotlarni tahrirlash'),
            // ),

            const SizedBox(height: 32),
            const ListTile(
              leading: Icon(Icons.download, color: Color(0xff0A1E56), size: 16,),
              title: Text('Yuklab olinganlar',style: TextStyle(color: Color(0xff0A1E56), fontSize: 20),),
              trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xff0A1E56)),
            ),
            const Divider( color: Color(0xff0A1E56),),
            const ListTile(
              leading: Icon(Icons.star, color: Color(0xff0A1E56), size: 16,),
              title: Text('Premium olish', style: TextStyle(color: Color(0xff0A1E56), fontSize: 20),),
              trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xff0A1E56)),
            ),
          ],
        ),
      ),
    );
  }
}


class FullWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 361,
          height: 48,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9999),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 361,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 90,
                  right: 88,
                  bottom: 16,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFEDD6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: double.infinity,
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Ma’lumotlarni tahrirlash',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFD4D00),
                              fontSize: 16,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w700,
                              height: 0.06,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

