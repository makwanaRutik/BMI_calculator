//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_audio_recorder/FlutterAudioRecorderPlugin.h>)
#import <flutter_audio_recorder/FlutterAudioRecorderPlugin.h>
#else
@import flutter_audio_recorder;
#endif

#if __has_include(<path_provider/FLTPathProviderPlugin.h>)
#import <path_provider/FLTPathProviderPlugin.h>
#else
@import path_provider;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterAudioRecorderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterAudioRecorderPlugin"]];
  [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
}

@end
