//
//  MBProgressHUD+Toast.m
//  MBProgressHUD
//
//  Created by Johannes Bauer on 18.07.13.
//  Copyright (c) 2013 Matej Bukovinski. All rights reserved.
//

#import "MBProgressHUD+Toast.h"

@implementation MBProgressHUD (Toast)

+ (void)toastInView:(UIView *)view text:(NSString *)text
{
	static NSInteger toastTag = 44883; // 44883 == "hud" on cell keyboard 
	
	MBProgressHUD* hud = [MBProgressHUD subviewFromView:view withTag:toastTag];
	
	if (hud == nil) {
		
		hud = [[MBProgressHUD alloc] initWithView:view];
		hud.tag = toastTag;
		hud.mode = MBProgressHUDModeCustomView;
		
		[view addSubview:hud];
	}
	
	hud.labelText = text;
	
	[hud show:YES];
	[hud hide:YES afterDelay:1.5];
}

+ (MBProgressHUD*)subviewFromView:(UIView*)view withTag:(NSInteger)tag
{
	for (UIView* subview in view.subviews) {
    
		if (subview.tag == tag) {
			return (MBProgressHUD*)subview;
		}
	}
	
	return nil;
}

@end
