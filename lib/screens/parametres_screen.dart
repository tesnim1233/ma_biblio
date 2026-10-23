import 'package:flutter/material.dart';

class ParametresScreen extends StatelessWidget {
  const ParametresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
      ),

      // Q2.2 : ListView avec padding de 8
      body: ListView(
        padding: const EdgeInsets.all(8),

        // Q2.3 : séparateurs entre les ListTile
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            // Q1.1 et Q1.2 : Mon profil
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Mon profil'),
              subtitle: const Text('Nom, e-mail, mot de passe'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Profil sélectionné'),
                  ),
                );
              },
            ),

            // Q1.3 et Q1.5 : Notifications
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              subtitle: const Text('Gérer les notifications'),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.indigo.shade50,
              iconColor: Colors.indigo,
              textColor: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Notifications sélectionnées'),
                  ),
                );
              },
            ),

            // Q1.3 : Langue
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Langue'),
              subtitle: const Text('Français'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Langue sélectionnée'),
                  ),
                );
              },
            ),

            // Q1.3 et Q1.4 : À propos
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('À propos'),
              subtitle: const Text(
                'MaBiblio\nApplication de bibliothèque',
              ),
              trailing: const Icon(Icons.chevron_right),

              // Q1.4 : tester ces propriétés séparément
              isThreeLine: true,

              // dense: true,       // Réduit la hauteur
              // enabled: false,    // Désactive le ListTile

              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('MaBiblio - Version 1.0'),
                  ),
                );
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}