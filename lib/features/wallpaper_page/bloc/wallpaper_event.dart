part of 'wallpaper_bloc.dart';

@immutable
abstract class WallpaperEvent {}

class GetWallPaperListEvent extends WallpaperEvent {}

class SearchButtonClickedEvent extends WallpaperEvent {}

class OnWallPaperClickedNavigateEvent extends WallpaperEvent {}
