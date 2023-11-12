import 'dart:math';

import 'package:crypto/repositoties/crypto_coins/models/crypto_coin_model.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imageUrl),
      trailing: const Icon(
        Icons.add_shopping_cart_sharp,
      ),
      title: Text(coin.name, style: theme.textTheme.bodyMedium),
      subtitle: Text(
          "${coin.priceUSD.truncateToDecimalPlaces(2)} \$ / ${coin.priceRUB.truncateToDecimalPlaces(2)} руб. ",
          style: theme.textTheme.labelMedium),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coin,
        );
      },
    );
  }
}

extension TruncateDoubles on double {
  double truncateToDecimalPlaces(int fractionalDigits) =>
      (this * pow(10, fractionalDigits)).truncate() / pow(10, fractionalDigits);
}
