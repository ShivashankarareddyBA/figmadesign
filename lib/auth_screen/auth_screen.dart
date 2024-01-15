import 'package:figmadesign/tabbar_pages/login.dart';
import 'package:figmadesign/tabbar_pages/sign_up.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);

    tabController.addListener(() {
      if (!mounted) return;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 90, left: 15),
            child: Row(children: [
              const Image(
                image: AssetImage("assets/images/logo_title.png"),
                width: 169.15,
                height: 74,
              ),
              const Spacer(),
              Container(
                width: 22,
                height: 22,
                margin: const EdgeInsets.only(bottom: 27),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/ellipse.jpg"),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 175),
                child: Text(
                  "Login to Account",
                  style: TextStyle(
                    fontFamily: "inter",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: RichText(
                  text: const TextSpan(
                    text: "Hello, Welcome Back to our Account",
                    style: TextStyle(
                      fontFamily: "interBold",
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Your existing code for the logo and headers...

          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            width: 450,
            //height: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Your existing code for the login header...
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 390,
                  color: const Color.fromARGB(255, 245, 243, 243),
                  child: TabBar(
                    labelColor: Colors.red,
                    //splashBorderRadius: BorderRadius.circular(10),
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white70,

                      //backgroundBlendMode: BlendMode.overlay,
                    ),

                    //unselectedLabelColor: Colors.red,
                    controller: tabController,
                    tabs: const [
                      Tab(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: "inter",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: "inter",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                    indicatorWeight: 6,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      // Your Login Page (imported from 'login.dart')
                      Login(),
                      // Your Sign Up Page (imported from 'sign_up.dart')
                      SignUp(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
