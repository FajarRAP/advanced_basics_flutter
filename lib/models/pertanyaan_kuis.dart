class PertanyaanKuis {
  const PertanyaanKuis(this.soal, this.opsiJawaban);

  final String soal;
  final List<String> opsiJawaban;

  List<String> getOpsiJawabanAcak() {
    final List<String> acak = List.of(opsiJawaban);
    acak.shuffle();
    return acak;
  }
}
