part of 'global_cubit.dart';

@immutable
abstract class GlobalState {}

class GlobalInitial extends GlobalState {}

class ChangeBuildingTypeState extends GlobalState {}

class ChangeLocationState extends GlobalState {}
class ChangeRadioButtonState extends GlobalState {}

class LanguageChangedState extends GlobalState {}
