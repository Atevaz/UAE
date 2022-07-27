import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'global_state.dart';
// TODO: Add 
class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  static GlobalCubit get(context) => BlocProvider.of(context);



}
