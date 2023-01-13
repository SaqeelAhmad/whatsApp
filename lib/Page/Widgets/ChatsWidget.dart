import 'package:flutter/material.dart';






class ChatsWidget extends StatelessWidget {
  const ChatsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            children: [
              for(int t=1, i = 1;i < 5; i++)

              InkWell(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset('assets/images/profile$t.png',width: 65,height: 65,fit: BoxFit.contain,),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20),child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Saqeel",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(height: 5,),
                        Text("Hi Saqeel, hou aare you?",style: TextStyle(fontSize: 12,color: Colors.white),),

                      ],

                      ),),
                      Spacer(),
                      Padding(padding: EdgeInsets.only(right: 4),child: Column(
                        children: [
                          Text('10/18/22',style: TextStyle(color: Colors.white,fontSize: 12),),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green
                            ),
                            child: Center(child: Text('24',style: TextStyle(color: Colors.white),)),
                          )
                        ],
                      ),),
                    ],
                  ),
                ),
              ),
               ElevatedButton(onPressed:(){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Scaffold(

                 )));
               }, child: Text("Chat",style: TextStyle(
                 color: Colors.white
               ),))
            ],
          ),
        ),
      ),
    );
  }
}
