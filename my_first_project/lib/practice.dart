import 'package:flutter/material.dart';
import 'package:my_first_project/homepage.dart';
class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s"),
                  radius: 100,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?cs=srgb&dl=pexels-hsapir-1054655.jpg&fm=jpg"),
                  radius: 100,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm2-IiCQnnEHH1dk5HN2K60xrv8Wyu8VRW7Q&s"),
                  radius: 100,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2JFyVMUGB2hCmAhFXOdCydqzgsCHd2BAzEA&s"),
                  radius: 100,
                ),
              ),
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                   },
                   child: CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9YYh5Fk1u9VsWWr1MhkyQeOzeNbtnnMO96g&s"),
                    radius: 100,
                                   ),
                 ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtnvAOajH9gS4C30cRF7rD_voaTAKly2Ntaw&s"),
                  radius: 100,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ1ipeQbFseUM_GzxwMoQj45w9HtAnu4eu5w&s"),
                  radius: 100,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://st4.depositphotos.com/1005145/27324/i/450/depositphotos_273243670-stock-photo-contemplation-of-the-foggy-dawn.jpg"),
                  radius: 100,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg"),
                  radius: 100,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9YYh5Fk1u9VsWWr1MhkyQeOzeNbtnnMO96g&s"),
                  radius: 100,
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
