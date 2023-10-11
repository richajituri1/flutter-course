import 'package:flutter/material.dart';
import 'package:rolldice/dice_roller.dart';


class GradientContainer extends StatelessWidget {
    const GradientContainer(this.color1, this.color2, {super.key});

    final Color color1;
    final Color color2;
    

    @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: Center(
        child: DiceRoller(),
    
      ),
);
}
//const GradientContainer({super.key, required this.colors});
  
//   final List<Color> colors;
//   @override
//   Widget build(context){
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         )
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//     ),
//   );
// }
}

