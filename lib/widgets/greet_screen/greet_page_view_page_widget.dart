import 'package:flutter/material.dart';

class PageViewPageWidget extends StatelessWidget {
  const PageViewPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(height: 50),
        Icon(
          Icons.ac_unit_rounded,
          size: 200,
          color: Colors.blue,
        ),
        SizedBox(height: 80),
        Text(
          'Образовательные программы',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Подписки на образовательные программы от 490 руб/мес.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

// class aff extends StatelessWidget {
//   const aff({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return // Generated code for this PageView Widget...
//         Container(
//       width: double.infinity,
//       height: 500,
//       child: Stack(
//         children: [
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
//             child: PageView(
//               controller: _model.pageViewController ??=
//                   PageController(initialPage: 0),
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
//                         child: Icon(
//                           Icons.filter_vintage_outlined,
//                           color: FlutterFlowTheme.of(context).primary,
//                           size: 200,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//                         child: Text(
//                           'Образовательные программы',
//                           textAlign: TextAlign.center,
//                           style:
//                               FlutterFlowTheme.of(context).bodyMedium.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
//                         child: Text(
//                           'Подписки на образовательные программы от 490 руб/мес.',
//                           textAlign: TextAlign.center,
//                           style:
//                               FlutterFlowTheme.of(context).bodyMedium.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 16,
//                                   ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
//                         child: Icon(
//                           Icons.umbrella_rounded,
//                           color: FlutterFlowTheme.of(context).primary,
//                           size: 200,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//                         child: Text(
//                           'Образовательные программы',
//                           textAlign: TextAlign.center,
//                           style:
//                               FlutterFlowTheme.of(context).bodyMedium.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
//                         child: Text(
//                           'Подписки на образовательные программы от 490 руб/мес.',
//                           textAlign: TextAlign.center,
//                           style:
//                               FlutterFlowTheme.of(context).bodyMedium.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 16,
//                                   ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
//                         child: Icon(
//                           Icons.ac_unit_rounded,
//                           color: FlutterFlowTheme.of(context).primary,
//                           size: 200,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//                         child: Text(
//                           'Образовательные программы',
//                           textAlign: TextAlign.center,
//                           style:
//                               FlutterFlowTheme.of(context).bodyMedium.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
//                         child: Text(
//                           'Подписки на образовательные программы от 490 руб/мес.',
//                           textAlign: TextAlign.center,
//                           style:
//                               FlutterFlowTheme.of(context).bodyMedium.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 16,
//                                   ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
//                         child: Icon(
//                           Icons.color_lens_outlined,
//                           color: FlutterFlowTheme.of(context).primary,
//                           size: 200,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//                         child: Text(
//                           'Образовательные программы',
//                           textAlign: TextAlign.center,
//                           style:
//                               FlutterFlowTheme.of(context).bodyMedium.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
//                         child: Text(
//                           'Подписки на образовательные программы от 490 руб/мес.',
//                           textAlign: TextAlign.center,
//                           style:
//                               FlutterFlowTheme.of(context).bodyMedium.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 16,
//                                   ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Align(
//             alignment: AlignmentDirectional(0, 1),
//             child: Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//               child: smooth_page_indicator.SmoothPageIndicator(
//                 controller: _model.pageViewController ??=
//                     PageController(initialPage: 0),
//                 count: 4,
//                 axisDirection: Axis.horizontal,
//                 onDotClicked: (i) async {
//                   await _model.pageViewController!.animateToPage(
//                     i,
//                     duration: Duration(milliseconds: 500),
//                     curve: Curves.ease,
//                   );
//                 },
//                 effect: smooth_page_indicator.ExpandingDotsEffect(
//                   expansionFactor: 2,
//                   spacing: 8,
//                   radius: 16,
//                   dotWidth: 8,
//                   dotHeight: 8,
//                   dotColor: FlutterFlowTheme.of(context).accent2,
//                   activeDotColor: FlutterFlowTheme.of(context).primary,
//                   paintStyle: PaintingStyle.fill,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
