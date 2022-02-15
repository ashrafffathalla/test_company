import 'package:test_company/modules/body.dart';
import 'package:flutter/material.dart';
class HomeLayout extends StatelessWidget
{
   HomeLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Project Name',
        ),
        leading: IconButton(
          onPressed: (){},
          icon:const Icon(Icons.add_alert_outlined),
        ),
      ),
      body:const Body(),

      bottomNavigationBar:Container(
        height: size.height / 12,
        color: Colors.black38,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            children: [
              Spacer(),
              IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.add_alert),
                iconSize: 28,
                color: Colors.teal,
              ),
              Spacer(),
              IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.turned_in),
                iconSize: 28,
                color: Colors.teal,
              ),
              Spacer(),
              IconButton(
                onPressed: (){},
                icon:const Icon(Icons.add_alert),
                iconSize: 28,
                color: Colors.teal,
              ),
              Spacer(),
              IconButton(
                onPressed: (){},
                icon:const Icon(Icons.shopping_basket),
                iconSize: 28,
                color: Colors.teal,
              ),
              Spacer(),
              IconButton(
                onPressed: (){},
                icon:const Icon(Icons.more_horiz),
                iconSize: 28,
                color: Colors.teal,
              ),
              Spacer(),
            ],
          ),
        ),
      ) ,
    );
  }
}
