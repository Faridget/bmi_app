import 'package:bmi_app/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.result});
  final double result;

  String getClassificaitons() {
    if (result < 16) {
      return 'Severe Thinness نحافة شديدة';
    } else if (result > 16 && result <= 17) {
      return 'Moderate Thinness نحافة متوسطة';
    } else if (result > 17 && result <= 18.5) {
      return 'Mild Thinness نحافة خفيفة';
    } else if (result > 18.5 && result <= 25) {
      return 'Normal عادي';
    } else if (result > 25 && result <= 30) {
      return 'Overweight وزن زائد';
    } else if (result > 30 && result <= 35) {
      return 'Obese Class I سمنة درجة أولى';
    } else if (result > 35 && result <= 40) {
      return 'Obese Class II	 سمنة درجة ثانية';
    } else {
      return 'Obese Class III	 سمنة درجة ثالثة';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          foregroundColor: AppColors.white,
        ),
        backgroundColor: AppColors.backgroundColor,
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Result',
              style: TextStyle(color: AppColors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.conterinBg,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/BMI.png',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        getClassificaitons(),
                        style:
                            const TextStyle(color: Colors.green, fontSize: 25),
                      ),
                      Text(
                        result.toStringAsFixed(2),
                        style:
                            TextStyle(color: AppColors.primery, fontSize: 30),
                      ),
                    ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    // print((MyWidth * 2).toString());
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primery,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('ReCalculate')),
            ),
          ]),
        )));
  }
}
