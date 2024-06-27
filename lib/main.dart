import 'package:fifa/common/SeasonIconHelper.dart';
import 'package:fifa/repository/MetadataRepository.dart';
import 'package:fifa/viewModels/MetaDataViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'EnforceScreen.dart';
import 'models/Spid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) =>
                MetaDataViewModel(metadataRepository: MetadataRepository())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();

  int _selectedSeason = 0;

  @override
  void initState() {
    super.initState();
    final viewModel = Provider.of<MetaDataViewModel>(context, listen: false);
    viewModel.fetchSpid();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _moveToEnforceScreen(Spid spid, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EnforcesScreen(
                  spid: spid,
                )));
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MetaDataViewModel>(context);
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text("FC Online \n강화 시뮬레이터",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              padding: EdgeInsets.all(5),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "선수명을 입력해주세요.",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                        onTap: () {
                          viewModel.searchSpid(_controller.text);
                          setState(() {
                            _controller.clear();
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          color:  const Color(0xff1FF261),
                          child: Text(
                            "검색",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _controller.clear();
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            color: Colors.grey[500],
                            child: Text("초기화", textAlign: TextAlign.center, style: TextStyle(color: Colors.black),)),
                      ),
                  ),
                ],
              ),
            ),
            ExpansionTile(
              title: Text("시즌"),
              initiallyExpanded: false,
              backgroundColor: Colors.white,
              children: [
                Container(
                  height: 300,
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: SeasonIconHelper.seasonIcons.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          viewModel.searchSpidByCode(SeasonIconHelper.seasonIcons[index].b);
                          setState(() {
                            _selectedSeason = index;
                          });
                        },
                        child: Container(
                          color: _selectedSeason == index ? Colors.blue : Colors.white,
                          child: Image(
                            image: NetworkImage(
                                SeasonIconHelper.seasonIcons[index].c),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            if (viewModel.spidList?.isNotEmpty == true)
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.searchList != null
                      ? viewModel.searchList!.length
                      : viewModel.spidList!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          _moveToEnforceScreen(
                              viewModel.searchList != null
                                  ? viewModel.searchList![index]
                                  : viewModel.spidList![index],
                              context);
                        },
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: viewModel.searchList != null
                                    ? NetworkImage(
                                        "https://fco.dn.nexoncdn.co.kr/live/externalAssets/common/playersAction/p${viewModel.searchList![index].id}.png",)
                                    : NetworkImage(
                                        "https://fco.dn.nexoncdn.co.kr/live/externalAssets/common/playersAction/p${viewModel.spidList![index].id}.png",),
                              ),
                            ),
                          ),
                          title: Text(viewModel.searchList != null
                              ? viewModel.searchList![index].name
                              : viewModel.spidList![index].name),
                        ),
                      ),
                    );
                  },
                ),
              )
            else
              Expanded(
                child: Center(
                  child: Text("데이터가 없습니다."),
                ),
              ),
          ],
        ),
      )),
    );
  }
}
