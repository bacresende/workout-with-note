import 'package:aqua_workout_pro/pages/news/screens/news_screen.dart';
import 'package:aqua_workout_pro/pages/notes/screens/note_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core.dart';

class MainView extends GetView<MainController> {
  MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageCotroller,
        physics: NeverScrollableScrollPhysics(),
        children: [NoteView(), NewsScreen(), ProfileView()],
      ),
      bottomNavigationBar: ValueBuilder<int?>(
        initialValue: 0,
        builder: (value, updateFn) => Container(
          color: Colors.grey[200],
          child: MenuBottomNavBarWidget(
            
            currentIndex: value,
            items: controller.navigationItems,
            onTap: (tab) {
              controller.pageCotroller.animateToPage(
                tab!,
                duration: controller.animationDuration,
                curve: Curves.ease,
              );
              updateFn(tab);
            },
          ),
        ),
      ),
    );
  }
}
