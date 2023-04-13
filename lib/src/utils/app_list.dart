import 'package:book_tiket/src/features/hotel/models/hotel_model.dart';
import 'package:book_tiket/src/features/ticket/model/ticket_monday_model.dart';

List<HotelModel> hotelList = [
  HotelModel(
      idHotel: '1',
      nameHotel: 'Lotte Hotel Hanoi',
      img: 'a1.png',
      location: 'Ba Đình, Hà Nội',
      price: '2.800.000',
      rating: '4.2',
      detail:
          'Nằm gần các địa danh như Lăng Chủ Tịch Hồ Chí Minh (2,3 km) và Văn Miếu Quốc Tử Giám (2,4 km) đã làm Lotte Hotel Hanoi trở thành lựa chọn lý tưởng khi đến Hà Nội.',
      likeFeedback: '1.200',
      disklikeFeedback: '230'),
  HotelModel(
      idHotel: '2',
      nameHotel: 'JW Marriott Hotel Hanoi',
      img: 'a2.png',
      location: ' Do Duc Duc Road ME Tri, Từ Liêm, Hà Nội',
      price: '3.200.000',
      rating: '4.8',
      detail:
          'Khách sạn sang trọng nằm trong tòa nhà ven hồ đẹp mắt, cách Trung tâm Hội nghị Quốc gia Việt Nam 8 phút đi bộ, cách khu Phố cổ sôi động 9 km và cách Sân bay Quốc tế Nội Bài 27 km.',
      likeFeedback: '4.200',
      disklikeFeedback: '130'),
  HotelModel(
      idHotel: '3',
      nameHotel: 'Hanoi Daewoo Hotel',
      img: 'a3.png',
      location: ' Kim Mã, Ngọc Khánh, Ba Đình, Hà Nộ',
      price: '1.600.000',
      rating: '4.5',
      detail:
          'Khách sạn cao cấp này nằm trong một khu thương mại và ngoại giao sang trọng, cách Lăng Chủ tịch Hồ Chí Minh 3 km và Hoàng Thành Thăng Long 4 km.',
      likeFeedback: '3.200',
      disklikeFeedback: '430'),
];

List<TicketMondayModel> ticketList = [
  TicketMondayModel(
      macb: "1",
      tenmb: "VietNamAriline",
      plane_no: "VN0311",
      ngaydi: DateTime.parse('2023-04-06'),
      giodi: "18:00",
      ngayden: DateTime.parse('2023-04-06'),
      gioden: "20:00",
      sanbaydi: "Nội Bài",
      maSanbaydi: "NB",
      sanbayden: "Tân Sơn NHất",
      maSanbayden: "TSN",
      duration: "2h",
      status: ""),
  TicketMondayModel(
      macb: "2",
      tenmb: "VietJet",
      plane_no: "VJT211",
      ngaydi: DateTime.parse('2023-04-06'),
      giodi: "10:00",
      ngayden: DateTime.parse('2023-04-06'),
      gioden: "12:00",
      sanbaydi: "Nội Bài",
      maSanbaydi: "NB",
      sanbayden: "Đà Nắng",
      maSanbayden: "DN",
      duration: "1h30m",
      status: ""),
  TicketMondayModel(
      macb: "3",
      tenmb: "VN2098",
      plane_no: "VNA211",
      ngaydi: DateTime.parse('2023-04-06'),
      giodi: "12:00",
      ngayden: DateTime.parse('2023-04-06'),
      gioden: "14:00",
      sanbaydi: "Nội Bài",
      maSanbaydi: "NB",
      sanbayden: "Đà Nắng",
      maSanbayden: "DN",
      duration: "1h30m",
      status: ""),
];
