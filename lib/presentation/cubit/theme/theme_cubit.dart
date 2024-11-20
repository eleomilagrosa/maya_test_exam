import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeLight());

  void changeTheme() {
    if (state is ThemeLight) {
      emit(ThemeDark());
    } else {
      emit(ThemeLight());
    }
  }
}

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class ThemeLight extends ThemeState {}
class ThemeDark extends ThemeState {}