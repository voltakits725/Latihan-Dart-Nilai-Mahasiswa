# SISTEM PENILAIAN MAHASISWA

**RAFLY KURNIAWAN - LATIHAN DART**

## BUSINESS RULE

- **BR-01:** Nilai Tugas memiliki bobot sebesar 30%.
- **BR-02:** Nilai UTS memiliki bobot sebesar 30%.
- **BR-03:** Nilai UAS memiliki bobot sebesar 40%.
- **BR-04:** Nilai akhir >= 85 mendapatkan Grade A.
- **BR-05:** Nilai akhir >= 75 mendapatkan Grade B.
- **BR-06:** Nilai akhir >= 65 mendapatkan Grade C.
- **BR-07:** Nilai akhir >= 50 mendapatkan Grade D.
- **BR-08:** Nilai akhir < 50 mendapatkan Grade E.
- **BR-09:** Grade A, B, dan C dinyatakan LULUS.
- **BR-10:** Grade D dan E dinyatakan TIDAK LULUS.

## SOURCE CODE

```dart
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