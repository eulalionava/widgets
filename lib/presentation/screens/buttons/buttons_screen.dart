import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();
  
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=>{}, child: const Text('Elevated')),
            const ElevatedButton(onPressed:null, child: Text('Elevated Disable')),

            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label:const Text('Elevated Icon')
            ),

            FilledButton(onPressed: ()=>{}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: ()=>{}, 
              icon: const Icon(Icons.access_time_filled_rounded), 
              label: const Text('Filled icon')
            ),

            OutlinedButton(onPressed: (){}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.terminal), 
              label: const Text('Outline Icon')
            ),

            TextButton(onPressed: (){}, child: const Text('Text')),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.abc_sharp), 
              label: const Text('Text Icon')
            ),
            const CustomButon(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_outlined)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButon extends StatelessWidget {
  const CustomButon({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('hola'),
          ),
        ),
      ),
    );
  }
}