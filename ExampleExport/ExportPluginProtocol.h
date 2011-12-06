/*
 *     Generated by class-dump 3.3.4 (64 bit).
 *
 *     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2011 by Steve Nygard.
 */

@protocol ExportPluginProtocol
- (id)initWithExportImageObj:(id)arg1;
- (id)settingsView;
- (id)firstView;
- (void)viewWillBeActivated;
- (void)viewWillBeDeactivated;
- (id)requiredFileType;
- (BOOL)wantsDestinationPrompt;
- (id)getDestinationPath;
- (id)defaultFileName;
- (id)defaultDirectory;
- (BOOL)treatSingleSelectionDifferently;
- (BOOL)handlesMovieFiles;
- (BOOL)validateUserCreatedPath:(id)arg1;
- (void)clickExport;
- (void)startExport:(id)arg1;
- (void)performExport:(id)arg1;
- (void *)progress;//- (CDStruct_e5bf5178 *)progress; // Not needed for now
- (void)lockProgress;
- (void)unlockProgress;
- (void)cancelExport;
- (id)name;
@end

