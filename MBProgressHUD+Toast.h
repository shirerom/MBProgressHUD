//
//  MBProgressHUD+Toast.h
//  MBProgressHUD
//
//  Created by Johannes Bauer on 18.07.13.
//  Copyright (c) 2013 Matej Bukovinski. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Toast)

+ (void)toastInView:(UIView*)view text:(NSString*)text;
+ (void)toastWithCheckmarkInView:(UIView*)view text:(NSString*)text;

@end
