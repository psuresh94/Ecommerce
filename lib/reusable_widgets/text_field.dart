import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget reUsabulTextFormField(String label, String hint,String email, controlle) {
  return TextFormField(
    controller: controlle,
    autofocus: false,
    style: TextStyle(fontSize: 15.0, color: Colors.black),
    decoration: InputDecoration(
      border: InputBorder.none,
      labelText: label,
      hintText: email,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.all(8.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(10.0),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

MaterialButton longButtons(String title, Function fun,
    {Color color: const Color(0xfff063057), Color textColor: Colors.white}) {
  return MaterialButton(
    onPressed:(){
      fun;
    } ,
    textColor: textColor,
    color: color,
    child: SizedBox(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    ),
    height: 45,
    minWidth: 600,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );
}

label(String title) => Text(title);

InputDecoration buildInputDecoration(String hintText, IconData icon) {
  return InputDecoration(
    prefixIcon: Icon(icon, color: Color.fromRGBO(50, 62, 72, 1.0)),
    // hintText: hintText,
    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
  );
}


