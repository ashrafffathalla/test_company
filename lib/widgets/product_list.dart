import 'package:flutter/material.dart';
class ProductScreen extends StatefulWidget
{
  final int? row;
  const ProductScreen({Key? key,this.row}) : super(key: key);
  @override
  _ProductScreenState createState() => _ProductScreenState();
}
class _ProductScreenState extends State<ProductScreen>
{

  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: widget.row == 2 ? 330 :  240,
      margin: const EdgeInsets.only(top: 10.0),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)
        {
          bool reverse =widget.row == 2 ? index.isEven : index.isOdd;
          return buildHambergerList(index,context,reverse);
        },
        separatorBuilder:(context, index) =>const SizedBox(width: 0.0,),
        itemCount: 6,
      ),
    );
  }

//Start build List
  Widget buildHambergerList(context, index,reverse)=>Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: GestureDetector(
          onTap: ()
          {

          },
          child: Container(
            height:240,
            width: 200,
            margin: EdgeInsets.only(left: index==0 ? 0 : 0, right: 10.0),
            child:  Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children:
                  [
                    Container(

                      child:  Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 10.0),
                        child:Text(
                          reverse? ' Lays' : ' M&Ms',
                          style:const TextStyle(
                            fontSize: 16.0,
                            fontWeight:FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children:
                      [
                        const SizedBox(width: 70,),
                        const Text(
                          '15,95 \$',
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 50.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.teal,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              elevation: 3.0,
              margin: const EdgeInsets.all(5.0),
              shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),),
            ),
          ),
        ),
      ),
      Positioned(
        top: 50 ,
        left: 50.0,
        child: GestureDetector(
          onTap: ()
          {

          },
          child:  reverse ? buildBurgerOneImage() : buildBurgerTowImage(),
        ),
      ),
    ],
  );
//End buildList

//Start  image
  Widget buildBurgerOneImage()=>Container(
    height: 120.0,
    child: Image.asset('assets/images/layz.png',),
  );
  Widget buildBurgerTowImage()=>Container(
    height: 120.0,
    child: Image.asset('assets/images/mm.png'),
  );
//end  image
}
