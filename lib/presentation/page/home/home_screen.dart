import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:maya_test_exam/common/colors.dart';
import 'package:maya_test_exam/common/constants.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/common/routes.dart';
import 'package:maya_test_exam/common/toast.dart';
import 'package:maya_test_exam/domain/usecase/get_user_details.dart';
import 'package:maya_test_exam/presentation/bloc/user/user_bloc.dart';
import 'package:maya_test_exam/presentation/page/error/error_screen.dart';
import 'package:maya_test_exam/presentation/widget/custom_rounded_button.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Maya Exam"),
      ),
      body: const Column(
        children: [
          CardUserWidget(),
        ],
      ),
    );
  }
}

class CardUserWidget extends StatefulWidget {
  const CardUserWidget({super.key});

  @override
  State<CardUserWidget> createState() => _CardUserWidgetState();
}

class _CardUserWidgetState extends State<CardUserWidget> {

  TextTheme get textTheme => Theme.of(context).textTheme;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      context.read<UserBloc>().add(const UserEvent.fetchUserDetails(Constants.userId));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if (state.userState == RequestState.error) {
          showToast(
              msg: state.errorMessageUser,
              backgroundColor: Colors.red,
              textColor: Colors.white);
        }
      },
      builder: (context, state) {
      if(state.userState == RequestState.loading){
        return const ErrorScreen();
      }else if(state.userState == RequestState.loading){
        return Container(
          margin: const EdgeInsets.only(top: 50),
          child: const SpinKitThreeBounce(
            size: 80,
            color: ColorLight.primary,
          ),
        );
      }else if(state.userState == RequestState.loaded){
        return Card(
          margin: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                          'PHP ${state.currentUser?.balance.toStringAsFixed(2).toPriceLabel.obscureText(_obscureText)}',
                          style: textTheme.displayLarge,
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(
                          !_obscureText
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Total Savings",
                  style: textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomRoundedButton(
                          buttonName: "Send Money",
                          icon: Icons.trending_up_rounded,
                          onTap: () {
                            context.goNamed(AppRoutes.SEND_MONEY_ROUTE_NAME);
                          }),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: CustomRoundedButton(
                          buttonName: "History",
                          icon: Icons.history,
                          onTap: () {
                            context.goNamed(
                                AppRoutes.TRANSACTION_HISTORY_ROUTE_NAME);
                          }),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }
      return Container();
      },
    );
  }
}

