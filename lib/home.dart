import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_preference extends StatefulWidget {
  const Shared_preference({super.key});

  @override
  State<Shared_preference> createState() => _Shared_preferenceState();
}

class _Shared_preferenceState extends State<Shared_preference> {
  var name=TextEditingController();
  var email=TextEditingController();
  var password=TextEditingController();
  var phone=TextEditingController();
  var department=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 30),
                child: Text('Name'),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 5),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
            ],
          ),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Text('Department'),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 5),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: department,
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
            ],
          ),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Text('Email'),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 5),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
            ],
          ),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Text('Password'),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 5),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
            ],
          ),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Text('Phone No'),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 5),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: phone,
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    name.clear();
                    department.clear();
                    email.clear();
                    password.clear();
                    phone.clear();
                  });
                }, child: Text('Cancel')),
              ),
              Padding(
            padding: const EdgeInsets.only(top: 20,left: 120),
            child: ElevatedButton(onPressed: () async {
             final pref= await  SharedPreferences.getInstance();
              pref.setString('name', name.text);
              pref.setString('department', department.text);
              pref.setString('email', email.text);
              pref.setString('password', password.text);
              pref.setString('phone', phone.text);
          
              var nm=pref.getString('name');
              var dep=pref.getString('department');
              var eml=pref.getString('email');
              var pass=pref.getString('password');
              var ph=pref.getString('phone');
          
              print(nm);
              print(dep);
              print(eml);
              print(pass);
              print(ph);
            }, child: Text('Submit')),
          )
            ],
          ),
          
        ],
      ),
    );
  }
}