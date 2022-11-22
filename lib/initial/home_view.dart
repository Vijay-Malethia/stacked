import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:this_demo_stack/app/app.router.dart';
import 'package:this_demo_stack/second/second_view.dart';

import 'home_viewmodel.dart';

// View
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Using the reactive constructor gives you the traditional ViewModel
    // binding which will execute the builder again when notifyListeners is called.
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // viewModel.updateTitle();
            NavigationService().navigateTo(Routes.secondView);
          },
        ),
        appBar: AppBar(title: const Text('Stacked demo')),
        body: Center(
          child: Text(viewModel.title),
        ),
      ),
    );
  }
}
