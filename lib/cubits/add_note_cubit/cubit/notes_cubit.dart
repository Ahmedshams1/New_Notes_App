import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:newnoteapp/constant.dart';
import 'package:newnoteapp/models/note_Model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async {
    emit(Notesloading());
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);

      List<NotesModel> notes = notesBox.values.toList();
      emit(Notessuccess(notes));
    } catch (e) {
      emit(Notesfailure(e.toString()));
    }
  }
}
