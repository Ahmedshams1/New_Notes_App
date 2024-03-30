import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:newnoteapp/constant.dart';
import 'package:newnoteapp/models/note_Model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NotesModel note) async {
    emit(AddNoteloading());
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);

      await notesBox.add(note);
      emit(AddNotesuccess());
    } catch (e) {
      emit(AddNotefailure(e.toString()));
    }
  }
}
