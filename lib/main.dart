import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/helper_components/custom_colors.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/bottom_navigation_menu_bar.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/bottom_sheet_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/button_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/card_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/checkbox_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/choise_card_radio_button_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/combo_box_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/dialog_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/divider_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/flushbar_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/multiple_choise_button_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/navigation_rail_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/show_date_picker_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/show_time_picker_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/switch_widget.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/textformfield_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: CustomColorConstant.instance.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          elevation: 0,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: CustomColorConstant.instance.blueGrey,
          centerTitle: true,
          toolbarHeight: 50.0,
          titleTextStyle: TextStyle(
              color: CustomColorConstant.instance.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
          actionsIconTheme: IconThemeData(
              color: CustomColorConstant.instance.white, size: 35.0),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: CustomColorConstant.instance.blueGrey,
          selectedItemColor: CustomColorConstant.instance.white,
          unselectedItemColor: CustomColorConstant.instance.ligthGrey,
          selectedLabelStyle: TextStyle(
            color: CustomColorConstant.instance.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            // color: CustomColorConstant.instance.white.withValues(),
            fontSize: 12.0,
          ),
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FlutterComponents(),
    );
  }
}

class FlutterComponents extends StatefulWidget {
  const FlutterComponents({super.key});

  @override
  State<FlutterComponents> createState() => _FlutterComponentsState();
}

class _FlutterComponentsState extends State<FlutterComponents> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.chevron_right),
        ],
        leading: Icon(Icons.chevron_left),
        title: Text("Component App"),
      ),
      // bottomSheet: CustomBottomBar(
      //   iconButtoniList: [Text("Kurum Adı")],
      // ),

      bottomNavigationBar: CustomBottomNavigationMenuBar(
          currentIndex: currentIndex,
          onTap: (p0) {
            setState(() {
              currentIndex = p0;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "dewneme",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "dewneme",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "dewneme",
              icon: Icon(Icons.home),
            ),
          ]),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            CustomTextFormField(
                label: "cjknvdfnv", controller: TextEditingController()),
            ElevatedButton(
                onPressed: () {
                  customShowModalBottomSheet(
                      context: context,
                      title: "Title",
                      body: Column(
                        children: [
                          Text("Body"),
                          Text("Body"),
                          Text("Body"),
                          Text("Body"),
                          Text("Body"),
                          Text("Body"),
                          Text("Body"),
                          Text("Body"),
                          Text("Body"),
                          Text("Body"),
                        ],
                      ));
                },
                child: Text("BottomSheet")),
            CustomElevatedButton(child: Text("data"), onPressed: () {}),
            CustomTextButtonError(
              onTap: () {},
              text: "Error",
            ),
            CustomTextButtonSuccess(
              onTap: () {},
              text: "Success",
            ),
            CustomGeneralButton(
              onPressed: () {},
              text: "General Button",
            ),
            CustomElevatedButtonIcon(
              icon: Icons.star,
              onTap: () {},
              label: "General Button",
            ),
            CustomListTileCard(
              icon: Icon(Icons.star),
              subtitle: Text("Subtitle"),
              title: Text("Tittle"),
              textButtonText: Text("TextButton"),
            ),
            customDivider(color: CustomColorConstant.instance.blueGrey),
            CustomCheckBox(
              onChanged: (value) {},
              value: true,
            ),
            CustomCheckBoxLabel(
              label: "label",
              onChanged: (value) {},
              value: true,
            ),
            CustomCheckBoxListTile(
              onChanged: (value) {},
              subtitle: Text("Subtitle"),
              title: Text("title"),
              value: true,
            ),
            CustomChoiseCardRadioButtonWidget(
              groupValue: 5,
              radioButtonValue: 3,
              subtitle: "Subitlte",
              imageUrl: "dflşkgmk",
            ),
            CustomComboBox(
              newValue: (a) {},
              options: ["Bir", "İki"],
            ),
            CustomElevatedButton(
              child: Text("customAlertCardDialog"),
              onPressed: () {
                DialogManager.customAlertDialog(
                  title: "Title",
                  context: context,
                  buttonOntap: () {},
                  buttonText: "dkfjdpı",
                  alertBody: [
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                );
              },
            ),
            customDivider(color: CustomColorConstant.instance.blueGrey),
            CustomElevatedButton(
                child: Text("SuccesFlushbar"),
                onPressed: () {
                  customInfoFlushbar(
                      context: context, title: "Info", description: "desc");
                }),
            CustomElevatedButton(
                child: Text("ErrorFlushbar"),
                onPressed: () {
                  customErrorFlushbar(
                      context: context, title: "Error", description: "desc");
                }),
            CustomElevatedButton(
                child: Text("SuccessFlushbar"),
                onPressed: () {
                  customSuccessFlushbar(
                      context: context, title: "Success", description: "desc");
                }),
            CustomMultipleChoice(
              selection: {0, 1, 2, 3},
              multiSelectionEnabled: true,
              options: [
                "dene",
                "dene2",
                "deme2",
                "dene2",
              ],
            ),
            CustomNavigationRail(
              selectedIndex: 1,
              onDestinationSelected: (index) {
                print("Seçilen: $index");
                setState(() {});
              },
              items: const [
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text("Home")),
                NavigationRailDestination(
                    icon: Icon(Icons.settings), label: Text("Settings")),
                NavigationRailDestination(
                    icon: Icon(Icons.person), label: Text("Profile")),
              ],
              railWidth: 80, // Daha geniş bir NavigationRail
              backgroundColor: Colors.blueGrey.shade50, // Arka plan rengi
              selectedIconTheme:
                  const IconThemeData(color: Colors.blue, size: 30),
              unselectedIconTheme:
                  const IconThemeData(color: Colors.grey, size: 26),
              showDivider: true, // Divider görünür olacak
            ),
            CustomDateTimePicker(
              textEditingController: TextEditingController(),
            ),
            CustomShowTimePicker(
              focusNode: FocusNode(),
              textEditingController: TextEditingController(),
            ),
            CustomSwitch(
              isActive: true,
              onChanged: (p0) {
                return true;
              },
            )
          ],
        ),
      ),
    );
  }
}
