import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter101/product/language/language_item.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusnodeTextField = FocusNode();
  FocusNode focusnodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            
            textInputAction: TextInputAction.next,
            focusNode: focusnodeTextField,
            decoration: _InputDecorator().emailInputDecarator,
            inputFormatters: [
              TextInputRule()._formatter,
            ],
            autofillHints: const [AutofillHints.email],
            keyboardType: TextInputType.emailAddress,
            maxLength: 20,
          ),
          TextField(
            focusNode: focusnodeTextFieldTwo,
          ),
        ],
      ),
    );
  }
}

class TextInputRule {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == 'a') {
      return oldValue;
    }
    return oldValue;
  });
}

class _InputDecorator {
  final emailInputDecarator = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: languageItem.mailTitle,
  );
}
