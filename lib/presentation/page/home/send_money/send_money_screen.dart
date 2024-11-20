import 'package:flutter/material.dart';
import 'package:maya_test_exam/presentation/widget/custom_rounded_button.dart';
import 'package:maya_test_exam/presentation/widget/custom_text_form_field.dart';
import 'package:maya_test_exam/utilities/logger.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Send Money"),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: CustomTextFormField(
                      textFieldType: TextFieldType.number,
                      helperText: "Amount Help",
                      hintText: "Amount Hint",
                      helperMaxLines: 1,
                      onChanged: (value){

                      },
                      labelText: "Amount",
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomRoundedButton(
                            buttonName: "Send Money",
                            icon: Icons.trending_up_rounded,
                            onTap: (){
                              if (_formKey.currentState!.validate()) {
                                logger.debug("success");
                              }else{
                                logger.debug("fail");
                              }
                            }
                        ),
                      )
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
