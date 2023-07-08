import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'set_wallpaper_event.dart';
part 'set_wallpaper_state.dart';

class SetWallpaperBloc extends Bloc<SetWallpaperEvent, SetWallpaperState> {
  SetWallpaperBloc() : super(SetWallpaperInitial()) {
    on<SetWallpaperEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
