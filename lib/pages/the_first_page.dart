import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:john_amir/pages/the_second_page.dart';


class firstPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Recipes')),
        centerTitle: true,

        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.separated(itemBuilder:(context,index) =>InkWell(
        onTap: (){
          //navigateTo(context, secondpage(reps: samples[index],));
          Navigator.push(context, MaterialPageRoute(builder: (context)=>secondpage(reps: samples[index],)));
        },
        child: Card(
          elevation: 10.0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
              child: Column(children: [
                Image(

                    width: double.infinity,
                    height: 200.0,
                    image: NetworkImage('${samples[index].image}')

                ),
                SizedBox(height: 15.0,),
                Text('${samples[index].title}',style: TextStyle(fontWeight: FontWeight.bold),),
              ],),
            ),
          ),
        ),
      )
          , separatorBuilder: (context,index)=>SizedBox(height: 15.0,), itemCount: samples.length),
    );
  }
}

class meals {
  final String image;
  final String title;
  final List<Ingredient> ingredint;

  meals({required this.image,required this.title,required this.ingredint});
}
List<meals>samples=[
  meals(image: 'images/chocolate_chip_cookies.jpg', title: 'Chocolate Chips',
      ingredint: [ Ingredient( measure: 'box',name: 'Spaghetti', quantity: 1,),        Ingredient(quantity: 4, measure: '',name: 'Frozen Meatballs',),
        Ingredient(quantity:0.5,measure: 'jar', name:'sauce',),

      ]),
  meals(image: 'images/grilled_cheese.jpg', title: 'Grilled Cheese',ingredint: [  Ingredient(quantity:2,measure: 'slices',name: 'Cheese'),
    Ingredient(quantity:2, measure:'slices', name:'Bread'), ]),
  meals(image: 'images/hawaiian_pizza.jpg', title: 'Hawaiian Pizza',ingredint: [ Ingredient(quantity :4, measure:'cups', name:'flour'),        Ingredient(quantity:2, measure:'cups', name:'sugar'),
    Ingredient(quantity:0.5, measure:'cups',name: 'chocolate chips'),]),
  meals(image: 'images/spaghetti_and_meatballs.jpg', title: 'Spaghetti & Meatballs',ingredint: [  Ingredient(quantity:3,measure: 'oz', name:  'taco meat'),
    Ingredient(quantity:0.5, measure:'cup', name:'cheese'),        Ingredient(quantity:0.25, measure:'cup', name:'chopped tomatoes'),]),
  meals(image: 'images/taco-salad.jpg', title: 'Taco Salad',ingredint: [Ingredient(quantity: 1,measure: 'item',name: 'pizza'),
    Ingredient(quantity:1,measure: 'cup', name:'pineapple'),]),


];

class Ingredient {
  final double quantity;  final String measure;
  final String name;
  Ingredient({    required this.quantity,
    required this.measure,    required this.name,
  });}

