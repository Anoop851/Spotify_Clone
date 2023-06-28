import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/models/music.dart';
import 'package:spotify_app/screens/search.dart';
import 'package:spotify_app/screens/yourlibrary.dart';
import 'home.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer _audioPlayer = new AudioPlayer();

  var Tabs = [];
  int currentTabIndex =0;
  bool isPlaying = false;
   Music? music;
 Widget miniPlayer(Music? music,{bool stop = false}){
   this.music = music;

   if(music == null){
     return SizedBox();
   }
   if(stop){
     _audioPlayer.stop();
     isPlaying = false;
   }
   setState(() {

   });
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(duration: const Duration(milliseconds: 500),
    color: Colors.blueGrey,
    width: deviceSize.width,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(music.image,fit: BoxFit.cover,),
        Text(music.name , style: TextStyle(color: Colors.white,fontSize: 20,),),
        IconButton(
            onPressed: () async {
              isPlaying = !isPlaying;
              if(isPlaying){
                await _audioPlayer.play(UrlSource(music.audioURL));
              }
              else{
                await _audioPlayer.pause();
              }
              setState(() {});
            },
            icon: isPlaying? Icon(Icons.pause,color: Colors.white,):Icon(Icons.play_arrow,color: Colors.white,)),

      ],
    ),);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Tabs = [Home(miniPlayer),Search(),YourLibrary()];
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: (currentIndex){
              print("Current index is $currentIndex");
              currentTabIndex = currentIndex;
              setState(() {});
            },
            selectedItemColor: Colors.white,
            backgroundColor: Colors.black54,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.white,), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.search , color: Colors.white,), label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.my_library_books_outlined , color: Colors.white,), label: "Your Library")
            ],
          ),
        ],
      ),
    );
  }
}
