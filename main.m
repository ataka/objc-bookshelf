#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Book : NSObject
{
  char* title;
}
-(id) setTitle :(char*)t;
-(char*) getTitle;
@end

@implementation Book
-(id) setTitle :(char*)t
{
  title = t;
  return self;
}
-(char*) getTitle {
  return title;
}
@end

int main(void)
{
//  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  id book = [Book alloc];
  [book setTitle: "Foundation"];
  printf("Title: %s\n.", [book getTitle]);

//  [pool drain];
  return 0;
}
