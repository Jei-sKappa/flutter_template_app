import 'package:app/core/bloc/bloc.dart';
import 'package:bloc_event_status/bloc_event_status.dart';

typedef MultiBlocTemplateEventStatusListener<
  TBLoc
      extends BlocCustomEventStatusMixin<TEvent, dynamic, TemplateEventStatus>,
  TEvent
> = MultiBlocCustomEventStatusListener<TBLoc, TEvent, TemplateEventStatus>;
