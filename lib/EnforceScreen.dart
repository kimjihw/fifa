import 'package:fifa/common/Enforce.dart';
import 'package:fifa/common/SeasonIconHelper.dart';
import 'package:fifa/models/Spid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EnforcesScreen extends StatefulWidget {
  final Spid spid;

  const EnforcesScreen({super.key, required this.spid});

  @override
  State<EnforcesScreen> createState() => _EnforcesScreenState();
}

class _EnforcesScreenState extends State<EnforcesScreen>
    with SingleTickerProviderStateMixin {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  bool _isDropdownOpened = false;

  late AnimationController _controller;
  late Animation<double> _animation;

  int _selectValue = 1;
  int clickCount = 0;
  int enforceSuccess = 0;
  int enforceFail = 0;

  double _enforcePercent = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(microseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: -5.0, end: 5.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);
    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height,
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, size.height),
          child: Material(
            elevation: 4.0,
            child: Column(
              children: [1, 2, 3, 4, 5, 6, 7, 8, 9].map((value) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectValue = value;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    color: _getDropdownColor(value),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(
                      "$value",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  void _toggleDropDown() {
    if (_isDropdownOpened) {
      _removeDropDown();
    } else {
      _showDropDown();
    }
  }

  void _showDropDown() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
    setState(() {
      _isDropdownOpened = true;
    });
  }

  void _removeDropDown() {
    _overlayEntry!.remove();
    setState(() {
      _isDropdownOpened = false;
    });
  }

  Future<void> _tryEnforce() async {
    _startAnimation();
    await Future.delayed(Duration(seconds: 3));
    _controller.stop();
    setState(() {
      Enforce(_selectValue, _enforcePercent).isResult()
          ? _selectValue += 1
          : _selectValue;
      clickCount += 1;
      Enforce(_selectValue, _enforcePercent).isResult()
          ? enforceSuccess += 1
          : enforceFail += 1;
    });
  }

  void _startAnimation() {
    _controller.repeat(reverse: true);
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
                double maxWidth = constraints.maxWidth == double.infinity
                    ? MediaQuery.of(context).size.width
                    : constraints.maxWidth;
                return AnimatedBuilder(
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(_animation.value, 0),
                      child: Container(
                        width: maxWidth,
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                width: 200,
                                child: Image(
                                  fit: BoxFit.contain,
                                  image: NetworkImage(
                                      SeasonIconHelper.getSeasonImage(
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
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Image(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              "https://fco.dn.nexoncdn.co.kr/live/externalAssets/common/players/not_found.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: CompositedTransformTarget(
                                            link: _layerLink,
                                            child: GestureDetector(
                                              onTap: _toggleDropDown,
                                              child: Container(
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.all(5),
                                                  width: 50,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: _getDropdownColor(
                                                        _selectValue),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "$_selectValue",
                                                        textAlign:
                                                            TextAlign.end,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20),
                                                      ),
                                                      Icon(
                                                        Icons.arrow_drop_down,
                                                        color: Colors.black,
                                                      )
                                                    ],
                                                  )),
                                            ),
                                          )),
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
                                              SeasonIconHelper
                                                  .getSeasonBigImage(
                                                      widget.spid.id),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Image(
                                          image: NetworkImage(SeasonIconHelper
                                              .getSeasonSmallImage(
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
                      ),
                    );
                  },
                  animation: _animation,
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
                    color: _getDropdownColor(_selectValue + 1),
                  ),
                  child: Text(
                    "${_selectValue + 1}",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "강화 확률: ${Enforce(_selectValue, _enforcePercent).enforcePercent()}%",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
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
            InkWell(
              onTap: _tryEnforce,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff1FF261),
                ),
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
                child: const Text("강화 시도",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
