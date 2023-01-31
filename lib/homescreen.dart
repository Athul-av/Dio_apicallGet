
import 'package:api_sample/functions/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Homescreen extends StatelessWidget {
  const Homescreen ({super.key});

  

  @override
  Widget build(BuildContext context) {
    Provider.of<Userprovider>(context,listen: false).getdat();
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 124, 79, 123),
        title:const Text('Dio sample',style: TextStyle(color: Colors.white,fontSize: 23),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer<Userprovider>(
            builder: (context, value, child) {
              return value.userdatas==null? 
             const Center(child:  CircularProgressIndicator()) 
               :ListView.separated(
                 itemBuilder: (context, index) { 
                   return Card( 
                     child: ListTile(
                      tileColor:const Color.fromARGB(255, 210, 166, 210),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Name : ${value.userdatas![index].name}'),
                      ), 
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          Text('email : ${value.userdatas![index].email}'),
                          Text('phone  : ${value.userdatas![index].phone}' ),
                          Text('website : ${value.userdatas![index].website}' ),
                          Text('city  : ${value.userdatas![index].address.city}'), 
                        ],
                      ),
                     ),
                   );
                 },
             separatorBuilder: ((context, index) =>const SizedBox(height: 5)),
              itemCount: value.userdatas!.length);  
            },
           
          ),
        ),
      ),
    );

    
  }

}