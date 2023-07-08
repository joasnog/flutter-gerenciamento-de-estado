part of 'timer_bloc.dart';

// Estados:
// TimerInitial — pronto para iniciar a contagem regressiva a partir da duração especificada.
// TimerRunInProgress — contagem regressiva ativa a partir da duração especificada.
// TimerRunPause — pausado em alguma duração restante.
// TimerRunComplete — concluído com uma duração restante de 0.

// Observe que todos TimerStates estendem a classe base abstrata TimerState que possui uma propriedade de duração.
// Isso ocorre porque não importa em que estado TimerBloc esteja, queremos saber quanto tempo resta.
sealed class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
