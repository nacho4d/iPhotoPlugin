//
//  ExampleExport.h
//  ExampleExport
//
//  Created by Guillermo Enriquez on 12/5/11.
//  Copyright (c) 2011 nacho4d. All rights reserved.
//

#import "ExportPluginProtocol.h"
#import "ExportMgr.h"

@interface ExampleExport : NSObject <ExportPluginProtocol>
{
	IBOutlet id firstView;
	IBOutlet id lastView;
	IBOutlet NSBox *settingsBox;
	
	ExportMgr *exportManager;
}



@end
