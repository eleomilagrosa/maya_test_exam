import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:maya_test_exam/common/routes.dart';
import 'package:maya_test_exam/presentation/widget/custom_rounded_button.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextTheme get textTheme => Theme.of(context).textTheme;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Maya Exam"),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('\$${"50000".toPriceLabel.obscureText(_obscureText)}',
                          style: textTheme.displayLarge,
                        )
                      ),
                      IconButton(
                        onPressed: (){
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(!_obscureText
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash,)
                      ),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  Text("Total Savings",
                    style: textTheme.displaySmall,
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomRoundedButton(
                            buttonName: "Send Money",
                            icon: Icons.trending_up_rounded,
                            onTap: (){
                              context.goNamed(AppRoutes.SEND_MONEY_ROUTE_NAME);
                            }
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(
                        child: CustomRoundedButton(
                          buttonName: "History",
                          icon: Icons.history,
                          onTap: (){
                            context.goNamed(AppRoutes.TRANSACTION_HISTORY_ROUTE_NAME);
                          }
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
