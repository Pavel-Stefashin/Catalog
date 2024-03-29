import 'package:flutter/material.dart';
import 'package:laba2/screan/productScr.dart';


class MyTextField extends StatelessWidget {
  String fildTitle = '';

  MyTextField(String myTextField_Title)
  {
    fildTitle = myTextField_Title;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            labelText: fildTitle
        )
    );
  }
}

class DateField extends StatelessWidget {
  DateField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SwitchField extends StatefulWidget {
  const SwitchField({super.key});

  @override
  State<SwitchField> createState() => _SwitchFieldState();
}

class _SwitchFieldState extends State<SwitchField> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color.fromARGB(255, 102, 73, 143),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}

class Product{
  String Name;
  String Photo;
  String Description;
  String Price;
  Product(this.Name, this.Photo, this.Description, this.Price);
}

class ProductButton extends StatelessWidget {
  String Name;
  String Photo;
  String Description;

  ProductButton(this.Name, this.Photo, this.Description);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProdactCard(this.Name, this.Photo, this.Description)));},
          child: Image.network(Photo));
  }
}