import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wallpaper_blaster/model/wallpaper_model.dart';
import 'package:wallpaper_blaster/resources/api_repository.dart';

part 'wallpaper_event.dart';
part 'wallpaper_state.dart';

class WallpaperBloc extends Bloc<WallpaperEvent, WallpaperState> {
  WallpaperBloc() : super(WallpaperInitial()) {
    on<GetWallPaperListEvent>((event, emit) async {
      final ApiRepository _obj = ApiRepository();
      emit(WallpaperLoading());
      final _list = await _obj.getWallPaperList("art", "60");
      print("&&&&&&&&&&&&& $_list    &&&&&&&");
      emit(WallpaperLoaded(wallPaperModelList: _list));
      if (_list.isEmpty) {
        emit(WallpaperError(message: "Error Occured"));
      }
    });
  }
}
