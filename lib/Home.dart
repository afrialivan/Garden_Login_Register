import 'package:flutter/material.dart';
import 'package:garden_login_register/Daftar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
              // iconTheme: IconThemeData(color: Color(0xff1F782B), size: 30),
              backgroundColor: Colors.transparent,
              elevation: 0,
              flexibleSpace: SafeArea(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 82,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/a.png"))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                      )
                    ],
                  ),
                ),
              )),
        ),
        body: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 210,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://source.unsplash.com/random/350x210"))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                    ),
                    // Center(
                    //   child: ElevatedButton(
                    //       onPressed: () {},
                    //       child: Text("Oi"),
                    //       style: ElevatedButton.styleFrom(
                    //           primary: Color(0xff1F782B),
                    //           onPrimary: Colors.white,
                    //           shadowColor: Colors.black,
                    //           minimumSize: Size(360, 45),
                    //           elevation: 5,
                    //           shape: StadiumBorder())),
                    // ),
                    // Center(
                    //   child: ElevatedButton(
                    //       onPressed: () {},
                    //       child: Text("Oi"),
                    //       style: ElevatedButton.styleFrom(
                    //           primary: Colors.white,
                    //           onPrimary: Color(0xff1F782B),
                    //           shadowColor: Colors.black,
                    //           minimumSize: Size(360, 45),
                    //           elevation: 5,
                    //           shape: StadiumBorder())),
                    // ),
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
                            Navigator.pop(context);
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
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff1F782B)),
                          color: Colors.transparent,
                          // border: OutlinedBorder(side: col),
                          borderRadius: BorderRadius.circular(15)),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.lightGreen,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return Daftar();
                            })));
                          },
                          child: Center(
                              child: Text(
                            "Daftar",
                            style: TextStyle(color: Color(0xff1F782B)),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
