import 'package:bmi_app/result_view.dart';
import 'package:bmi_app/widgets/app_colors.dart';
import 'package:flutter/material.dart';
 

class BodymassView extends StatefulWidget {
  const BodymassView({super.key});

  @override
  State<BodymassView> createState() => _BodymassViewState();
}

class _BodymassViewState extends State<BodymassView> {
  int weight = 70;
  int age = 25;
  int height = 170;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    // final MyWidth = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          'BMI',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: (isMale)
                                ? AppColors.primery
                                : AppColors.conterinBg,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: AppColors.white,
                                size: 80,
                              ),
                              const Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: (!isMale)
                                ? AppColors.primery
                                : AppColors.conterinBg,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: AppColors.white,
                                size: 80,
                              ),
                              const Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //haight
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.conterinBg,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        thumbColor: AppColors.primery,
                        activeColor: AppColors.primery,
                        inactiveColor: AppColors.buttonColr,
                        min: 120,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.conterinBg,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Wight',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                  fontSize: 30,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: const Icon(Icons.remove),
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.buttonColr,
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: const Icon(Icons.add),
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.buttonColr,
                                    foregroundColor: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.conterinBg,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  fontSize: 30,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: const Icon(Icons.remove),
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.buttonColr,
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: const Icon(Icons.add),
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.buttonColr,
                                    foregroundColor: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    double result = weight / ((height / 100) * (height / 100));
                    // print((MyWidth * 2).toString());
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResultView(
                              result: result,
                            )));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primery,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Calculate')),
            )
          ],
        ),
      ),
    );
  }
}
