import 'package:flutter/material.dart';
import 'package:garden_login_register/Daftar.dart';
import 'package:garden_login_register/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/a.png"))),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Green Garden",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Go Green",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Sidoarjo",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Masuk ke email anda",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Username",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              ),
              Container(
                margin: EdgeInsets.only(top: 9, bottom: 20),
                height: 50,
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xff1F782B)),
                        borderRadius: BorderRadius.circular(20)),
                    disabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xff1F782B)),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xff1F782B)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xff1F782B)),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6, bottom: 9),
                child: Text("Password",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xff1F782B)),
                        borderRadius: BorderRadius.circular(20)),
                    disabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xff1F782B)),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xff1F782B)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xff1F782B)),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xff1F782B),
                    borderRadius: BorderRadius.circular(15)),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.lightGreen,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return Home();
                      })));
                    },
                    child: Center(
                        child: Text(
                      "Masuk",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text("Belum memiliki akun ?"),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return Daftar();
                          })));
                        },
                        child: Text(
                          "Daftar",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
