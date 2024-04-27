import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../configs/routes.dart';
import '../../../util/constants.dart';
import '../../../bloc/cubit/auth_cubit.dart';
import '../../widgets/base widgets/button_widget.dart';
import '../../../configs/utils/helpers/snackbar_helper.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  bool isisLoginScreen = true;
  bool tokens = false;

  getToken() {
    setState(() {
      nameController.clear();
      emailController.clear();
      passwordController.clear();
      cpasswordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushReplacementNamed(context, AppRoutes.mainScreen);
              SnackbarHelper.showSnackbar(context, state.msg);
            } else if (state is AuthFailure) {
              SnackbarHelper.showSnackbarWithContent(
                context,
                errorSnackBarWidget(state),
                isError: true,
              );
            }
          },
          builder: (context, state) {
            return Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Gap(50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          // Add more validation rules for email format if needed
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          hintText: 'Enter your name',
                        ),
                      ),
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          // Add more validation rules for email format if needed
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Enter valid email id as abc@gmail.com',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          // Add more validation rules for email format if needed
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter secure password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: cpasswordController,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your confirm password';
                          }
                          // Add more validation rules for email format if needed
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm password',
                          hintText: 'Enter secure password',
                        ),
                      ),
                    ),
                    const Gap(10),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        if (state is AuthLoading) {
                          return const CircularProgressIndicator();
                        }
                        return BaseButton(
                          onpressed: () async {
                            // await context.read<AuthCubit>().register(
                            //     nameController.text,
                            //     emailController.text,
                            //     passwordController.text,
                            //     cpasswordController.text);
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, perform registration
                              context.read<AuthCubit>().register(
                                    nameController.text,
                                    emailController.text,
                                    passwordController.text,
                                    cpasswordController.text,
                                  );
                            }
                          },
                          bgColor: kPrimaryOrange,
                          label: "Register",
                        );
                      },
                    ),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        if (state is AuthLoading) {
                          return Container();
                        }
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text("Already have an account?"),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, AppRoutes.loginScreen);
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(color: Colors.purple),
                                ))
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget errorSnackBarWidget(AuthFailure state) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.msg.length,
      itemBuilder: (BuildContext context, int i) {
        return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kWhiteBG,
            ),
            width: 10,
            height: 10,
          ),
          const Gap(5),
          SizedBox(
            width: 348,
            child: Text(
              state.msg[i],
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ]);
      },
    );
  }
}
