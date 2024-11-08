



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';
import '../darslar_page.dart';
import '../home_page.dart';
import '../premium_page.dart';
import '../profile/profile_page.dart';
import '../save_page.dart';
import 'bottom_nav_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(),
      child: Scaffold(

        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            switch (state.currentIndex) {
              case 0:
                return const HomePage();
              case 1:
                return const DarslarPage();
              case 2:
                return const PremiumPage();
              case 3:
                return const SavePage();
              case 4:
                return const ProfilePage();
              default:
                return const Center(child: Text('Unknown Screen'));
            }
          },
        ),
        bottomNavigationBar: builtBottomBar(),
        ),

    );
  }
}
