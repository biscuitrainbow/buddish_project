import 'package:buddish_project/data/model/activity.dart';
import 'package:buddish_project/ui/activity_compose/activity_composer_screen.dart';
import 'package:buddish_project/ui/activity_compose/activity_composer_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ActivityEditContainer extends StatelessWidget {
  final Activity activity;

  ActivityEditContainer({
    this.activity,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      converter: ActivityComposerViewModel.fromStore,
      builder: (BuildContext context, ActivityComposerViewModel viewModel) {
        return ActivityComposeScreen(
          activity: activity,
          viewModel: viewModel,
          isEditing: true,
        );
      },
    );
  }
}
