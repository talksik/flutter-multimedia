//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <multimedia/multimedia_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) multimedia_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MultimediaPlugin");
  multimedia_plugin_register_with_registrar(multimedia_registrar);
}
