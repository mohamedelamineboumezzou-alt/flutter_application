import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_socode/core/theme/app_theme.dart';
import 'package:mobile_socode/core/theme/colors.dart';
import 'package:mobile_socode/features/presentation/card_model.dart';
import 'package:mobile_socode/core/theme/app_theme.dart';
import 'package:mobile_socode/core/theme/colors.dart';
import 'package:mobile_socode/features/presentation/card_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Cardmodel> cards = [
    Cardmodel(
      title: "Importer Bulletins",
      subtitle: "Fichiers Excel",
      icon: Icon(Icons.upload_file, color: AppColors.primary),
    ),
    Cardmodel(
      title: "Gérer bulletins",
      subtitle: "Documents PDF",
      icon: Icon(Icons.description, color: AppColors.primary),
    ),
    Cardmodel(
      title: "Gérer permutations",
      subtitle: "Echanges chauffeurs",
      icon: Icon(Icons.swap_horiz, color: AppColors.primary),
    ),
    Cardmodel(
      title: "Consulter historique",
      subtitle: "Archive services",
      icon: Icon(Icons.history, color: AppColors.primary),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lgray,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),

                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bonjour,",
                          style: AppTheme.lightThemeData.textTheme.titleMedium!
                              .copyWith(
                                color: AppColors.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          "Mohamed Amine",
                          style: AppTheme.lightThemeData.textTheme.titleSmall!
                              .copyWith(color: AppColors.secondary),
                        ),
                        Text(
                          "Matricule: 123456",
                          style: AppTheme.lightThemeData.textTheme.bodyMedium!
                              .copyWith(color: AppColors.secondary),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: CircleAvatar(
                            backgroundColor: AppColors.black.withOpacity(0.2),
                            child: Badge(child: Icon(Icons.notifications)),
                          ),
                        ),

                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(color: AppColors.secondary),
                            ),
                            child: Text(
                              "MA",
                              style: AppTheme
                                  .lightThemeData
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    color: AppColors.secondary,
                                    fontWeight: FontWeight.bold,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tableau de bord",
                      style: AppTheme.lightThemeData.textTheme.titleSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        "Setram Constantine",
                        style: AppTheme.lightThemeData.textTheme.bodyMedium!
                            .copyWith(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),

                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.h,
                    crossAxisSpacing: 16.w,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.secondary,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: AppColors.primary.withOpacity(0.2),
                              ),
                              child: cards[index].icon,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              cards[index].title,
                              style: AppTheme
                                  .lightThemeData
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8.h),

                            Text(
                              cards[index].subtitle,
                              style: AppTheme
                                  .lightThemeData
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Icon(Icons.info, color: AppColors.primary),
                        title: Text(
                          "Prochain service",
                          style: AppTheme.lightThemeData.textTheme.titleSmall,
                        ),
                        subtitle: Text(
                          "Ligne Tramway T1 - 14h30",
                          style: AppTheme.lightThemeData.textTheme.labelLarge!
                              .copyWith(fontWeight: FontWeight.w200),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: AppColors.primary,
          backgroundColor: AppColors.lgray,
          items: <Widget>[
            Column(
              children: [
                Icon(Icons.home, size: 20, color: AppColors.secondary),
                Text(
                  "Aceuill",
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.description, size: 20, color: AppColors.secondary),
                Text(
                  "Bulltins",
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.compare_arrows,
                  size: 20,
                  color: AppColors.secondary,
                ),
                Text(
                  "Permutatios",
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.history, size: 20, color: AppColors.secondary),
                Text(
                  "Historique",
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
      ),
    );
  }
}
