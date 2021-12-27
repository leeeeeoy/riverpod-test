import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_test/app/ui/home/home_page.dart';
import 'package:riverpod_test/app/ui/home/note_edit_page.dart';
import 'package:riverpod_test/app/ui/home/note_page.dart';

void main() {
  group('노트 앱 위젯 테스트', () {
    _pumpTestWidget(WidgetTester tester) => tester
        .pumpWidget(const ProviderScope(child: MaterialApp(home: HomePage())));
    testWidgets('처음 홈 화면은 비어있다.', (WidgetTester tester) async {
      await _pumpTestWidget(tester);
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(ListTile), findsNothing);
    });

    testWidgets('홈화면에서 노트 생성 화면으로 이동', (WidgetTester tester) async {
      await _pumpTestWidget(tester);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.byType(NotePage), findsOneWidget);
    });

    testWidgets('노트 생성 화면에서 노트 생성', (WidgetTester tester) async {
      await _pumpTestWidget(tester);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.byType(NotePage), findsOneWidget);
      await tester.enterText(find.byKey(const ValueKey('title')), 'hi');
      await tester.enterText(find.byKey(const ValueKey('body')), 'there');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.byType(NotePage), findsNothing);

      expect(find.byType(Dismissible), findsNWidgets(1));
    });

    testWidgets('노트 타일을 누르면 노트 페이지로 이동', (WidgetTester tester) async {
      await _pumpTestWidget(tester);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.byType(NotePage), findsOneWidget);
      await tester.enterText(find.byKey(const ValueKey('title')), 'hi');
      await tester.enterText(find.byKey(const ValueKey('body')), 'there');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.byType(NotePage), findsNothing);

      await tester.tap(find.byIcon(Icons.edit));
      await tester.pumpAndSettle();
      expect(find.byType(NoteEditPage), findsOneWidget);
    });

    testWidgets('노트 수정 후 홈 화면에서 변경 확인', (WidgetTester tester) async {
      await _pumpTestWidget(tester);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.byType(NotePage), findsOneWidget);
      await tester.enterText(find.byKey(const ValueKey('title')), 'hi');
      await tester.enterText(find.byKey(const ValueKey('body')), 'there');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.byType(NotePage), findsNothing);

      await tester.tap(find.byIcon(Icons.edit));
      await tester.pumpAndSettle();
      expect(find.byType(NoteEditPage), findsOneWidget);
      await tester.enterText(
          find.byKey(const ValueKey('editTitle')), 'edit hi');
      await tester.enterText(
          find.byKey(const ValueKey('editBody')), 'edit there');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(find.byType(NoteEditPage), findsNothing);
      expect(find.byType(ListTile), findsNWidgets(1));
      expect(find.text('edit hi'), findsOneWidget);
      expect(find.text('edit there'), findsOneWidget);
    });

    testWidgets('노트 타일을 스와이프시 해당 노트 타일 삭제', (WidgetTester tester) async {
      await _pumpTestWidget(tester);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.byType(NotePage), findsOneWidget);
      await tester.enterText(find.byKey(const ValueKey('title')), 'hi');
      await tester.enterText(find.byKey(const ValueKey('body')), 'there');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.byType(NotePage), findsNothing);

      expect(find.byType(Dismissible), findsNWidgets(1));
      await tester.drag(find.byType(Dismissible), const Offset(500.0, 0.0));
      await tester.pumpAndSettle();
      expect(find.byType(Dismissible), findsNothing);
    });
  });
}
