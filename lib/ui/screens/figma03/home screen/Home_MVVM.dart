import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/models/home_eature.dart';
import 'package:figma_creation_task/core/models/home_ourServices.dart';
import 'package:figma_creation_task/core/models/home_upcooming.dart';
import 'package:figma_creation_task/core/other/view_model.dart';

class Homeviewmodel extends BaseViewModel {
  // bool isSelect = false;
  // onClick() {
  //   isSelect = !isSelect;
  //   notifyListeners();
  // }

// *************  feature services *****************/
  List<FeatureServices> listFeature = [
    FeatureServices(
      tittle: "Classic Predicure",
      timePrice: "45 mnt 39 AED",
      imgUrl: "$staticAssets/details.png",
    ),
    FeatureServices(
        tittle: "asjndjenf",
        imgUrl: "$staticAssets/details.png",
        timePrice: "dba dhbs"),
    FeatureServices(
        tittle: "shfb", imgUrl: "$staticAssets/details.png", timePrice: "hbd"),
    FeatureServices(
        tittle: "shfb", imgUrl: "$staticAssets/details.png", timePrice: "hbd"),
    FeatureServices(
        tittle: "shfb", imgUrl: "$staticAssets/details.png", timePrice: "hbd"),
    FeatureServices(
        tittle: "shfb", imgUrl: "$staticAssets/details.png", timePrice: "hbd"),
    FeatureServices(
        tittle: "shfb", imgUrl: "$staticAssets/details.png", timePrice: "hbd"),
  ];
//*****************    our services   *****************/
  List<OurServices> listOurServices = [
    OurServices(ImgUrl: "$staticAssets/details,png", tittle: "sdjhd")
  ];
  //*****************  upcooming services  *****************/
  List<Upcommingservices> listupcoming = [
    Upcommingservices(
        imgUrl: "$staticAssets/details.png",
        tittle: "hds",
        pageRoute: "eedfe",
        timePrice: "eeee")
  ];
}