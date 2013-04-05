#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Point : NSObject
{
  int x;
}
-(id) setX :(int)x_;
-(int) getX;
@end

@implementation Point
-(id) setX :(int)x_
{
  x = x_;
  return self;
}
-(int) getX {
  return x;
}
@end

int main(void)
{
//  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  id point = [Point alloc];
  [point setX: 10];
  printf("Point X is %d\n.", [point getX]);

//  [pool drain];
  return 0;
}
