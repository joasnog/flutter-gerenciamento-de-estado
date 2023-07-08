part of 'timer_bloc.dart';

// Eventos
// TimerStarted — informa ao TimerBloc que o timer deve ser iniciado.
// TimerPaused — informa ao TimerBloc que o timer deve ser pausado.
// TimerResumed — informa ao TimerBloc que o cronômetro deve ser retomado.
// TimerReset — informa ao TimerBloc que o timer deve ser redefinido para o estado original.
// _TimerTicked — informa ao TimerBloc que ocorreu um tick e que ele precisa atualizar seu estado de acordo.

sealed class TimerEvent {
  const TimerEvent();
}

final class TimerStarted extends TimerEvent {
  const TimerStarted({required this.duration});
  final int duration;
}

final class TimerPaused extends TimerEvent {
  const TimerPaused();
}

final class TimerResumed extends TimerEvent {
  const TimerResumed();
}

class TimerReset extends TimerEvent {
  const TimerReset();
}

class _TimerTicked extends TimerEvent {
  const _TimerTicked({required this.duration});
  final int duration;
}
