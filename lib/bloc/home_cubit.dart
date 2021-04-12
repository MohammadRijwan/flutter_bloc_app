import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/bloc/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  
  HomeCubit() : super(HomeState(1));
  int incre(int counter){
    emit(HomeState(counter++));
     return counter++;
    
    // return counter;
  }
}