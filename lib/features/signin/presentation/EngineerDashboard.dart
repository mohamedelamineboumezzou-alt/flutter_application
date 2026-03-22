import 'package:flutter/material.dart';
import 'package:mobile_socode/core/theme/colors.dart';

class EngineerDashboard extends StatefulWidget {
  EngineerDashboard({super.key});

  @override
  State<EngineerDashboard> createState() => _EngineerDashboardState();
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const DashboardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),

              decoration: BoxDecoration(
              
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                
                
            ),
            child: Icon(icon,color: Colors.blue,),
            
          ),
        const  SizedBox(height: 10,),
        Text(
              title,
              
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const  SizedBox(height: 5,),
            Text(
              subtitle,
              style:  TextStyle(color: Colors.grey,
              fontWeight: FontWeight.bold,fontSize: 12 ),
            ),
            

         
        ],
      ),
      ),
      
    );
  }
}

class _EngineerDashboardState extends State<EngineerDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bounjour',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              ),
            ),
            Text(
              'Mohamed Amine',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              ),
            ),
            Text(
              'Matricule: 2024-589-CST',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: AppColors.secondary,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, size: 30),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.person, size: 30), onPressed: () {}),
        ],
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Tableau de bord",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {
                      print("Clicked");
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      backgroundColor: Colors.blue.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: Colors.blue.withOpacity(0.3), // border شفاف
                        ),
                      ),
                    ),
                    child: Text(
                      "SETRAM Constantine",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    DashboardCard(
                      icon: Icons.upload_file,
                      title: "Importer Bulletins",
                      subtitle: "Fichiers Excel",
                      onTap: () {
                        print("Clicked");
                      },
                    ),
                    DashboardCard(
                      icon: Icons.description,
                      title: "Gérer Bulletins",
                      subtitle: "Documents PDF",
                      onTap: () {
                        print("Clicked");
                      },
                    ),
                    DashboardCard(
                      icon: Icons.compare_arrows,
                      title: "Gérer Permutations",
                      subtitle: "Échanges chauffeurs",
                      
                      
                      onTap: () {
                        print("Clicked");
                      },
                    ),
                    DashboardCard(
                      icon: Icons.history,
                      title: "Consulter Historique",
                      subtitle: "Archives service",
                      onTap: () {
                        print("Clicked");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
