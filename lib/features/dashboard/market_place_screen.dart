import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/logging/app_logger.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:search_field_autocomplete/search_field_autocomplete.dart';

import '../../../generated/assets.dart';
import '../../../util/theme/colors.dart';

@RoutePage(name: "MarketScreenRoute")
class MarketPlaceScreen extends StatelessWidget {
  const MarketPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Market'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SearchFieldAutoComplete<String>(
                placeholder: 'Search',
                suggestionsDecoration: SuggestionDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(color: Colors.red),
                ),
                onSuggestionSelected: (selectedItem) {
                  AppLogger.debug("selected: ${selectedItem.searchKey}");
                },
                suggestionItemBuilder: (context, searchFieldItem) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      searchFieldItem.searchKey,
                      style: TextStyle(color: Colors.blueGrey.shade900),
                    ),
                  );
                },
                suggestions: [],
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Image.asset(Assets.imagesImgSolana),
                        title: Text('Ethereum'),
                        subtitle: Text('ETH'),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '-\$25,555',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(fontSize: 12, color: Colors.black),
                              ),
                              Text(
                                '-0.6%',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: grey1000, minimumSize: Size(MediaQuery.of(context).size.width / 2.5, 56)),
                onPressed: () {
                  context.router.push(const SwapAssetsScreenRoute());
                },
                child: Row(
                  children: [
                    AppIcons.icSwap,
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Swap asset',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
