import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    // TODO: Use logger
    print('[INFO] ${bloc.runtimeType} | $event');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    // TODO: Use logger
    print('[ERROR] ${bloc.runtimeType} | $error');
    super.onError(bloc, error, stackTrace);
  }
}
