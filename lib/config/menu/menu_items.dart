
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
    link: '/cards', 
    icon: Icons.credit_card
  ),
  MenuItem(
    title: 'Progress Indicators', 
    sibTitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),
  MenuItem(
    title: 'Snackbars y dialogos', 
    sibTitle: 'Indicadores en pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated container', 
    sibTitle: 'Staful widget animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_outlined
  ),
  MenuItem(
    title: 'Ui controls + tiles', 
    sibTitle: 'Una serie de controles de Flutter', 
    link: '/ui-controls', 
    icon: Icons.car_rental_outlined
  ),
  MenuItem(
    title: 'Introducción a la aplicación', 
    sibTitle: 'Mi primer tutorial con flutter', 
    link: '/tutorial', 
    icon: Icons.accessible_rounded
  )
];