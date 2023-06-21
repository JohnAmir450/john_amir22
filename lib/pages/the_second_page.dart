import 'package:flutter/material.dart';
import 'package:john_amir/pages/the_first_page.dart';


class secondpage extends StatefulWidget {
  final meals reps;

  const secondpage({super.key, required this.reps});



  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('${widget.reps.title}'),
        centerTitle: true,
      backgroundColor: Colors.deepOrange,
      ),

      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Image( width: double.infinity,
            height: 400.0,
            fit: BoxFit.fill,
            image: NetworkImage('${widget.reps.image}',
            ),


          ),
          SizedBox(height: 20.0,),
          Text('${widget.reps.title}'),

          Expanded(child: ListView.separated(itemBuilder: (context,index)=>  Text('${samples[index].ingredint[index].quantity*slidervalue}  ${samples[index].ingredint[index].measure}  ${samples[index].ingredint[index].name}'), separatorBuilder: (context,index)=>SizedBox(height: 15.0,), itemCount:widget.reps.ingredint.length )),


          Slider(
              max: 10,
              min: 1,
              divisions: 9,
              activeColor: Colors.deepOrange,
              value: slidervalue.toDouble(), onChanged: (va){
            setState(() {
              slidervalue=va.round();
            }

            );
          }
          )


        ],

        ),
      ),



    );
  }

}

int slidervalue=1;
