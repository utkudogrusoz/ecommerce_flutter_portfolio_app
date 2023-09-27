import 'package:ecommerce_portolio_app/feature/auth/viewmodel/auth_view_model.dart';
import 'package:ecommerce_portolio_app/feature/auth/widget/card/social_account_card.dart';
import 'package:ecommerce_portolio_app/widget/button/custom_button.dart';
import 'package:ecommerce_portolio_app/widget/text/auth_title_text.dart';
import 'package:ecommerce_portolio_app/widget/textfield/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _authViewModel = ChangeNotifierProvider<AuthViewModel>((ref) {
  return AuthViewModel();
});

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        print(ref.read(_authViewModel).loginTextEditingController!.text);
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: const AuthTitleText(
                title: 'Login',
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              scrolledUnderElevation: 0,
              toolbarHeight: 50,
              collapsedHeight: 50,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 73,
                  ),
                  AuthTextField(
                    labelText: 'Email',
                    textEditingController:
                        ref.read(_authViewModel).loginTextEditingController,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AuthTextField(
                    labelText: 'Password',
                    textEditingController:
                        ref.read(_authViewModel).passwordTextEditingController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      onTap: () {
                        print('Şifremi Unuttum');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot your password?',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .color,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: CustomButton(
                      onPressed: () {
                        ref.read(_authViewModel).loginAccount(context: context);
                      },
                      text: 'LOGIN',
                    ),
                  ),
                  const SizedBox(
                    height: 194,
                  ),
                  Center(
                    child: Text(
                      'Or login with social account',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.titleMedium!.color,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialAccountCard(
                        iconName: 'google_icon.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SocialAccountCard(
                        iconName: 'facebook_icon.png',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
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
