### iPhoto '11 Export PlugIn example

**Description**

This project is based on [this old but super useful post](http://cuboidal.org/iphoto-export-plugin/) which was great but iPhoto plugin protocols have changed a bit, furthermore Xcode is now completely different… this version addresses those problems and runs with iPhoto '11 using the latest Xcode4 :)

**One step before running it with Xcode**

Besides having iPhoto in the usual location off-course, make sure you have enough permissions:

    $ sudo chmod o+w /Applications/iPhoto.app/Contents/PlugIns/

**Why do you need to do this?**

Because two things have been changed in Xcode project for easier debug:

- iPhoto.app is the executable of the debug configuration

- "Per-configuration build products path" has been changed to `/Applications/iPhoto.app/Contents/PlugIns/` so the bundle is created directly inside Contents/PlugIngs/ of iPhoto.app. (default was `$(BUILD_DIR)/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)` )

**TODOs**

Recent versions of iPhoto has at least three kinds of plugins: *ExportPlugin*, *accountconfigplugin* and *publisher*
My goal is to create a *publisher* plugin for other services than Facebook or Flickr.
