import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
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
            height: 20,
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
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                controller: tabController,
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                tabs: const [
                  Tab(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Tab(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                // Login Tab Content
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Handle login button press
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ),

                // Sign Up Tab Content
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email address',
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Handle sign-up button press
                        },
                        child: const Text('Sign Up'),
                      ),
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
