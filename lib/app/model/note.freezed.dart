// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

  _Note call({required int id, required String title, required String body}) {
    return _Note(
      id: id,
      title: title,
      body: body,
    );
  }
}

/// @nodoc
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
  $Res call({int id, String title, String body});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) then) =
      __$NoteCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String body});
}

/// @nodoc
class __$NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(_Note _value, $Res Function(_Note) _then)
      : super(_value, (v) => _then(v as _Note));

  @override
  _Note get _value => super._value as _Note;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_Note(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Note implements _Note {
  _$_Note({required this.id, required this.title, required this.body});

  @override
  final int id;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'Note(id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Note &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$NoteCopyWith<_Note> get copyWith =>
      __$NoteCopyWithImpl<_Note>(this, _$identity);
}

abstract class _Note implements Note {
  factory _Note(
      {required int id, required String title, required String body}) = _$_Note;

  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$NoteCopyWith<_Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$NoteListTearOff {
  const _$NoteListTearOff();

  _NoteList call({required List<Note> notes}) {
    return _NoteList(
      notes: notes,
    );
  }
}

/// @nodoc
const $NoteList = _$NoteListTearOff();

/// @nodoc
mixin _$NoteList {
  List<Note> get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteListCopyWith<NoteList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListCopyWith<$Res> {
  factory $NoteListCopyWith(NoteList value, $Res Function(NoteList) then) =
      _$NoteListCopyWithImpl<$Res>;
  $Res call({List<Note> notes});
}

/// @nodoc
class _$NoteListCopyWithImpl<$Res> implements $NoteListCopyWith<$Res> {
  _$NoteListCopyWithImpl(this._value, this._then);

  final NoteList _value;
  // ignore: unused_field
  final $Res Function(NoteList) _then;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc
abstract class _$NoteListCopyWith<$Res> implements $NoteListCopyWith<$Res> {
  factory _$NoteListCopyWith(_NoteList value, $Res Function(_NoteList) then) =
      __$NoteListCopyWithImpl<$Res>;
  @override
  $Res call({List<Note> notes});
}

/// @nodoc
class __$NoteListCopyWithImpl<$Res> extends _$NoteListCopyWithImpl<$Res>
    implements _$NoteListCopyWith<$Res> {
  __$NoteListCopyWithImpl(_NoteList _value, $Res Function(_NoteList) _then)
      : super(_value, (v) => _then(v as _NoteList));

  @override
  _NoteList get _value => super._value as _NoteList;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_NoteList(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$_NoteList implements _NoteList {
  _$_NoteList({required this.notes});

  @override
  final List<Note> notes;

  @override
  String toString() {
    return 'NoteList(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteList &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  _$NoteListCopyWith<_NoteList> get copyWith =>
      __$NoteListCopyWithImpl<_NoteList>(this, _$identity);
}

abstract class _NoteList implements NoteList {
  factory _NoteList({required List<Note> notes}) = _$_NoteList;

  @override
  List<Note> get notes;
  @override
  @JsonKey(ignore: true)
  _$NoteListCopyWith<_NoteList> get copyWith =>
      throw _privateConstructorUsedError;
}
