import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  //final _formKey = GlobalKey<FormState>();
  //final TextEditingController _emailController = TextEditingController();
  //final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
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
            width: 450,
            height: 150,
            padding: const EdgeInsets.only(top: 74, left: 15),
            child: Row(
              children: [
                const Image(
                  image: AssetImage("assets/images/logo_title.png"),
                  width: 169.15,
                  height: 74,
                ),
                const SizedBox(
                  width: 150,
                ),
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
                const SizedBox(
                  width: 0,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 450,
            height: 65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 190),
                  child: Text(
                    "Login to Account",
                    style: TextStyle(
                      fontFamily: "interBold",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 25,
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
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 247, 247),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: [
                        TabBar(
                          unselectedLabelColor: Colors.black,
                          indicatorColor:
                              const Color.fromRGBO(255, 255, 255, 1),
                          indicatorWeight: 2,
                          labelColor: Colors.redAccent,
                          indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          controller: tabController,
                          //isScrollable: true,
                          //labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                          tabs: const [
                            Tab(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
