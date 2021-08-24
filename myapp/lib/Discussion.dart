import 'dart:async';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MockData.dart';

class Discussion extends StatefulWidget {
  Discussion({Key? key ,required this.title}):super(key: key);
  final String title;
  @override
  _Discussion createState() => _Discussion();
}

    // ignore: non_constant_identifier_names
    
class _Discussion extends State<Discussion> {

  List<Items> myItem =<Items>[
    Items(question: 'Question',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question1',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question2',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question3',answers: ['Answer1','Answer1','Answer1']),
     Items(question: 'Question',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question1',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question2',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question3',answers: ['Answer1','Answer1','Answer1']),
     Items(question: 'Question',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question1',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question2',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question3',answers: ['Answer1','Answer1','Answer1']),
     Items(question: 'Question',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question1',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question2',answers: ['Answer1','Answer1','Answer1']),
    Items(question: 'Question3',answers: ['Answer1','Answer1','Answer1']),
  ];
  final _controller = ScrollController();
  var flag=0;
  @override
  Widget build(BuildContext context) {
   
  
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.title)
        ),
        body:ListView(
          controller: _controller,
                children: [
                  ExpansionPanelList(
                    expansionCallback: (int index,bool isActive){
                      setState(() {
                        myItem[index].isActive=!myItem[index].isActive;
                        myItem[myItem.length-1].isActive=true;
                      });
                    },
                    children:myItem.map((Items myItem){
                      return ExpansionPanel(
                        headerBuilder: (BuildContext context,bool isActive){
                          return Column(
                            children:[
                              Container(padding:EdgeInsets.all(10.6), 
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Q",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 25),),
                                  Text("What is the Value of X when Y is Mute ?",style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.end,),
                                  Opacity(opacity: 0,
                                  child:Text("Q",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 30),),
                                  )
                                ],
                              )),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Your Answer:'),
                                  Padding(
                                    padding:EdgeInsets.all(10.6),
                                     child: TextField(
                                       maxLength: 225,textAlignVertical: TextAlignVertical.center),
                                  ),
                                  ],
                              ),
                            ],
                          );
                        },
                        isExpanded: myItem.isActive,
                        body:Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                          children: myItem.answers.map((String answers){
                            return Row(
                              children:
                            [
                              Text('User Name ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 5),),
                              Padding(padding:EdgeInsets.all(10.6),
                              child: Text(answers,textAlign: TextAlign.start,)
                              ),
                            ],
                            );
                          }).toList(),
                        ),
                        );
                    }).toList(),
                  ),
                ],
              ),
    );
    
  }
}

class Items{
  late String question;
  late bool isActive;
  late List<String> answers;
Items({this.isActive:false,required this.question,required this.answers});
}

