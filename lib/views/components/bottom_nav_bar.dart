import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/views/bloc/home_event.dart';

import '../../core/color_const.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

builtBottomBar() {
  return BlocBuilder<HomeBloc, HomeState>(
    builder: (context, state) {
      return Container(
          decoration: BoxDecoration(
          boxShadow: [
          BoxShadow(
          color: ColorsConst.c8D909B.withOpacity(0.3),
      spreadRadius: 1,
      blurRadius: 10,
      offset: const Offset(0, -3),
      ),
      ],
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      child: ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
        child: BottomNavigationBar(
          currentIndex: state.currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorsConst.cffffff,
          selectedItemColor: ColorsConst.c0A1E56,
          unselectedItemColor: ColorsConst.iconColor,
          unselectedLabelStyle: TextStyle(
            color: ColorsConst.iconColor,
            fontSize: 12,
          ),
          selectedLabelStyle: TextStyle(
            color: ColorsConst.c0A1E56,
            fontSize: 12,
          ),
          elevation: 10,
          onTap: (index) {
            context.read<HomeBloc>().add(ChangeTabEvent(index));
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home.png",
                height: 24,
                width: 24,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/video.png",
                height: 24,
                width: 24,
              ),
              label: "Darslar",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/premium.png",
                height: 24,
                width: 24,
              ),
              label: "Premium",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/save.png",
                height: 24,
                width: 24,
              ),
              label: "Saqlanganlar",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/profile.png",
                height: 24,
                width: 24,
              ),
              label: "Profile",
            ),
          ],
        ),
      ));
    },
  );
}
