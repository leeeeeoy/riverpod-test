import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod_test/app/model/note.dart';
import 'package:riverpod_test/app/model/note_state.dart';

final noteListStateProvider =
    StateNotifierProvider<NoteState, NoteList>((ref) => NoteState());

class Listener extends Mock {
  void call(NoteList? previous, NoteList value);
}

void main() {
  group('노트 앱 Provider 기능 테스트', () {
    const title = 'test Title';
    const body = 'test Body';

    const updatetitle = 'update Title';
    const updateBody = 'update Body';

    test('처음 생성시 노트 목록은 비어있다.', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<NoteList>(
        noteListStateProvider,
        listener,
        fireImmediately: true,
      );

      verify(listener(null, NoteList(notes: []))).called(1);
      verifyNoMoreInteractions(listener);
    });

    test('노트 생성시 노트 목록에 추가된다', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<NoteList>(
        noteListStateProvider,
        listener,
        fireImmediately: true,
      );

      verify(listener(null, NoteList(notes: []))).called(1);
      verifyNoMoreInteractions(listener);

      container
          .read(noteListStateProvider.notifier)
          .createNote(title: title, body: body);

      verify(listener(NoteList(notes: []),
          NoteList(notes: [Note(id: 0, title: title, body: body)]))).called(1);
      verifyNoMoreInteractions(listener);
    });

    test('노트 삭제시 노트 목록에서 제거된다.', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<NoteList>(
        noteListStateProvider,
        listener,
        fireImmediately: true,
      );

      verify(listener(null, NoteList(notes: []))).called(1);
      verifyNoMoreInteractions(listener);

      container
          .read(noteListStateProvider.notifier)
          .createNote(title: title, body: body);

      verify(listener(NoteList(notes: []),
          NoteList(notes: [Note(id: 0, title: title, body: body)]))).called(1);
      verifyNoMoreInteractions(listener);

      container.read(noteListStateProvider.notifier).deleteNote(0);

      verify(listener(NoteList(notes: [Note(id: 0, title: title, body: body)]),
          NoteList(notes: []))).called(1);
      verifyNoMoreInteractions(listener);
    });

    test('노트 수정시 목록에서 업데이트 된다.', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<NoteList>(
        noteListStateProvider,
        listener,
        fireImmediately: true,
      );

      verify(listener(null, NoteList(notes: []))).called(1);
      verifyNoMoreInteractions(listener);

      container
          .read(noteListStateProvider.notifier)
          .createNote(title: title, body: body);

      verify(
        listener(
          NoteList(notes: []),
          NoteList(notes: [Note(id: 0, title: title, body: body)]),
        ),
      ).called(1);
      verifyNoMoreInteractions(listener);

      container
          .read(noteListStateProvider.notifier)
          .updateNote(id: 0, title: updatetitle, body: updateBody);

      verify(
        listener(
          NoteList(notes: [Note(id: 0, title: title, body: body)]),
          NoteList(notes: [Note(id: 0, title: updatetitle, body: updateBody)]),
        ),
      ).called(1);
      verifyNoMoreInteractions(listener);
    });

    test('노트의 특정 내역만 수정시 목록에 업데이트 된다.', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<NoteList>(
        noteListStateProvider,
        listener,
        fireImmediately: true,
      );

      verify(listener(null, NoteList(notes: []))).called(1);
      verifyNoMoreInteractions(listener);

      container
          .read(noteListStateProvider.notifier)
          .createNote(title: title, body: body);

      verify(
        listener(
          NoteList(notes: []),
          NoteList(notes: [Note(id: 0, title: title, body: body)]),
        ),
      ).called(1);
      verifyNoMoreInteractions(listener);

      container
          .read(noteListStateProvider.notifier)
          .updateNote(id: 0, title: updatetitle);

      verify(
        listener(
          NoteList(notes: [Note(id: 0, title: title, body: body)]),
          NoteList(notes: [Note(id: 0, title: updatetitle, body: body)]),
        ),
      ).called(1);
      verifyNoMoreInteractions(listener);
    });
    test('노트 생성, 추가, 수정, 삭제 통합 테스트', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<NoteList>(
        noteListStateProvider,
        listener,
        fireImmediately: true,
      );

      verify(listener(null, NoteList(notes: []))).called(1);
      verifyNoMoreInteractions(listener);

      container
          .read(noteListStateProvider.notifier)
          .createNote(title: title, body: body);

      verify(
        listener(
          NoteList(notes: []),
          NoteList(notes: [Note(id: 0, title: title, body: body)]),
        ),
      ).called(1);
      verifyNoMoreInteractions(listener);

      container
          .read(noteListStateProvider.notifier)
          .updateNote(id: 0, title: updatetitle);

      verify(
        listener(
          NoteList(notes: [Note(id: 0, title: title, body: body)]),
          NoteList(notes: [Note(id: 0, title: updatetitle, body: body)]),
        ),
      ).called(1);
      verifyNoMoreInteractions(listener);

      container.read(noteListStateProvider.notifier).deleteNote(0);

      verify(
        listener(
          NoteList(notes: [Note(id: 0, title: updatetitle, body: body)]),
          NoteList(notes: []),
        ),
      ).called(1);
      verifyNoMoreInteractions(listener);
    });
  });
}
