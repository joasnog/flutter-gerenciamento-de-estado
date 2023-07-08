import 'package:bloc/bloc.dart';

// Observa todas as mudanças de estado no aplicativo

class CounterObserver extends BlocObserver {
  const CounterObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    print('${bloc.runtimeType}: $change');
  }
}
