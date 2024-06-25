import 'package:fifa/common/Enforce.dart';
import 'package:fifa/common/SeasonIconHelper.dart';
import 'package:fifa/models/Spid.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EnforcesScreen extends StatefulWidget {
  final Spid spid;

  const EnforcesScreen({super.key, required this.spid});

  @override
  State<EnforcesScreen> createState() => _EnforcesScreenState();
}

class _EnforcesScreenState extends State<EnforcesScreen> {
  int _selectValue = 1;
  int clickCount = 0;
  int enforceSuccess = 0;
  int enforceFail = 0;

  double _enforcePercent = 0;

  Color _getDropdownColor(int value) {
    switch (value) {
      case 1:
        return Colors.grey[500]!;
      case 2:
        return Colors.brown[500]!;
      case 3:
        return Colors.brown[500]!;
      case 4:
        return Colors.brown[500]!;
      case 5:
        return Colors.black26;
      case 6:
        return Colors.black26;
      case 7:
        return Colors.black26;
      case 8:
        return Colors.yellow[800]!;
      case 9:
        return Colors.yellow[800]!;
      default:
        return Colors.yellow[800]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.spid.name),
      ),
      body: Container(
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                double maxHeight = constraints.maxHeight == double.infinity
                    ? MediaQuery.of(context).size.height
                    : constraints.maxHeight;
                double maxWidth = constraints.maxWidth == double.infinity
                    ? MediaQuery.of(context).size.width
                    : constraints.maxWidth;
                return Container(
                  width: maxWidth,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 200,
                          child: Image(
                            fit: BoxFit.contain,
                            image: NetworkImage(SeasonIconHelper.getSeasonImage(
                                widget.spid.id)),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Stack(
                              children: [
                                Container(
                                  width: 190,
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://fco.dn.nexoncdn.co.kr/live/externalAssets/common/playersActionHigh/p${widget.spid.id}.png"),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 50,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: _getDropdownColor(_selectValue),
                                    ),
                                    child: DropdownButton<int>(
                                      isExpanded: true,
                                      underline: Container(),
                                      value: _selectValue,
                                      // 현재 선택된 값
                                      onChanged: (int? newValue) {
                                        // 값이 변경될 때 호출되는 콜백
                                        setState(() {
                                          _selectValue =
                                              newValue!; // 선택된 값 업데이트
                                        });
                                      },
                                      items: <int>[
                                        1,
                                        2,
                                        3,
                                        4,
                                        5,
                                        6,
                                        7,
                                        8,
                                        9
                                      ].map<DropdownMenuItem<int>>((int value) {
                                        return DropdownMenuItem<int>(
                                          value: value, // 각 항목의 값
                                          child: Container(
                                              color: _getDropdownColor(value),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "$value",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )), // 각 항목에 표시될 텍스트
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 5,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Image(
                                      image: NetworkImage(
                                        SeasonIconHelper.getSeasonBigImage(
                                            widget.spid.id),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Image(
                                    image: NetworkImage(
                                        SeasonIconHelper.getSeasonSmallImage(
                                            widget.spid.id)),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  widget.spid.name,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: _getDropdownColor(_selectValue),
                  ),
                  child: Text(
                    "$_selectValue",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const FaIcon(FontAwesomeIcons.arrowRightLong),
                Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: _getDropdownColor(_selectValue),
                  ),
                  child: Text(
                    "${_selectValue + 1}",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
            Text(
                "강화 확률: ${Enforce(_selectValue, _enforcePercent).enforcePercent()}%"),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.blue,
                inactiveTrackColor: Colors.blue[100],
                trackShape: RoundedRectSliderTrackShape(),
                trackHeight: 8.0,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                thumbColor: Colors.blue,
                overlayColor: Colors.blue.withAlpha(32),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                tickMarkShape: RoundSliderTickMarkShape(),
                activeTickMarkColor: Colors.blue,
                inactiveTickMarkColor: Colors.blue[100],
                valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                valueIndicatorColor: Colors.blue,
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Slider(
                value: _enforcePercent,
                min: 0.0,
                max: 1.0,
                divisions: 50,
                label: '$_enforcePercent',
                onChanged: (value) {
                  setState(() {
                    _enforcePercent = value;
                  });
                },
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    Enforce(_selectValue, _enforcePercent).isResult()
                        ? _selectValue += 1
                        : _selectValue;
                    clickCount += 1;
                    Enforce(_selectValue, _enforcePercent).isResult()
                        ? enforceSuccess += 1
                        : enforceFail += 1;
                  });
                },
                icon: const FaIcon(
                  FontAwesomeIcons.anchorCircleCheck,
                  size: 50,
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.black45,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "시도",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("성공",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("실패",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("성공 비율",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                color: Colors.black45,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "$clickCount",
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("$enforceSuccess",
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("$enforceFail",
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                            clickCount == 0
                                ? "0%"
                                : "${((enforceSuccess / clickCount) * 100).toStringAsFixed(2)}%",
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
