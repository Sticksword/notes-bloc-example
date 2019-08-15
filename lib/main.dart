import 'package:flutter/material.dart';
import 'package:bloc_notes/data/blocs/bloc_provider.dart';
import 'package:bloc_notes/data/blocs/notes_bloc.dart';
import 'package:bloc_notes/screens/notes_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Notes',
			theme: ThemeData(
				primarySwatch: Colors.blue,
			),
			// We want to provide our NotesPage with the NotesBloc so we
			// can retrieve it from within the NotesPage later
			home: BlocProvider(
				bloc: NotesBloc(),
				child: NotesPage(title: 'Notes'),
			),
		);
	}
}

