import 'package:book_tiket/src/features/search/widget/item_search_hotel.dart';
import 'package:book_tiket/src/shared_componets/shared_componets.dart';
import 'package:book_tiket/src/shared_componets/text_field/text_search.dart';
import 'package:book_tiket/src/utils/extension/format_date.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../../config/config.dart';

class SearchSCreen extends StatefulWidget {
  const SearchSCreen({super.key});
  static late StateSetter choosseDate;

  @override
  State<SearchSCreen> createState() => _SearchSCreenState();
}

class _SearchSCreenState extends State<SearchSCreen> {
  String? selectDateHotel;
  String? guestRoom;
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  DateTime selectDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectDate) {
      setState(() {
        selectDate = picked;
      });
    }
  }

  final List<dynamic> _option = [
    {
      'titile': 'Economy',
      'subtitle': 'Bay tiết kiệm, đáp ứng mọi nhu cầu cơ bản của bạn.'
    },
    {
      'titile': 'Business',
      'subtitle': 'Bay đẳng cấp, với quầy làm thủ tục và ghế ngồi riêng.'
    },
    {
      'titile': 'Premium Economy',
      'subtitle': 'Chi phí hợp với bữa ăn ngon và chỗ để chân rộng rãi.'
    }
  ];

  void _showModalSheet() {
    Object? selectValue;
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter stateSetter) {
            return Container(
              padding: const EdgeInsets.only(right: 10, left: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Container(
                      height: 5,
                      width: 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            11,
                          ),
                        ),
                        color: Palette.textColor,
                      ),
                    ),
                  ),
                  Box.h(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hạng ghế',
                        style: AppFont.t.w500.s(16),
                      ),
                      const Divider(
                        color: Palette.textColor,
                      )
                    ],
                  ),
                  Box.h(10),
                  Container(
                    color: Palette.white,
                    child: ListView.builder(
                        itemCount: _option.length,
                        itemBuilder: (context, index) {
                          return RadioListTile(
                            title: _option[index].titile,
                            subtitle: _option[index].sutitle,
                            value: index,
                            groupValue: selectValue,
                            onChanged: (val) {
                              setState(() {
                                selectValue = val;
                              });
                            },
                          );
                        }),
                  )
                ],
              ),
            );
          });
        });
  }

  @override
  void initState() {
    // context.context.read<SubjectBloc>()
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = AppLayout.getSize(context);
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Palette.bgColor,
        body: SizedBox(
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverSafeArea(
                      top: false,
                      sliver: SliverAppBar(
                        elevation: 0,
                        expandedHeight: 150,
                        backgroundColor: Palette.bgColor,
                        automaticallyImplyLeading: false,
                        flexibleSpace: FlexibleSpaceBar(
                          stretchModes: const [
                            StretchMode.zoomBackground,
                            StretchMode.blurBackground,
                            StretchMode.fadeTitle
                          ],
                          background: Container(
                            alignment: Alignment.topCenter,
                            width: size.width,
                            height: 100,
                            child: Column(
                              children: [
                                Text(
                                  'Bạn Đang',
                                  style: AppFont.t.black.w700.s(28),
                                ),
                                Box.h(5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Tìm kiếm gì?',
                                      style: AppFont.t.black.w700.s(28),
                                    ),
                                    Box.w(40),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        primary: true,
                        floating: true,
                        forceElevated: innerBoxIsScrolled,
                        bottom: TabBar(tabs: [
                          Tab(
                            icon: const Icon(
                              FontAwesomeIcons.planeDeparture,
                              color: Palette.primary,
                            ),
                            child: Text(
                              'vé Máy Bay',
                              style: AppFont.t.w500.primary,
                            ),
                          ),
                          Tab(
                            icon: const Icon(
                              FontAwesomeIcons.hotel,
                              color: Palette.primary,
                            ),
                            child: Text(
                              'Khách Sạn',
                              style: AppFont.t.primary.w500,
                            ),
                          )
                        ]),
                      ),
                    ),
                  )
                ];
              },
              physics: const NeverScrollableScrollPhysics(),
              body: TabBarView(
                children: [
                  ListView(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(20),
                      vertical: AppLayout.getWidth(20),
                    ),
                    children: [
                      Box.h(30),
                      SizedBox(
                        height: size.height * 0.075,
                        child: const MyTextSearch(
                            icon: FontAwesomeIcons.planeDeparture,
                            text: 'Điểm đi ',
                            subWidget: ListSearchAirport()),
                      ),
                      Box.h(15),
                      SizedBox(
                        height: size.height * 0.075,
                        // width: AppLayout.getWidth(320),
                        child: const MyTextSearch(
                            icon: FontAwesomeIcons.planeArrival,
                            text: 'Điểm đến',
                            subWidget: ListSearchAirport()),
                      ),
                      Box.h(15),
                      InkWell(
                        onTap: () {
                          _selectDate(context);
                          selectDate.toLocal().toString();
                        },
                        child: SizedBox(
                          height: size.height * 0.075,
                          // width: AppLayout.getWidth(320),
                          child: MyTextSearch(
                              icon: FontAwesomeIcons.clock,
                              text: dateFormat
                                  .format(selectDate.toLocal())
                                  .toString(),
                              subWidget: const Text(' ')),
                        ),
                      ),
                      Box.h(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hành khách',
                                style: AppFont.t.w600.s(16),
                              ),
                              Box.h(5),
                              Row(
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.peopleGroup,
                                    color: Palette.grey,
                                  ),
                                  Box.w(20),
                                  GestureDetector(
                                    onTap: () {
                                      print(1);
                                    },
                                    child: Text(
                                      '1 hành khách',
                                      style: AppFont.t.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Palette.white,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hạng ghế',
                                style: AppFont.t.w600.s(16),
                              ),
                              Box.h(5),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.airline_seat_legroom_extra,
                                    color: Palette.grey,
                                  ),
                                  Box.w(20),
                                  GestureDetector(
                                    onTap: () {
                                      _showModalSheet();
                                    },
                                    child: Text(
                                      'Economy',
                                      style: AppFont.t.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Palette.white,
                              ),
                            ],
                          )
                        ],
                      ),
                      Box.h(20),
                      ButtonPrimary(
                        action: () {
                          AppNavigator.push(Routes.searchFlight);
                        },
                        text: 'Tìm Kiếm Vé ',
                        textStyle: AppFont.t.w600.white.s(18),
                        height: size.height * 0.065,
                        width: size.width * 0.05,
                      )
                    ],
                  ),
                  ListView(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(20),
                      vertical: AppLayout.getWidth(20),
                    ),
                    children: [
                      Box.h(30),
                      ItemSearchHotel(
                        icon: FontAwesomeIcons.locationPin,
                        firtTitle: 'Destination',
                        scecondTitle: 'Ha Noi',
                        ontap: () {},
                      ),
                      Box.h(15),
                      ItemSearchHotel(
                        firtTitle: 'Select Date',
                        scecondTitle: selectDateHotel ?? '13/02 - 18/02/2023',
                        icon: FontAwesomeIcons.calendar,
                        ontap: () async {
                          final result =
                              await AppNavigator.push(Routes.selectDate);
                          if (result is List<DateTime?>) {
                            setState(() {
                              selectDateHotel =
                                  '${result[0]?.getStartDate} - ${result[1]?.getEndDate}';
                            });
                          }
                        },
                      ),
                      Box.h(15),
                      ItemSearchHotel(
                        firtTitle: 'Guest And Room',
                        scecondTitle: guestRoom ?? '2 Guest, 1 Room',
                        icon: Icons.bed_rounded,
                        ontap: () async {
                          final result =
                              await AppNavigator.push(Routes.guestAndRoom);
                          if (result is List<int>) {
                            setState(() {
                              guestRoom =
                                  '${result[1]} Guest, ${result[0]} Room';
                            });
                          }
                        },
                      ),
                      Box.h(20),
                      ButtonPrimary(
                        height: size.height * 0.065,
                        width: size.width * 0.05,
                        action: () {},
                        text: 'Tìm Kiếm',
                        textStyle: AppFont.t.w600.white.s(18),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    ));
  }
}
