import 'package:bloc/bloc.dart';

class ShimmerBloc extends Cubit<bool> {
  ShimmerBloc() : super(false);

  void isLoading() {
    emit(true);
  }

  void isLoaded() {
    emit(false);
  }
}
