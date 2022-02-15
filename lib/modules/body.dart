import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_company/widgets/categories_list.dart';
import 'package:test_company/widgets/product_list.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body>
{
  final List<String> _listItems =
  [
    'assets/images/lays.jpg',
    'assets/images/lays.jpg',
    'assets/images/lays.jpg',
    'assets/images/lays.jpg',
    'assets/images/lays.jpg',
    'assets/images/lays.jpg',
    'assets/images/lays.jpg',
    'assets/images/lays.jpg',
  ];
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(

          child: Column(
            children:
            [
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: size.height / 8.5 ,
                      decoration:const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                        ),
                        boxShadow:
                        [
                          BoxShadow(
                            blurRadius:2,
                            //offset: Offset(0,0),
                            color: Colors.teal,
                            //TODO
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  margin:EdgeInsets.only(left: 0 , right: 10.0),
                                  child: GestureDetector(
                                    onTap: ()
                                    {
                                    },
                                    child: Card(
                                      color: Colors.blue,
                                      child:const Icon(
                                        Icons.fastfood,
                                        color:Colors.white,
                                      ),

                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  child: GestureDetector(
                                    onTap: ()
                                    {
                                    },
                                    child: Card(
                                      color: Colors.orangeAccent,
                                      child:const Icon(
                                        Icons.fastfood,
                                        color:Colors.white,
                                      ),
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  height: 67,
                                  width: 200,
                                  child: Card(
                                    elevation: 0,
                                    shape:RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0)
                                    ),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration:const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: ' أسم الطالب',
                                        prefixIcon: Icon(Icons.search),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const CategoriesList(),
              ProductScreen(),
              ProductScreen(),
              ProductScreen(),
            ],
          ),
        ),
      ),
    );
  }

}
