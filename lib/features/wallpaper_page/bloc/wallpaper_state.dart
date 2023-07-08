// ignore_for_file: must_be_immutable

part of 'wallpaper_bloc.dart';

@immutable
abstract class WallpaperState {}

class WallpaperInitial extends WallpaperState {}

class WallpaperLoading extends WallpaperState {}

class WallpaperLoaded extends WallpaperState {
  List<WallPaperModel> wallPaperModelList;

  WallpaperLoaded({required this.wallPaperModelList});
}

class WallpaperError extends WallpaperState {
  final String message;
  WallpaperError({required this.message});
}

class WallpaperAppliedSuccess extends WallpaperState {}

class WallpaperAppliedFailed extends WallpaperState {}
