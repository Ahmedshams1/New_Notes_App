part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteloading extends AddNoteState {}

final class AddNotesuccess extends AddNoteState {}

final class AddNotefailure extends AddNoteState {
  final String errMassage;

  AddNotefailure(this.errMassage);
}
