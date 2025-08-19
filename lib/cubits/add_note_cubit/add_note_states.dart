abstract class AddNoteStates {}

class InitialAddNoteState extends AddNoteStates {}

class AddNoteLoadingState extends AddNoteStates {}

class AddNoteSuccessState extends AddNoteStates {}

class AddNoteFailureState extends AddNoteStates {
  final String errMessage;

  AddNoteFailureState(this.errMessage);
}
