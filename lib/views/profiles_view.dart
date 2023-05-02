export 'profiles_view.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/profiles_state.dart';

import '../widgets/view_base_layout_widget.dart';
import '../widgets/base_icon_button_widget.dart';
import '../containers/add_profile_modal_container.dart';
import '../containers/profile_list_container.dart';

class ProfilesView extends StatefulWidget {
  const ProfilesView({super.key});

  @override
  State<StatefulWidget> createState() => _ProfilesViewState();
}

class _ProfilesViewState extends State<ProfilesView> {
  void _handleOnProfileCardTap() {}

  void _handleAddProfileOnSubmit(String newProfile) {}

  void _showAddProfileModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        useSafeArea: true,
        shape: const CircleBorder(),
        backgroundColor: Colors.green,
        builder: (BuildContext context) {
          return AddProfileModal(onSubmit: _handleAddProfileOnSubmit);
        });
  }

  @override
  Widget build(BuildContext context) {
    ProfilesState profilesState =
        Provider.of<ProfilesState>(context, listen: false);

    profilesState.initializeProfiles();

    return ViewBaseLayoutWidget(child: Consumer<ProfilesState>(
      builder: (context, profilesState, _) {
        return Container(
          child: Column(
            children: [
              Expanded(
                  child: ProfileListContainer(
                profiles: profilesState.profiles,
                onCardTap: _handleOnProfileCardTap,
              )),
              const SizedBox(height: 16),
              BaseIconButtonWidget(
                title: 'ADD NEW PROFILE',
                onPressed: () {
                  _showAddProfileModal(context);
                },
                icon: Icons.add,
              )
            ],
          ),
        );
      },
    ));
  }
}
