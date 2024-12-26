import 'package:feature_first/common/global/functions/global_functions.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class ConversionDialog extends HookWidget {
  const ConversionDialog({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = useTextEditingController();
    final result = useState<String>("");
    final selectedConversion = useState<String>("CelsiusToFahrenheit");

    void convert() {
      result.value = GlobalFunctions.unitConverter(
          input: textController.text,
          conversionType: selectedConversion.value
      );
    }

    return AlertDialog(
      title: Text(
          "Temperature Conversion",
        style: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.bold
        ),
      ),

      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          TextField(
            controller: textController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Enter value",
              border: OutlineInputBorder(),
            ),
          ),

          gap8,

          DropdownButton<String>(
            value: selectedConversion.value,
            items: const [
               DropdownMenuItem(
                value: "CelsiusToFahrenheit",
                child: Text("Celsius to Fahrenheit"),
              ),
               DropdownMenuItem(
                value: "FahrenheitToCelsius",
                child: Text("Fahrenheit to Celsius"),
              ),
            ],
            onChanged: (value) => selectedConversion.value = value!

          ),

          gap8,

          ElevatedButton(
            onPressed: convert,
            child: const Text("Convert"),
          ),

          if (result.value.isNotEmpty)
            Padding(
              padding: padding8,
              child: Text(
                "Result: ${result.value}",
                style: TextStyle(
                    fontSize: 7.sp,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

        ],
      ),

      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Close"),
        ),
      ],

    );
  }
}