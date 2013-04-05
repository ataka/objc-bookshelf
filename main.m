#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Book : NSObject
{
  NSString* title;
}
-(id) setTitle :(NSString*)t;
-(NSString*) getTitle;
@end

@implementation Book
-(id) setTitle :(NSString*)t
{
  title = t;
  return self;
}
-(NSString*) getTitle {
  return title;
}
@end

int main(void)
{
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  id book = [Book alloc];
  [book setTitle: @"Foundation"];
  printf("Title: %s\n", [[book getTitle] UTF8String]);

  [pool drain];
  return 0;
}
