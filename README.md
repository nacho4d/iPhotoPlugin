### iPhoto '11 plugin example

**Description**

This plugin varely does something useful but it demonstrates how to create export plugins.
This project is an update of [this old but super useful post](http://cuboidal.org/iphoto-export-plugin/) so it compiles with Xcode4 and runs with iPhoto '11 (yeahh!). It works with some small modifications.

**Some notes**

To run with iPhoto with Xcode:

1. Make sure you have iPhoto selected in the "Executable" menu in the "Info" pane of your scheme. By doing this Xcode will run iPhoto when you press Cmd+R

2. "Per-configuration build products path" should be by default something like `$(BUILD_DIR)/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)`, change it to something suitable like `/Applications/iPhoto.app/Contents/PlugIns/` so the bundle is created directly inside Contents/PlugIngs/ of iPhoto.app and can be debugged.

3. One last step, make sure you have the rigth permissions so Xcode can write the product inside iPhoto (This is *obviously* not an optimal solution but it will do the job for now: `$ chmod 777 /Applications/iPhoto.app/Contents/PluginIns/`)

