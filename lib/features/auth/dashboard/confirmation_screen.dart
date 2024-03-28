import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krypt/features/components/shared/app_button.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/theme/colors.dart';

@RoutePage(name: 'ConfirmationScreenRoute')
class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: green100,
              ),
              child: Center(child: AppIcons.icCheck),
            ),
            Text(
              'Swap Successful',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 20,
                  fontFamily: GoogleFonts.publicSans().fontFamily,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height / 4,
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
                        'from',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 10,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: grey500),
                      ),
                      Text(
                        '12BTC',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 16,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recieved',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 10,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: grey500),
                      ),
                      Text(
                        '212.63658',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 16,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Type',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 10,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: grey500),
                      ),
                      Text(
                        'Market',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 16,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
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
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 10,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: grey500),
                      ),
                      Text(
                        '\$0',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 16,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
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
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 10,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: grey500),
                      ),
                      Text(
                        'No rewards',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 16,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
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
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 10,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: grey500),
                      ),
                      Text(
                        '1BTC ~ 19.26ETH',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 16,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffF5CF5C), width: 1.0),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Earn Krystals',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 14,
                                fontFamily: GoogleFonts.publicSans().fontFamily,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Earn krystals when you make payments \nup to \$100 to merchants using our platform',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 10,
                                fontFamily: GoogleFonts.publicSans().fontFamily,
                                fontWeight: FontWeight.w500,
                                color: grey500),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Learn more',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                fontFamily: GoogleFonts.publicSans().fontFamily,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                      ),
                    ],
                  ),
                  AppIcons.icCoinIcon
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style:
                        TextButton.styleFrom(side: BorderSide(color: grey800)),
                    onPressed: () {},
                    child: Text(
                      'View History',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14,
                          fontFamily: GoogleFonts.publicSans().fontFamily,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: grey800),
                    onPressed: () {},
                    child: Text(
                      'Done',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14,
                          fontFamily: GoogleFonts.publicSans().fontFamily,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
