import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  AppIcons._();

  static Widget icGoogle = SvgPicture.asset("assets/icons/ic_google.svg");
  static Widget icCheck = SvgPicture.asset("assets/icons/ic_check.svg");
  static Widget icSwap = SvgPicture.asset("assets/icons/ic_swap.svg");
  static Widget icSolana = SvgPicture.asset("assets/icons/ic_solana.svg");
  static Widget icSwapBlack = SvgPicture.asset("assets/icons/ic_swap_black.svg");
  static Widget icCoinIcon = SvgPicture.asset("assets/icons/ic_coin_icon.svg");

  // Bottom Nav Icons
  static Widget icHistorySelected = SvgPicture.asset("assets/icons/ic_history_selected.svg");
  static Widget icHistoryUnSelected = SvgPicture.asset("assets/icons/ic_history_unselected.svg");
  static Widget icHomeSelected = SvgPicture.asset("assets/icons/ic_home_selected.svg");
  static Widget icHomeUnSelected = SvgPicture.asset("assets/icons/ic_home_unselected.svg");
  static Widget icMarketUnSelected = SvgPicture.asset("assets/icons/ic_market_unselected.svg");
  static Widget icMarketSelected = SvgPicture.asset("assets/icons/ic_market_selected.svg");
  static Widget icUserUnSelected = SvgPicture.asset("assets/icons/ic_user_unselected.svg");
  static Widget icQrCodeScanner = SvgPicture.asset("assets/icons/ic_qr_code.svg");
  static Widget icTwoCoins = SvgPicture.asset("assets/icons/ic_two_coins.svg");
  static Widget icOutgoing = SvgPicture.asset("assets/icons/ic_outgoing.svg");

  static Widget icChevronDown = SvgPicture.asset(
    "assets/icons/ic_chevron_down.svg",
    fit: BoxFit.cover,
  );
}
