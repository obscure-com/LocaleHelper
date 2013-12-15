/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ComObscureLocalehelperModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "TiLocale.h"

@interface ComObscureLocalehelperModule ()
@property (nonatomic, strong) NSString * localeString;
@end

@implementation ComObscureLocalehelperModule

#pragma mark Internal

- (id)moduleGUID {
	return @"c3519c26-c3d4-4c02-880e-67372893d1f1";
}

- (NSString*)moduleId {
	return @"com.obscure.localehelper";
}

- (void)setLocale:(id)value {
    ENSURE_STRING(value)
    self.localeString = value;
    [TiLocale setLocale:self.localeString];
}

- (id)locale {
    return self.localeString;
}

@end
