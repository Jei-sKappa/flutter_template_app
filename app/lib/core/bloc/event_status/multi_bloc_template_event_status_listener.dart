import 'package:bloc_event_status/bloc_event_status.dart';
import 'package:template/core/bloc/bloc.dart';

typedef MultiBlocTemplateEventStatusListener<
        TBLoc extends BlocCustomEventStatusMixin<TEvent, dynamic,
            AppEventStatus>,
        TEvent>
    = MultiBlocCustomEventStatusListener<TBLoc, TEvent, AppEventStatus>;
