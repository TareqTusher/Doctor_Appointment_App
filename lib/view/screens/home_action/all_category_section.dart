import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class AllCategorySection extends StatefulWidget {
  const AllCategorySection({super.key});

  @override
  State<AllCategorySection> createState() => _AllCategorySectionState();
}

class _AllCategorySectionState extends State<AllCategorySection> {
    List<String> images = [
    'assets/images/dentistry.png',
    'assets/images/love.png',
    'assets/images/heart.png',
    'assets/images/general.png',
    'assets/images/neurology.png',
    'assets/images/gastroen.png',
    'assets/images/lab.png',
    'assets/images/vaccine.png',
  ];
  List<String> text = [
    "Dentistry",
    "Cardiology",
    "Pulmono",
    "General",
    "Neurology",
    "Gastroen",
    "Laboretory",
    "Vaccination",
  ];
  List<Color> colors = [
    AppColors.deepPink,
    AppColors.green,
    AppColors.orangeLight,

    AppColors.lightPurple,

    AppColors.teal,

    AppColors.purple,

    AppColors.pink,
    AppColors.paleBlue,
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                crossAxisCount: 4,
              ), itemBuilder: (context,index){
              return Column(
                children: [
                  Container(
                    height: 80,
                    width: 88,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                    
                    color: colors[index]
                    ),
                    child: Image.asset(images[index],height: 28,width:36,fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 4,),
                  Text(text[index],style: Styles.fontSmallBold(AppColors.grey600),)
                ],
              );
            });
  }
}