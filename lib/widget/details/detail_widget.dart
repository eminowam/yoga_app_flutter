import 'package:flutter/material.dart';
import 'package:yoga_ui/color/color.dart';

class DetailsYoga extends StatelessWidget {
  const DetailsYoga({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Container(
        child: Column(
          children: [
            const Image(image: AssetImage('assets/big_yoga.png')),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 23,right: 23,left: 23,bottom: 43),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Full Body Stretch",style: TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 24
                      ),),
                      const SizedBox(height: 6,),
                     const  Text("15 min",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                      const SizedBox(height: 24,),
                      const Text("Do you love yoga, but you’re not in the mood to break"
                        "a sweat every time you sit at the mat? Maybe you "
                        "just want to meditate and stretch, to contemplate"
                        "your day and wish your cares away for a moment."
                        "This school focuses on deliveringhigh-quality "
                        "and free yoga videos to people around the globe.",
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,
                      height: 1.55),),
                      const  SizedBox(height: 24,),
                      SizedBox(
                          width: 350, // <-- Your width
                          height: 48,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  backgroundColor:
                                  AppColor.categoriesButtonColor),
                              onPressed: () {},
                              child:const Text("Start"))),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
