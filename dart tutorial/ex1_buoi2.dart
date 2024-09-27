import 'dart:io';

class Student {
  String? _ho;
  String? _thulot;
  String? _ten;
  String? _mssv;
  double? _toan, _ly, _hoa;
  double? _tb;

  // Student(String ho, String thulot, String ten, String mssv, double toan,
  //     double ly, double hoa) {
  //   _ho = ho;
  //   _thulot = thulot;
  //   _ten = ten;
  //   _mssv = mssv;
  //   _toan = toan;
  //   _ly = ly;
  //   _hoa = hoa;
  // }
  Student(this._ho, this._thulot, this._ten, this._mssv, this._toan, this._ly,
      this._hoa);
  void enterInf() {
    print("Enter ho:");
    _ho = stdin.readLineSync();
    print("Enter thu lot: ");
    _thulot = stdin.readLineSync();
    print("Enter name: ");
    _ten = stdin.readLineSync();
    print("Enter MSSV: ");
    _mssv = stdin.readLineSync();
    print("Enter diem toan: ");
    _toan = double.tryParse(stdin.readLineSync()!);
    print("Enter diem ly: ");
    _ly = double.tryParse(stdin.readLineSync()!);
    print("Enter diem hoa ");
    _hoa = double.tryParse(stdin.readLineSync()!);
  }

  double DTB() {
    return (this._toan! + this._ly! + this._hoa!) / 3;
  }

  void writeInf() {
    print("Ho: $_ho");
    print("Thu lot: $_thulot");
    print("ten: $_ten");
    print("MSSV: $_mssv");
    print("Diem toan: $_toan");
    print("Diem Ly: $_ly");
    print("Diem hoa: $_hoa");
    print("Diem trung binh : $_tb");
  }
}

void main() {
  Student student = Student("hoang", "bao", "long", "106210049", 9, 9, 9);
  student._tb = student.DTB();
  student.writeInf();
  print("Xu ly nhap thong tin");
  student.enterInf();
  student._tb = student.DTB();
  student.writeInf();
}
