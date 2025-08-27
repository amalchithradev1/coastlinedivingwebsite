import 'package:coastlinedivingweb/screens/mobile/mobile_dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(


        builder: (context,constraints){

          // if(constraints.maxWidth>550){
            // return DesktopLayout();
          // }
          // else if(constraints.maxWidth>300){
          //
          //   return TabletLayout();}

          // else{

            return MobileLayout();
          // }

        }

    );
  }
}
