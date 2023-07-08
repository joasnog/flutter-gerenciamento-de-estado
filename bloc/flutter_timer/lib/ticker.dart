// O ticker é nossa fonte de dados para o app.
// Expõe um método de tick que pega o número de ticks (segundos) que queremos e retorna uma stream
// que emite os segundos restantes a cada segundo.

class Ticker {
  const Ticker();

  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1).take(ticks);
  }
}
