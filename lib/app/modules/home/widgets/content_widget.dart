import 'package:flutter/material.dart';
import 'package:nti_calls_web/app/modules/home/home_controller.dart';
import 'package:nti_calls_web/app/modules/home/widgets/autocomplete_textfield_widget.dart';
import 'package:nti_calls_web/app/modules/home/widgets/list_calls_widget.dart';

class ContentWidget extends StatelessWidget {
  final HomeController controller;

  const ContentWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          AutoCompleteTextFieldWidget(controller: controller),
          SizedBox(
            height: 20,
          ),
          ListCallsWidget(
            size: size,
            controller: controller,
          )
        ],
      ),
    );
  }
}
