import 'package:flutter_test/flutter_test.dart';
import 'package:utils_flutter/extensions/string_extensions.dart';


void main() {
  // test('adds one to input values', () {
  //   final calculator = Calculator();
  //   expect(calculator.addOne(2), 3);
  //   expect(calculator.addOne(-7), -6);
  //   expect(calculator.addOne(0), 1);
  // });

  test("Testing Strings extensions", () async{
      var name = "Diego";
      print(name.capitalize);
      print(name.isNullOrEmpty);
  });
}