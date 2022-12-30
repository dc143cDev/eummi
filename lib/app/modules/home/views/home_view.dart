import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        children: [
          SpeedDialChild(child: Icon(Icons.book), label: '앨범 추가하기'),
          SpeedDialChild(
              child: Icon(Icons.sticky_note_2_rounded), label: '노트 추가하기'),
          SpeedDialChild(child: Icon(Icons.photo), label: '사진 추가하기'),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.white,
      //   onPressed: () {},
      //   child: Icon(
      //     Icons.more_horiz,
      //     color: Color(0xff6667AB),
      //   ),
      //   elevation: 10,
      // ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
