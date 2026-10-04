void main(){
  const NAMA = "Rafly";
  const NIM = "14343452545";
  const JURUSAN = "Teknik Informatika";
  const double nilaiUas = 85;
  const double nilaiUts = 70;
  const double nilaiTugas = 75;

  double nilaiAkhir = hitungNilaiAkhir(nilaiUts, nilaiUas, nilaiTugas);

  String grade = tentukanGrade(nilaiAkhir);

  String status = tentukanStatus(grade);
  

  print("Nama         : $NAMA");
  print("NIM:         : $NIM");
  print("JURUSAN      : $JURUSAN");
  print("Nilai UAS    : $nilaiUas");
  print("Nilai UTS    : $nilaiUts");
  print("Nilai Tugas  : $nilaiTugas");
  print("Nilai Akhir  : $nilaiAkhir");
  print("Grade        : $grade");
  print("Status       : $status");
}

double hitungNilaiAkhir(double uts, double uas, double nilaiTugas){
  double nilaiAkhir = (nilaiTugas * 0.3) + (uts * 0.3) + (uas * 0.4);
  return nilaiAkhir;
}

String tentukanGrade(double nilaiAkhir){
  if(nilaiAkhir >= 85){
    return "A";
  }else if(nilaiAkhir >= 75){
    return "B";
  }else if(nilaiAkhir >= 65){
    return "C";
  }else if(nilaiAkhir >= 50){
    return "D";
  }
  else{
    return "E";
  }
}

String tentukanStatus(String grade){
  switch(grade){
    case "A":
    case "B":
    case "C":
      return "LULUS";

    case "D":
    case "E":
      return "TIDAK LULUS";

    default:
      return "ga adajxnsn";

  }
  
}