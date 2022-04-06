import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/endpoints.dart';
import 'package:newsapp/data/models/weather/weather.dart';
import 'package:geocoding/geocoding.dart';

class WeatherBottomSheet extends StatefulWidget {
  final List<WeatherItem> forecastingList;
  const WeatherBottomSheet({Key? key, required this.forecastingList}) : super(key: key);

  @override
  State<WeatherBottomSheet> createState() => _WeatherBottomSheetState();
}

class _WeatherBottomSheetState extends State<WeatherBottomSheet> {
  bool locationService = false;
  String location = "";

  @override
  void didChangeDependencies() async {
    bool _locationService = await Geolocator.isLocationServiceEnabled() && await isPermitted;
    setState(() {
      locationService = _locationService;
    });
    Set<double> latLong = await getLocation();
    await placemarkFromCoordinates(latLong.first, latLong.last).then((placemarks){
      setState(() {
        location = "${placemarks[0].locality}, ${placemarks[0].country}";
      });
    });
    super.didChangeDependencies();
  }
  
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    WeatherItem currentDay = widget.forecastingList[0];
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDarkMode ? NAColors.black :NAColors.white,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(13),
            topLeft: Radius.circular(13)
          ),
        ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        convertMaxTemp(currentDay.maxTemp),
                        style: theme.textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            letterSpacing: 1
                        ),
                      ),
                      if(location.isEmpty) ... [
                        const SizedBox(
                          width: 20,
                          height: 20,
                          child: Center(
                            child: CircularProgressIndicator(
                              color: NAColors.blue,
                              strokeWidth: 3,
                            ),
                          ),
                        ),
                      ] else ... [
                        Text(
                          location,
                          style: theme.textTheme.bodyText1,
                        ),
                      ]
                    ],
                  ),
                ),
              ),
              Image.network(
                Endpoints().getIconUrl(currentDay.icon),
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                width: 100,
                height: 100,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ...widget.forecastingList.map((weatherItem) => _buildWeatherItem(context, theme, weatherItem))
              ],
            ),
          ),
          if(locationService == false) ...[
            TouchableOpacity(
              onPressed: () async {
                await Geolocator.openAppSettings();
              },
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0
                        ),
                        child: Text(
                          tr("home.turn_on_location"),
                          style: theme.textTheme.caption?.copyWith(
                            color: NAColors.gray
                          )
                        ),
                      ),
                    ),
                  ],
                )
            )
          ]
        ],
      ),
    );
  }

  @swidget
  _buildWeatherItem(BuildContext context, ThemeData theme, WeatherItem weatherItem) {
    String temperatures = convertTemperatures(weatherItem.maxTemp, weatherItem.minTemp);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          convertWeatherTimestamp(weatherItem.day),
          style: theme.textTheme.caption?.copyWith(
            fontSize: 15
          ),
        ),
        Image.network(
          Endpoints().getIconUrl(weatherItem.icon),
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
          width: 50,
          height: 50,
        ),
        Text(
          temperatures,
          style: theme.textTheme.caption?.copyWith(
            fontSize: 15
          ),
        )
      ],
    );
  }

}


