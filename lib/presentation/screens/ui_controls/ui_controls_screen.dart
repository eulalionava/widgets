import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui controls'),
      ),
      body:const _UiControlsView(),
    );                               
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car,plane,boat,submarine}

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast =  false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper, 
          onChanged: (value)=>setState(() {
           isDeveloper = !isDeveloper; 
          })
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('Carro'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car, 
              groupValue: selectedTransportation, 
              onChanged: (value)=>setState(() {
                selectedTransportation = Transportation.car;
              })
            ),
            RadioListTile(
              title: const Text('Bote'),
              subtitle: const Text('Viajar por Bote'),
              value: Transportation.boat, 
              groupValue: selectedTransportation, 
              onChanged: (value)=>setState(() {
                selectedTransportation = Transportation.boat;
              })
            ),
            RadioListTile(
              title: const Text('Avion'),
              subtitle: const Text('Viajar por Avion'),
              value: Transportation.plane, 
              groupValue: selectedTransportation, 
              onChanged: (value)=>setState(() {
                selectedTransportation = Transportation.plane;
              })
            ),
            RadioListTile(
              title: const Text('Submarino'),
              subtitle: const Text('Viajar por Submarino'),
              value: Transportation.submarine, 
              groupValue: selectedTransportation, 
              onChanged: (value)=>setState(() {
                selectedTransportation = Transportation.submarine;
              })
            )
          ],
        ),

        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBreakfast, 
          onChanged: (value)=>setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch, 
          onChanged: (value)=>setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('¿Cena?'),
          value: wantsDinner, 
          onChanged: (value)=>setState(() {
            wantsDinner = !wantsDinner;
          }),
        )
      ],
    );
  }
}                                                                                                                       