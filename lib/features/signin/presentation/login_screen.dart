import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_socode/core/theme/app_theme.dart';
import 'package:mobile_socode/core/theme/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = false;
  bool isHidden = true;
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

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40),

            child: Column(
              children: [
                CircleAvatar(
                  radius: 64,
                  child: Icon(
                    Icons.train,
                    size: 100.w,
                    color: AppColors.secondary,
                  ),
                  backgroundColor: AppColors.primary,
                ),
                SizedBox(height: 20),

                Text(
                  'SETRAM',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),

                Text(
                  'Espace Ingenieur',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center),
                ),

                //text input
                Container(
                  width: 350,
                  child: Text(
                    'Matricule',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(
                  height: 50,
                  width: 350,

                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Entrer votre matricule',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.badge),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  width: 350,
                  child: Text(
                    'Mot de passe',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(
                  height: 50,
                  width: 350,

                  child: TextField(
                    obscureText: isHidden,
                    decoration: InputDecoration(
                      hintText: 'Enter votre mot de passe',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        icon: Icon(
                          isHidden ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      activeColor: AppColors.primary,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool;
                        });
                      },
                    ),
                    Flexible(
                      child: Text(
                        'Se sevenir de moi',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        context.pushNamed('EnginnerDashbord');
                      },
                      child: const Text(
                        "Se connecter",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: AppColors.primary,
                      minWidth: 300,
                      splashColor: Colors.blue,
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Mot de passe oublié ?",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ),
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
        ),
      ),
    );
  }
}
