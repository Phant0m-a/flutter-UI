import 'package:flutter/material.dart';
import 'package:myapp/models/notes.dart';

class NotesController extends ChangeNotifier {
  List<Note> notesList = [
    Note(id: 0, text: 'Add notes ...'),
  ];

  //get
  List<Note> getNotes() {
    return notesList;
  }

  //add
  void addNew({
    required String text,
  }) {
    notesList.add(Note(id: (notesList.length + 1).toInt(), text: text));
    notifyListeners();
  }

  //update
  void updateNote({required id, required text}) {
    notesList.replaceRange(1, 1, text);
    notifyListeners();
  }

  //delete
  void deleteNote({required text}) {
    notesList.remove(text);
    notifyListeners();
  }
}
