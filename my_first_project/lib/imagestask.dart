import 'package:flutter/material.dart';
class ImagesTask extends StatefulWidget {
  const ImagesTask({super.key});

  @override
  State<ImagesTask> createState() => _ImagesTaskState();
}

class _ImagesTaskState extends State<ImagesTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
      borderRadius: BorderRadius.circular(100),
                child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-wal"
                    "king-in-the-forest-photo.jpg",width: 200, height: 200,),),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s",width: 200, height: 200,)),
              Image.network("https://images.pexels.com/photos/1054655/pexe"
                  "ls-photo-1054655.jpeg?cs=srgb&dl=pexels-hsapir-1054655.jpg&fm=jpg",width: 200, height: 230,),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm2-IiCQnnEHH1dk5HN2K60xrv8Wyu8VRW7Q&s",width: 200, height: 150,),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2JFyVMUGB2hCmAhFXOdCydqzgsCHd2BAzEA&s", width: 200, height: 150)
            ],
            
          ),
          CircleAvatar(
            backgroundImage: NetworkImage("url"),
            radius: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9YYh5Fk1u9VsWWr1MhkyQeOzeNbtnnMO96g&s", width: 200, height: 200,)),
              Image.network("https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky."
                  "jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=", width: 200, height: 200,),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtnvAOajH9gS4C30cRF7rD_voaTAKly2Ntaw&s", width: 200, height: 200,),

              Image.asset("assets/images/pic.jpg", width: 70, height: 70,)
            ],

          )

          
        ],
      )

    );
  }
}
