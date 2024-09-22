// Họ và tên: Hoàng Bảo Long
// MSSV: 106210049
// Lớp: 21KTMT
void main() {
  var a = 10;
  final b = 11;
  const c = 12;
  print("a: $a");
  print("b: $b");
  print("c: $c");
  a = 20;
  b = 22;
  c = 23;
  print("a: $a");
  print("b: $b");
  print("c: $c");
}
// Kiểm tra sự thay đổi giá trị của các biến trên:
/*
- Đầu tiên khi ta khởi tạo giá trị a=10,b=11,c=12 thì in ra màn 
hình thì giá trị lần lượt sẽ là a=10,b=11,c=12.
- Sau đó ta sẽ tiến hành đổi giá trị bằng cách gán các biến trên
với giá trị mới a=20,b=22,c=23.
- Khi ta compile chạy chương trình thì xảy ra 2 lỗi sau:
+ Error: Can't assign to the final variable 'b'.
+Error: Can't assign to the const variable 'c'.
Và 2 lỗi trên là lỗi  không thể thay đổi giá trị đối với biến kiểu
final với const. Đây là 2 kiểu dữ liệu không thể thay đổi giá trị 
xuyên suốt chương trình.Còn đối với biến a kiểu var thì có thể thay đổi
giá trị trong xuyên suốt chương trình.
*/