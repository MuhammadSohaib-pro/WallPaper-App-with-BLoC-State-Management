import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper_blaster/features/wallpaper_page/bloc/wallpaper_bloc.dart';
import 'package:wallpaper_blaster/helper/theme_helper.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:wallpaper_blaster/model/wallpaper_model.dart';
import 'package:wallpaper_blaster/resources/Components/custom_textfields.dart';

class WallPaperView extends StatefulWidget {
  const WallPaperView({super.key});

  @override
  State<WallPaperView> createState() => _WallPaperViewState();
}

class _WallPaperViewState extends State<WallPaperView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: ThemeColors.black1,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: NeumorphicText(
              "WallPaper",
              textStyle: NeumorphicTextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold),
              style: const NeumorphicStyle(
                color: ThemeColors.mainColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80.0),
            child: Center(
              child: NeumorphicText(
                "Blaster\n",
                textStyle: NeumorphicTextStyle(
                    fontSize: 30, fontWeight: FontWeight.w500),
                style: const NeumorphicStyle(
                  color: ThemeColors.black1,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Neumorphic(
              curve: Curves.bounceInOut,
              child: CustomTextField13(
                fillColor: Colors.white.withOpacity(.3),
                hintText: "Search Wallpaper",
                sufixIcon: InkWell(
                  onTap: () {},
                  child: Neumorphic(
                    child: Container(
                      height: 55,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: ThemeColors.mainColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: ThemeColors.bgColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: BlocProvider<WallpaperBloc>(
              create: (_) => WallpaperBloc(),
              child: BlocBuilder<WallpaperBloc, WallpaperState>(
                builder: (context, state) {
                  if (state is WallpaperLoading) {
                    return const Center(
                      child: NeumorphicProgress(),
                    );
                  } else if (state is WallpaperError) {
                    return Center(
                      child: NeumorphicText(
                        "Error Occured Check Your Internet Connection",
                        textStyle: NeumorphicTextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                        style: const NeumorphicStyle(
                          color: ThemeColors.black1,
                        ),
                      ),
                    );
                  } else if (state is WallpaperLoaded) {
                    final List<WallPaperModel> wallPaperList =
                        state.wallPaperModelList;
                    return MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      itemCount: wallPaperList.length,
                      itemBuilder: (context, index) {
                        return Neumorphic(
                          child: Card(
                            child:
                                Image.network(wallPaperList[index].thumbnail!),
                          ),
                        );
                      },
                    );
                  }else{
                    return Center(
                      child: NeumorphicText(
                        "Error Occured",
                        textStyle: NeumorphicTextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                        style: const NeumorphicStyle(
                          color: ThemeColors.black1,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
