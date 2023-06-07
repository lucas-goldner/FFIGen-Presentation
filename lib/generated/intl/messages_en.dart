// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(count) => "Pushups: ${count} / 10";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "TypicalWay": MessageLookupByLibrary.simpleMessage("Typical way"),
        "agenda": MessageLookupByLibrary.simpleMessage("Agenda"),
        "benefitsAndDownsides":
            MessageLookupByLibrary.simpleMessage("Benefits and downsides"),
        "eventChannels": MessageLookupByLibrary.simpleMessage("Event Channel"),
        "eventChannelsFlutter": MessageLookupByLibrary.simpleMessage(
            "Eventchannel - Flutter setup"),
        "eventChannelsiOS":
            MessageLookupByLibrary.simpleMessage("Eventchannel - iOS setup"),
        "ffigenSetup": MessageLookupByLibrary.simpleMessage("FFIGen Setup"),
        "flutter": MessageLookupByLibrary.simpleMessage("Flutter"),
        "implementsFlutterStreamHandler": MessageLookupByLibrary.simpleMessage(
            "Implements FlutterStreamHandler interface"),
        "invokeFunctions":
            MessageLookupByLibrary.simpleMessage("Invokes functions"),
        "methodChannel": MessageLookupByLibrary.simpleMessage("Method Channel"),
        "methodEventChannels":
            MessageLookupByLibrary.simpleMessage("Method / Eventchannels"),
        "motivation": MessageLookupByLibrary.simpleMessage("Motivation"),
        "presentationFooter":
            MessageLookupByLibrary.simpleMessage("Lucas Goldner, 10.05.2023"),
        "presentationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Comparing ways of accessing native functions"),
        "presentationTitle":
            MessageLookupByLibrary.simpleMessage("FFIGen - The solution ?"),
        "prologue": MessageLookupByLibrary.simpleMessage("Prologue"),
        "pushups": m0,
        "receiveValue": MessageLookupByLibrary.simpleMessage("Receives value"),
        "receivesEvents":
            MessageLookupByLibrary.simpleMessage("Receives Events from Stream"),
        "runFfigen": MessageLookupByLibrary.simpleMessage("Run FFIGen"),
        "startsListening":
            MessageLookupByLibrary.simpleMessage("Starts listening")
      };
}
