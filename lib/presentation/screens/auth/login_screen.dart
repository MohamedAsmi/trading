import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../configs/routes.dart';
import '../../../util/constants.dart';
import '../../../bloc/cubit/auth_cubit.dart';
import '../../widgets/base widgets/button_widget.dart';
import '../../../configs/utils/helpers/snackbar_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
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
      }, builder: (context, state) {
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }

                      return null;
                    },
                    controller: emailController,
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
                const Gap(10),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    if (state is AuthLoading) {
                      return const CircularProgressIndicator();
                    }
                    return BaseButton(
                      onpressed: () async {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthCubit>().login(
                              emailController.text, passwordController.text);
                        }
                      },
                      bgColor: kPrimaryOrange,
                      label: "Login",
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
                        const Text("Don't you have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, AppRoutes.registerScreen);
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(color: Colors.purple),
                            ))
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        );
      })),
    );
  }

  Widget errorSnackBarWidget(AuthFailure state) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.msg.length,
      itemBuilder: (BuildContext context, int i) {
        return Row(children: [
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
