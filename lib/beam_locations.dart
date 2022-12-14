import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation_with_beamer_video/details_screen.dart';
import 'package:nested_navigation_with_beamer_video/root_screen.dart';

class ALocation extends BeamLocation<BeamState> {
  ALocation(super.routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
          child: RootScreen(
        label: 'A',
        detailsPath: '/a/details',
      )),
      if (state.uri.pathSegments.length == 2)
        const BeamPage(
            child: DetailsScreen(
              label: 'A',
            ),
            type: BeamPageType.fadeTransition)
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/*'];
}

class BLocation extends BeamLocation<BeamState> {
  BLocation(super.routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
          child: RootScreen(
        label: 'B',
        detailsPath: '/b/details',
      )),
      if (state.uri.pathSegments.length == 2)
        const BeamPage(
            child: DetailsScreen(
              label: 'B',
            ),
            type: BeamPageType.noTransition)
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/*'];
}
