class Items{
  late String question;
  late bool isActive;
  late List<String> answers;

}

class MockDB{
    List<Items> getAllItem(){
    List<Items> myItem =List.empty();
    Items newItem =new Items();
    // ignore: non_constant_identifier_names
    List<String> Answers =List.empty();
    Answers.add("value1");
    Answers.add("value1");
    Answers.add("value1");
    Answers.add("value1");

    newItem.answers=Answers;
    newItem.question="My Question";
    myItem.add(newItem);
    myItem.add(newItem);
    myItem.add(newItem);
    myItem.add(newItem);
    myItem.add(newItem);
    myItem.add(newItem);
    return myItem;

  }
}