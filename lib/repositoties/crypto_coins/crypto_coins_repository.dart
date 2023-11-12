import 'package:crypto/repositoties/crypto_coins/models/crypto_coin_model.dart';
import 'package:dio/dio.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,XRP,ATOM,TRON,ADA,DOT,GAS,SOL&tsyms=USD,RUB');

    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final rubData =
          (e.value as Map<String, dynamic>)['RUB'] as Map<String, dynamic>;
      final priceUSD = usdData['PRICE'];
      final priceRUB = rubData['PRICE'];
      final imageUrl = usdData['IMAGEURL'];
      return CryptoCoin(
          name: e.key,
          priceUSD: priceUSD,
          priceRUB: priceRUB,
          imageUrl: 'https://www.cryptocompare.com/$imageUrl');
    }).toList();
    return cryptoCoinsList;
  }
}
