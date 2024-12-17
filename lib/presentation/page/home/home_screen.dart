import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maya_test_exam/common/colors.dart';
import 'package:maya_test_exam/common/constants.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/common/toast.dart';
import 'package:maya_test_exam/presentation/bloc/user/user_bloc.dart';
import 'package:maya_test_exam/presentation/page/error/error_screen.dart';
import 'package:maya_test_exam/presentation/page/home/home_screen_content.dart';

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

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<UserBloc>()
          .add(const UserEvent.fetchUserDetails(Constants.userId));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if (state.state == RequestState.error) {
          showToast(
              msg: state.errorMessage,
              backgroundColor: Colors.red,
              textColor: Colors.white);
        }
      },
      builder: (context, state) {
        if (state.state == RequestState.error) {
          return const ErrorScreen();
        } else if (state.state == RequestState.loading) {
          return Container(
            margin: const EdgeInsets.only(top: 50),
            child: const SpinKitThreeBounce(
              size: 80,
              color: ColorLight.primary,
            ),
          );
        } else if (state.state == RequestState.loaded) {
          return HomeScreenContent(
            user: state.currentUser,
          );
        }
        return Container();
      },
    );
  }
}
