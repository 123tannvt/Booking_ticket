class SeatClass {
  int? id;
  String? titile;
  String? subTitle;
  SeatClass({this.id, this.titile, this.subTitle});

  List<SeatClass> listSeat = [
    SeatClass(
        id: 1,
        titile: 'Economy',
        subTitle: 'Bay tiết kiệm, đáp ứng mọi nhu cầu cơ bản của bạn.'),
    SeatClass(
        id: 2,
        titile: 'Business',
        subTitle: 'Bay đẳng cấp, với quầy làm thủ tục và ghế ngồi riêng.'),
    SeatClass(
        id: 3,
        titile: 'Premium Economy',
        subTitle: 'Chi phí hợp với bữa ăn ngon và chỗ để chân rộng rãi.'),
  ];
}
