import 'package:flutter/material.dart';

import '../models/livre.dart';
import '../data/livres_data.dart';
import '../main.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Livre> nouveautes =
        livres.where((livre) => livre.nouveaute).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Nouveautés',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Q2.7 : liste horizontale des nouveautés
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: nouveautes.length,
            itemBuilder: (context, index) {
              final livre = nouveautes[index];

              return Container(
                width: 110,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: livre.couleur,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: Text(
                  livre.titre,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              );
            },
          ),
        ),

        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Tout le catalogue',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Q2.4, Q2.6 et Q2.8
        Expanded(
          child: ListView.separated(
            itemCount: livres.length,
            itemBuilder: (context, index) {
              return livreTile(livres[index]);
            },
            separatorBuilder: (context, index) {
              return const Divider(indent: 72);
            },
          ),
        ),
      ],
    );
  }
}