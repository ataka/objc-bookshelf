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

  NSMutableArray* bookshelf = [[NSMutableArray alloc] init];

  id book1 = [Book alloc];
  [book1 setTitle: @"Foundation"];

  Book* book2 = [Book alloc];
  [book2 setTitle: @"Foundation and Empire"];

  [bookshelf addObject: book1];
  [bookshelf addObject: book2];

  for (id book in bookshelf){
    printf("Title: %s\n", [[book getTitle] UTF8String]);
  }

  [pool drain];
  return 0;
}
