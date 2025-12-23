// ignore_for_file: deprecated_member_use

import 'package:example/core/constant/app_colors.dart';
import 'package:example/core/constant/app_spacing.dart';
import 'package:example/core/widgets/loader.dart';
import 'package:example/presentation/bloc/breed_bloc.dart';
import 'package:example/presentation/screens/details_screen.dart';
import 'package:example/presentation/widgets/pet_card.dart';
import 'package:example/presentation/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<BreedBloc>().add(GetBreedsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.location_on, color: AppColors.primary),
          ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: AppColors.textDisabled),
          ),
        ],
      ),
      body: Column(
        children: [
          CustomSearchBar(
            onChanged: (value) {
              // Implement search functionality if needed
            },
            hintText: 'Search for pets...',
            controller: TextEditingController(),
          ),
          Expanded(
            child: BlocBuilder<BreedBloc, BreedState>(
              builder: (context, state) {
                switch (state.status) {
                  case RequestStatus.loading:
                    return const Loader();
                  case RequestStatus.error:
                    return Center(child: Text(state.message));
                  case RequestStatus.success:
                    return GridView.builder(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.xlg,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            childAspectRatio: 0.70,
                          ),
                      itemBuilder: (context, index) {
                        final breed = state.breeds[index];
                        return PetCard(
                          breed: breed,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) {
                                  return DetailsScreen(breed: breed);
                                },
                              ),
                            );
                          },
                        );
                      },
                    );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
