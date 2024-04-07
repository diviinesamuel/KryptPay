import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/components/dialogs/app_bottom_sheet.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/features/components/shared/custom_app_bar.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';

import '../../../generated/assets.dart';

@RoutePage(name: "SwapAssetsScreenRoute")
class SwapAssetsScreen extends StatelessWidget {
  const SwapAssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Swap assets',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4.2,
                  decoration: BoxDecoration(
                    border: Border.all(color: grey500, width: 0.5),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              Row(
                                children: [
                                  Text(
                                    'BTC',
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                        fontSize: 18,
                                        
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                  const Icon(Icons.keyboard_arrow_down_rounded)
                                ],
                              ),
                              Text(
                                'Balance: 0.234BTC',
                                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: grey400),
                              )
                            ]),
                            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                              Row(
                                children: [
                                  Text(
                                    '0',
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Text(
                                '~\$0',
                                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: grey400),
                              )
                            ]),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Stack(
                          children: [
                            const Divider(
                              thickness: 0.8,
                            ),
                            Positioned(bottom: 0, top: 0, left: 0, right: 0, child: AppIcons.icSwapBlack)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              Row(
                                children: [
                                  Text(
                                    'ETH',
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                  const Icon(Icons.keyboard_arrow_down_rounded)
                                ],
                              ),
                              Text(
                                'Balance: 0.234ETH',
                                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: grey400),
                              )
                            ]),
                            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                              Row(
                                children: [
                                  Text(
                                    '0',
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Text(
                                '~\$0',
                                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: grey400),
                              )
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            AppButton(
              height: 56,
              title: "Swap Assets",
              onPress: () {
                final size = context.size;
                showAppBottomSheet(
                    context: context,
                    heightPercent: 0.54,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Confirm Swap',
                                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                    fontSize: 20,
                                    
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.close_rounded))
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(Assets.imagesImgSolana),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'from',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: grey600),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '12BTC',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 16,
                                          
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                RotationTransition(
                                    turns: const AlwaysStoppedAnimation(90 / 360), child: AppIcons.icSwapBlack),
                                Column(
                                  children: [
                                    Image.asset(Assets.imagesImgSolana),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Receive',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 12,
                                          
                                          fontWeight: FontWeight.w500,
                                          color: grey600),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '212.63658',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 16,
                                          
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: BoxDecoration(
                              border: Border.all(color: grey500, width: 0.5),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Type',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: grey500),
                                    ),
                                    Text(
                                      'Market',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Fee',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 10,
                                          
                                          fontWeight: FontWeight.w600,
                                          color: grey500),
                                    ),
                                    Text(
                                      '\$0',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 16,
                                          
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Rewards',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 10,
                                          
                                          fontWeight: FontWeight.w600,
                                          color: grey500),
                                    ),
                                    Text(
                                      'No rewards',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 16,
                                          
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Swap Rate',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: grey500),
                                    ),
                                    Text(
                                      '1BTC ~ 19.26ETH',
                                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          AppButton(
                            title: 'Swap(1s)',
                            height: 56,
                            onPress: () {
                              //context.router.push(const ConfirmationScreenRoute());
                            },
                          )
                        ],
                      ),
                    ));
                // context.router.replace(const DashboardScreenRoute());
              },
            )
          ],
        ),
      ),
    );
  }
}
