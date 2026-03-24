import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_socode/core/theme/app_theme.dart';
import 'package:mobile_socode/core/theme/colors.dart';
import 'package:mobile_socode/core/utilites/regex.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool isHidden = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController matriculeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: AppColors.black, size: 18.w),
        ),
        title: Text(
          'Connection',
          style: AppTheme.lightThemeData.textTheme.titleMedium,
        ),
        centerTitle: true,
        backgroundColor: AppColors.secondary,
        elevation: 0,
      ),

      body: SingleChildScrollView (
        child: Column(
          children: [
            CircleAvatar(
              radius: 36.r,
              backgroundColor: AppColors.primary,
              child: Icon(Icons.train, size: 32.w, color: AppColors.secondary),
            ),
            SizedBox(height: 20.h),
        
            Text(
              'SETRAM',
              style: AppTheme.lightThemeData.textTheme.titleLarge!.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
        
            Text(
              'Espace Ingenieur',
              style: AppTheme.lightThemeData.textTheme.titleMedium!.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
        
            SizedBox(height: 40.h),
        
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      validator: (value) => matriculeValidator(value ?? ''),
                      controller: matriculeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Entrez votre matricule',
                        hintStyle: AppTheme.lightThemeData.textTheme.bodyMedium!
                            .copyWith(color: AppColors.deepGray),
                        prefixIcon: Icon(Icons.person, color: AppColors.deepGray),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    TextFormField(
                      validator: (value) => passwordValidator(value ?? ''),
                      controller: passwordController,
                      obscureText: isHidden,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isHidden = !isHidden;
                            });
                          },
                          icon: Icon(
                            isHidden ? Icons.visibility_off : Icons.visibility,
                            color: AppColors.deepGray,
                          ),
                        ),
                        hintText: 'Entrez votre mot de passe',
                        hintStyle: AppTheme.lightThemeData.textTheme.bodyMedium!
                            .copyWith(color: AppColors.deepGray),
                        prefixIcon: Icon(Icons.lock, color: AppColors.deepGray),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          side: BorderSide(color: AppColors.deepGray),
                          value: isChecked,
                          activeColor: AppColors.primary,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          'Se sevenir de moi',
                          style: AppTheme.lightThemeData.textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Connexion réussie')),
                          );
                          GoRouter.of(context).go('/HomeScreen');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Veuillez corriger les erreurs'),
                            ),
                          );
                        }
                      },
                      color: AppColors.primary,
                      minWidth: 300,
                      splashColor: Colors.blue,
                      child: const Text(
                        "Se connecter",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Mot de passe oublié ?",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Column(
              children: [
                SizedBox(height: 40),
                Text(
                  'CONSTANTINE',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '© 2024 SETRAM Constantine - Système de Gestion Technique',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
