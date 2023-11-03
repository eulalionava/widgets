
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String sibTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.sibTitle, 
    required this.link, 
    required this.icon
  });

}


const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones', 
    sibTitle: 'Varios botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Tarjetas', 
    sibTitle: 'Un contenedor estilizado', 
    link: '/card', 
    icon: Icons.credit_card
  )
];