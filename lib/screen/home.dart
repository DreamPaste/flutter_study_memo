import 'package:flutter/material.dart';
import 'package:flutter_study_memo/screen/writeScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sample_datas = [
      {
        "title" : "제목 1",
        "date" : "000",
        "content" : "ㄴㄷㄹㄴㄹㄷㄴ"
      },
      {
        "title" : "제목 2",
        "date" : "001",
        "content" : "ㄷㄴㄹㄴㄷㄴ"
      },
      {
        "title" : "제목 3",
        "date" : "003",
        "content" : "ㄴㄷㄹㄴㄹㄴㅁㄴㅁㄹㅁ"
      }
    ];
  }

  late List sample_datas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("메모 리스트"),
      ),
      body: ListView.builder(
        itemCount: sample_datas.length,
        itemBuilder: (context, index){
          Map item = sample_datas[index];
          String title = item["title"];
          String date = item["date"];
          String content = item["content"];
          return InkWell(
            onTap: (){
              print("[LOG] $item");
            },
            child: Column(
              children: [
                ListTile(
                  title: Text(title),
                  subtitle: Text(content),
                  trailing: Text(date),

                ),
                Container(height: 1,color:Colors.grey)
              ],
            ),
          );
        },
      ),
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white,),
        backgroundColor : Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return const WriteScreen();
            })
          );

    })
    );
  }
}

