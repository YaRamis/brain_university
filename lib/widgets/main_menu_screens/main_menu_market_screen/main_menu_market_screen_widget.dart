import 'package:brain_university/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MainMenuMarketScreenWidget extends StatelessWidget {
  const MainMenuMarketScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 71),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: Container(
                      // height: 300,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 10),
                            color: Color.fromRGBO(0, 0, 0, 0.05),
                            blurRadius: 50,
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                color: const Color(0xFFE2E8FF),
                                height: 171,
                                width: double.infinity,
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 32, bottom: 16),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          decoration: BoxDecoration(
                                            color: AppColors.mainColor,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: const Text(
                                            '12 990 руб/мес',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Bazar',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: AppColors.mainColor,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  'Wildberries',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Поможет разобраться в принципах успешной работы на маркетплейсах: что продавать, как находить клиетов, чем выделиться на фоне конкурентов, как начать делегировать задачи и др.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: AppColors.textColor,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  children: [
                                    Container(
                                      height: 32,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(
                                          right: 12, left: 10),
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 199, 0, 0.2),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.star_rounded,
                                            size: 19,
                                            color:
                                                Color.fromRGBO(255, 199, 0, 1),
                                          ),
                                          SizedBox(width: 7),
                                          Text(
                                            '4,0',
                                            style: TextStyle(
                                              color: AppColors.textColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Container(
                                      height: 32,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(
                                          right: 12, left: 10),
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              65, 104, 245, 0.1),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.people_rounded,
                                            size: 19,
                                            color:
                                                Color.fromRGBO(65, 104, 245, 1),
                                          ),
                                          SizedBox(width: 7),
                                          Text(
                                            '164',
                                            style: TextStyle(
                                              color: AppColors.textColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Container(
                                      height: 32,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(
                                          right: 12, left: 10),
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              68, 68, 68, 0.05),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.article_rounded,
                                            size: 19,
                                            color:
                                                Color.fromRGBO(68, 68, 68, 1),
                                          ),
                                          SizedBox(width: 7),
                                          Text(
                                            '59 статей',
                                            style: TextStyle(
                                              color: AppColors.textColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 32,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                              color: const Color(0xFFFA5E78),
                              borderRadius: BorderRadius.circular(16)),
                          child: const Text(
                            'Скидка 25%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 66),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFCFCFC), Color(0x00FCFCFC)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.6, 1],
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 10),
                              color: Color.fromRGBO(0, 0, 0, 0.05),
                              blurRadius: 50,
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(top: 32, left: 20),
                            suffixIcon: MaterialButton(
                              height: 48,
                              minWidth: 48,
                              shape: const CircleBorder(),
                              color: Colors.white,
                              elevation: 0,
                              highlightElevation: 0,
                              highlightColor: Colors.transparent,
                              onPressed: () => {},
                              child: const Icon(
                                Icons.mic_rounded,
                                size: 30,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            hintText: 'Поиск',
                            hintStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.secondaryColor,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: AppColors.textColor),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          color: Color.fromRGBO(0, 0, 0, 0.05),
                          blurRadius: 50,
                          spreadRadius: 0,
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    // child: CircleAvatar(
                    //   radius: 24,
                    //   backgroundColor: Colors.white,
                    //   foregroundColor: AppColors.secondaryColor,
                    //   child: IconButton(
                    //     onPressed: () {},
                    //     icon: const Icon(
                    //       Icons.filter_list_rounded,
                    //       size: 30,
                    //     ),
                    //   ),
                    // ),
                    child: MaterialButton(
                      height: 48,
                      minWidth: 48,
                      shape: const CircleBorder(),
                      color: Colors.white,
                      elevation: 0,
                      highlightElevation: 0,
                      highlightColor: Colors.transparent,
                      onPressed: () => {},
                      child: const Icon(
                        Icons.filter_list_rounded,
                        size: 30,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
