import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/app/model/note.dart';
import 'package:riverpod_test/app/model/note_state.dart';

final noteStateProvider = StateNotifierProvider<NoteState, NoteList>((ref) {
  return NoteState();
});
