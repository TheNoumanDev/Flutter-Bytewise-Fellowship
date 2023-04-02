import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementapp/provider/SliderProvider.dart';

class SliderExampler extends StatefulWidget {
  const SliderExampler({super.key});

  @override
  State<SliderExampler> createState() => _SliderExamplerState();
}

class _SliderExamplerState extends State<SliderExampler> {
  @override
  Widget build(BuildContext context) {
    //final provider = Provider.of<sliderProvider>(context, listen: true);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<sliderProvider>(builder: (context, value, child) {
            return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setvalue(val);
                });
          }),
          Consumer<sliderProvider>(builder: ((context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red.withOpacity(value.value),
                    child: const Center(child: Text("Container 1")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green.withOpacity(value.value),
                    child: const Center(child: Text("Container 2")),
                  ),
                ),
              ],
            );
          }))
        ],
      ),
    );
  }
}
