import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final userController = TextEditingController();
  final passController = TextEditingController();
  late FocusNode userFocusNode;
  late FocusNode passFocusNode;
  final _formKeyPass = GlobalKey<FormState>();
  final _formKeyUser = GlobalKey<FormState>();
  String resUser = '';
  String resPass = '';
  @override
  void initState() {
    super.initState();
    userController.addListener(_printLatesValue);
    // passController.addListener(_printLatesValue);
    userFocusNode = FocusNode();
    passFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    userController.dispose();
    passController.dispose();
    userFocusNode.dispose();
    passFocusNode.dispose();
  }

  void _printLatesValue() {
    final text = userController.text;
    print('Second text field: $text (${text.characters.length})');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //username
          Form(
            key: _formKeyUser,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Input your text',
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 20,
                      color: Colors.blue,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: userController,
                focusNode: userFocusNode,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nhap ten di';
                  }
                  return null;
                },
                autofocus: true,
                onChanged: (value) {
                  setState(
                    () {
                      resUser = value;
                    },
                  );
                },
              ),
            ),
          ),
          // password
          Form(
            key: _formKeyPass,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Input your password',
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 20,
                      color: Colors.blue,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: passController,
                focusNode: passFocusNode,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nhap data di';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(
                    () {
                      resPass = value;
                    },
                  );
                },
              ),
            ),
          ),
          // button login
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  _formKeyPass.currentState!.validate();
                  _formKeyUser.currentState!.validate();
                  if (_formKeyUser.currentState!.validate() &&
                      _formKeyPass.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Loading Data'),
                      ),
                    );
                  } else if (!_formKeyUser.currentState!.validate()) {
                    userFocusNode.requestFocus();
                  } else {
                    passFocusNode.requestFocus();
                  }
                },
                child: const Text('Login'),
              ),
            ),
          ),
          Text('Tên đăng nhập và mật khẩu là: $resUser'),
          const SizedBox(
            height: 10,
          ),
          Text('Username: $resUser'),
          const SizedBox(
            height: 10,
          ),
          Text('Passsword: $resPass'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(userController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
