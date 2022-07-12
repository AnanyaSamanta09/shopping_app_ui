import 'dart:core';

import '../model/cardmodel.dart';

List<CardModel> cardlist = [
  CardModel(image: 'assets/rewards.png'),
  CardModel(image: 'assets/spin_to_win.png'),
  CardModel(image: 'assets/lottery.webp')

];

List<Rewards> cardReward= [
  Rewards(image: 'assets/sneakers.jpg', text: 'Sneakers', desc: 'Show = Run and smile', price: '2,500'),
  Rewards(image: 'assets/Wrist_watch.jpg', text: 'Wrist Watch', desc: 'Shoe = Treat yourself', price: '22,300'),
  Rewards(image: 'assets/hairband.jpg', text: 'Hairband', desc: 'Show = looks good', price: '500')


];

List<Challenges> cardChallenges= [
  Challenges(image: 'assets/bulb.jpg'),
  Challenges(image: 'assets/ball.jpg'),
  Challenges(image: 'assets/gym.webp')
];