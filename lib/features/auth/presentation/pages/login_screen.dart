import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:prime_shippa_company/common/primary_btn.dart';
import 'package:prime_shippa_company/common/text_box_widget.dart';
import 'package:prime_shippa_company/core/app_colors.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CurveClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 32, color: AppColors.whiteColor),
                      ),
                      Text(
                        'Login in System',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.whiteColor),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Column(
                children: [
                  TextBox(
                    fieldName: "email",
                    title: 'Email',
                    isRTL: false,
                    inputType: TextInputType.emailAddress,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(errorText: 'required'),
                      FormBuilderValidators.email(errorText: 'invalid_email')
                    ]),
                  ),
                  const Gap(16),
                  TextBox(
                    fieldName: "Password",
                    title: 'Password',
                    isRTL: false,
                    isPasswordField: true,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(errorText: 'required'),
                    ]),
                  ),
                  const Gap(64),
                  PrimaryButton(
                    label: 'Login',
                    hPadding: 72,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        //   final userData = _collectFormData();

                        //   // login user
                        //   context.read<AuthCubit>().login(
                        //         userData.email!,
                        //         userData.password!,
                        //       );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
