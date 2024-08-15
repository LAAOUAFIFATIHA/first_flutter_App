import 'package:flutter/material.dart';
import 'package:flutter_project/styled_body.dart';


class Coffee extends StatefulWidget {
  const Coffee({super.key});

  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  int choco = 1 ;
  int piece = 1 ;

  void incChco () {
    setState(() {
      choco =  choco < 5 ? choco + 1 : 1;
    });

    print('incremented... BY one ...') ;
  }

  void incPiece (){
    setState(() {
      piece = piece < 5 ? piece + 1 : 0 ;
    });

    print('incremented... BY one ...');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBody('chocolate') ,
            for (int i = 0 ; i <choco ;i++)
              Image.asset('images/choco.png' ,
                width: 35,
                color : Colors.green[100] ,
                 colorBlendMode : BlendMode.multiply ,
              ) ,
            const Expanded(
              child:  SizedBox(width: 50,),
            ),
            IconButton(onPressed: (){ incChco() ;}, icon: Icon(Icons.add)) ,
          ],
        ) ,
        Row(
          children: [
            const StyledBody('piece') ,

            if (piece == 0)
              const Text('no piece of cake !', style:TextStyle(
                color: Colors.red ,
              ) ) ,


            for (int j = 0 ; j < piece ; j++ )
              Image.asset('images/piece.png' ,
                width: 35,
                color : Colors.green[100] ,
                colorBlendMode : BlendMode.multiply ,
                ) ,
             const Expanded(
              child:  SizedBox(width: 50,),
            ),
            IconButton(onPressed: (){ incPiece(); }, icon: Icon(Icons.add)) ,
          ],
        ) ,
      ],
    );
  }
}
