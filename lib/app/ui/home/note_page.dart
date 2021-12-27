// lib/note_page.dart

import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {
  const NotePage({
    Key? key,
    required this.create,
  }) : super(key: key);

  final void Function({required String title, required String body}) create;

  @override
  Widget build(BuildContext context) {
    final _titleController = TextEditingController();
    final _bodyController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('노트 생성 페이지'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              key: const ValueKey('title'),
              controller: _titleController,
              autofocus: true,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            Expanded(
              child: TextField(
                key: const ValueKey('body'),
                controller: _bodyController,
                keyboardType: TextInputType.multiline,
                maxLines: 500,
                decoration:
                    const InputDecoration(hintText: 'Enter your text here...'),
              ),
            ),
            ElevatedButton(
              child: const Text('Ok'),
              onPressed: () {
                create(
                  title: _titleController.text,
                  body: _bodyController.text,
                );
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
