import 'package:feature_first/core/dependency_injection/dependency_injection.dart';
import 'package:feature_first/features/weather/presentation/unit_conversion.dart';
import 'package:feature_first/features/weather/widget/dialog/search_dialog.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:location/location.dart';


class WeatherAppBar extends StatefulHookConsumerWidget {
  const WeatherAppBar({super.key});

  @override
  ConsumerState<WeatherAppBar> createState() => _WeatherAppBarState();
}

class _WeatherAppBarState extends ConsumerState<WeatherAppBar> {

  Location location =  Location();
  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;
  String addressName = "";



  void initLocation()async{
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled!) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled!) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationData = await location.getLocation();
    location.enableBackgroundMode(enable: true);
    location.onLocationChanged.listen((LocationData currentLocation){
      _locationData = currentLocation;
    });

    addressName = await getLocationName(_locationData?.latitude ?? 0.00, _locationData?.longitude ?? 0.00);
  }


  Future<String> getLocationName(double latitude, double longitude) async {
    try {
      List<geocoding.Placemark> placeMarks = await geocoding.placemarkFromCoordinates(latitude, longitude);
      geocoding.Placemark place = placeMarks[0];
      return "${place.subAdministrativeArea}";
    } catch (e) {
      return "Location not found";
    }
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initLocation();
  }



  @override
  Widget build(BuildContext context) {

    final weatherState = ref.watch(weatherProvider);
    final weatherCtrl = ref.watch(weatherProvider.notifier);

    final searchController = useTextEditingController();

    Future<void> getWeatherData({String? query})async{
      await weatherCtrl.getWeatherData(query: query);
    }




    return  Row(
        mainAxisAlignment: mainSpaceBetween,
        children:[

          InkWell(
            onTap: ()=> showSearchInputDialog(
                context: context,
                searchController: searchController,
                onPressed: () {
                  if (searchController.text.isNotEmpty) {
                    getWeatherData(query: searchController.text).whenComplete((){
                      searchController.clear();
                    });
                    Navigator.pop(context);
                  }
                }
            ),
            child: Opacity(
              opacity: 0.30,
              child: Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                    color: ColorPalates.defaultWhite,
                    borderRadius: radius4
                ),
                child: const Icon(
                  Icons.search,
                ),
              ),
            ),
          ),

          const Spacer(),

          Column(
            children: [
              Text(
                weatherState.weatherModel?.location?.name ?? "Dhaka",
                style: CustomTextStyles.primary,
              ),

              gap4,

              Row(
                mainAxisAlignment: mainCenter,
                children: [
                  Text(
                    "Lat: ${weatherState.weatherModel?.location?.lat ?? "23.383923"}",
                    style: CustomTextStyles.primary.copyWith(
                        fontSize: 5.sp
                    ),
                  ),

                  gap4,

                  Text(
                    "Long: ${weatherState.weatherModel?.location?.lon ?? "23.383923"}",
                    style: CustomTextStyles.primary.copyWith(
                        fontSize: 5.sp
                    ),
                  ),

                ],
              ),

            ],
          ),


          const Spacer(),

          Row(
            children: [
              InkWell(
                onTap: ()=> getWeatherData(query: addressName.isNotEmpty ? addressName : null),
                child: Opacity(
                  opacity: 0.30,
                  child: Container(
                    width: 20.w,
                    height: 20.w,
                    decoration: BoxDecoration(
                        color: ColorPalates.defaultWhite,
                        borderRadius: radius4
                    ),
                    child: const Icon(
                      Icons.gps_fixed,
                    ),
                  ),
                ),
              ),


              gap4,

              InkWell(
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (context)=> const ConversionDialog()
                  );
                },
                child: Opacity(
                  opacity: 0.30,
                  child: Container(
                    width: 20.w,
                    height: 20.w,
                    decoration: BoxDecoration(
                        color: ColorPalates.defaultWhite,
                        borderRadius: radius4
                    ),
                    child: const Icon(
                      Icons.calculate,
                    ),
                  ),
                ),
              ),
            ],
          ),


        ]
    );
  }
}
