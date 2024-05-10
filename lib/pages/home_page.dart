import 'package:flutter/material.dart';

import 'package:responsividade_flutter/breakpoints.dart';
import 'package:responsividade_flutter/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsividade_flutter/widgets/app_bar/web_app_bar.dart';
import 'package:responsividade_flutter/widgets/class_section/class_widget.dart';
import 'package:responsividade_flutter/widgets/star_section/star_widget.dart';
import 'package:responsividade_flutter/widgets/top_section/mobile_top_section.dart';
import 'package:responsividade_flutter/widgets/top_section/web_top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double spacing = constraints.maxWidth > breakpointMobile ? 150 : 40;

      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth > breakpointMobile
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: WebAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              constraints.maxWidth > breakpointMobile
                  ? const WebTopSection()
                  : const MobileTopSection(),

              const SizedBox(height: 25,),


              Wrap(
                runSpacing: spacing,
                spacing: spacing,
                alignment: WrapAlignment.center,
                children: const [
                  StarWidget(),
                  StarWidget(),
                  StarWidget(),
                ],
              ),

              const SizedBox(height: 25,),

              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: List.generate(
                  8,
                  (index) => const ClassWidget(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
