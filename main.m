#import <objc/Object.h>
#import <stdio.h>

@interface Point : Object
{
        int x;
}
-(id) setX :(int)x;
-(int) getX;
@end

@implementation Point
-(id) setX :(int)x
{
  self->x = x;
  return self;
}
-(int) getX {
  return x;
}
@end

int main(void)
{
  id point = [Point alloc];
  [point setX: 10];
  printf("Point X is %d\n.", [point getX]);

  return 0;
}
