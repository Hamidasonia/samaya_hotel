import 'package:flutter/material.dart';
import 'package:samaya_hotel/account/profil_page.dart';
import 'package:samaya_hotel/account/register_page.dart';
import 'package:samaya_hotel/account/setting_page.dart';

import 'forgot_password.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPage createState() => _AccountPage();
}

class _AccountPage extends State<AccountPage> {
  bool checkbox = false;

  late bool _isLogin;

  //pengecekan kondisi untuk login
  @override
  void initState() {
    super.initState();
    _isLogin = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //contoh implemen tornary condition
      body: _isLogin ? _buildLogin() : _buildLogout(),
    );
  }

  //kodingan Account Page
  Widget _buildLogin() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
            child: Stack(
              children: <Widget>[
                SizedBox(
                    height: 250,
                    child: Image.asset(
                      'images/Rectangle4_1.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    )),
                Positioned(
                  bottom: 60,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 190,
                    width: 190,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 65,
                  left: 0,
                  right: 0,
                  child: InkResponse(
                    onTap: () {},
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://assets.jalantikus.com/assets/cache/405/350/userfiles/2020/05/07/51-Custom-7f21c.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 65,
                    right: 115,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage('images/cameraicon.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
                Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 50,
                      child: Column(
                        children: const [
                          Center(
                            child: Text(
                              'budichan',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'janganlupatidur@gmail.com',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 280,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkResponse(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileAccount()));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 4),
                              color: Colors.black54,
                              blurRadius: 5,
                            ),
                          ]),
                      child: Stack(
                        children: const [
                          Positioned(
                            bottom: 13,
                            left: 15,
                            child: Text(
                              'Profile',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkResponse(
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )),
                          context: context,
                          builder: (context) => membershipSheet());
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 4),
                              color: Colors.black54,
                              blurRadius: 5,
                            ),
                          ]),
                      child: Stack(
                        children: const [
                          Positioned(
                            bottom: 13,
                            left: 15,
                            child: Text(
                              'Membership',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkResponse(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingAccount()));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 4),
                              color: Colors.black54,
                              blurRadius: 5,
                            ),
                          ]),
                      child: Stack(
                        children: const [
                          Positioned(
                            bottom: 13,
                            left: 15,
                            child: Text(
                              'Setting',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkResponse(
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => faqSheet());
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 4),
                              color: Colors.black54,
                              blurRadius: 5,
                            ),
                          ]),
                      child: Stack(
                        children: const [
                          Positioned(
                            bottom: 13,
                            left: 15,
                            child: Text(
                              'Faq',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
              height: 100,
              child: Column(
                children: <Widget>[
                  const Center(
                    child: Text(
                      'Samaya Hotel',
                      style: TextStyle(color: Colors.deepPurple, fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: Stack(
                      children: const <Widget>[
                        Positioned(
                            right: 150,
                            child: Text(
                              'v 1.0.1',
                              style: TextStyle(color: Colors.deepPurple),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        setState(() {
                          _isLogin = false;
                        });
                      },
                      child: const Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  //kodingan Login Page
  Widget _buildLogout() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 150,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Image.asset(
                  'images/Rectangle4.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 35,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 70,
                    child: InkResponse(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Stack(
                        children: const [
                          Align(
                            child: Text('Samaya Hotel',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 36)),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 115,
                            child: Text('v 1.0.1',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'Wellcome',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        SizedBox(
          height: 160,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(1, 4),
                                  blurRadius: 5,
                                  color: Colors.black54,
                                ),
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: 'Email'),
                            ),
                          )),
                    ),
                    const Positioned(
                      left: 20,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(1, 4),
                                  blurRadius: 5,
                                  color: Colors.black54,
                                ),
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password'),
                            ),
                          )),
                    ),
                    const Positioned(
                      left: 20,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
          child: Row(
            children: <Widget>[
              Checkbox(
                  activeColor: Colors.deepPurple,
                  value: checkbox,
                  onChanged: (value) {
                    setState(() {
                      checkbox = value!;
                    });
                  }),
              const Text('Remember Me')
            ],
          ),
        ),
        Expanded(flex: 3, child: Container()),
        Expanded(
            flex: 2,
            child: Stack(
              children: <Widget>[
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: <Widget>[
                        InkResponse(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPassword()));
                          },
                          child: const Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Don\'t have an account ?',
                                  style: TextStyle(fontSize: 18)),
                              const SizedBox(
                                width: 10,
                              ),
                              InkResponse(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterAccount()));
                                },
                                child: const Text('Sign Up',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.deepPurple)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            )),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: Center(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                setState(() {
                  _isLogin = true;
                });
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            )),
          ),
        ),
      ],
    );
  }
}

  //comingsoon button sheet
  Widget membershipSheet() => const Center(
      child: Text('Comingsoon'),
    );

  //faq button sheet
  Widget faqSheet() => ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const <Widget>[
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'sstandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. '),
              SizedBox(height: 10),
              Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
              SizedBox(height: 10),
              Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.'),
              SizedBox(height: 10),
              Text(
                  'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.')
            ],
          ),
        ),
      ],
    );
