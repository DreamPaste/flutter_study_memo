import 'package:flutter/material.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({super.key});

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  late TextEditingController titleController;
  late FocusNode titleFocus;
  late String title;
  late TextEditingController contentController;
  late FocusNode contentFocus;
  late String content;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleController = TextEditingController();
    titleFocus = FocusNode();
    title="";
    contentController = TextEditingController();
    contentFocus = FocusNode();
    content="";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("메모 작성 페이지"),
        centerTitle: true,
      ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),

        child:Column(
          children: [
           Expanded(
             child: Column(
               children: [ TextFormField(
                 controller: titleController,
                 focusNode: titleFocus,
                 onChanged: (_){
                   setState(() {
                     title =_;
                   });
                 },
                 decoration: InputDecoration(
                     hintText: "제목 입력",
                     label: Text("제목")
                 ),
               ),
                 TextFormField(
                   controller: contentController,
                   focusNode: contentFocus,
                   onChanged: (_){
                     setState(() {
                       content=_;
                     });
                   },
                   maxLines: 10,
                   maxLength: 500,
                   decoration: InputDecoration(
                       hintText: "내용 입력",
                       label: Text("내용")
                   ),

                 ),],
             ),
           ),

            if(MediaQuery.of(context).viewInsets.bottom <150) InkWell(

              child: Container(
                height: 60,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color: Colors.lightBlue
                ),
                child: Text("입력하기",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ))
              ),
            )
          ],
        ),)
    );
  }
}
