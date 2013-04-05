#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Book : NSObject
{
  NSString* title;
  NSString* author;
}
-(id) setTitle :(NSString*)t;
-(id) setAuthor :(NSString*)a;
-(NSString*) getTitle;
-(NSString*) getAuthor;
@end

@implementation Book
-(id) setTitle :(NSString*)t
{
  title = t;
  return self;
}
-(id) setAuthor :(NSString*)a
{
  author = a;
  return self;
}
-(NSString*) getTitle {
  return title;
}
-(NSString*) getAuthor {
  return author;
}
@end

int main(void)
{
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  NSMutableArray* bookshelf = [[NSMutableArray alloc] init];

  Book* book1 = [Book alloc];
  [book1 setTitle: @"Foundation"];
  [book1 setAuthor: @"Isaac Asimov"];

  Book* book2 = [Book alloc];
  [book2 setTitle: @"Foundation and Empire"];
  [book2 setAuthor: @"Isaac Asimov"];

  Book* book3 = [Book alloc];
  [book3 setTitle: @"Second Foundation"];
  [book3 setAuthor: @"Isaac Asimov"];

  [bookshelf addObject: book1];
  [bookshelf addObject: book2];
  [bookshelf addObject: book3];

  for (id book in bookshelf){
    printf("Title: %s\n", [[book getTitle] UTF8String]);
    printf("Author: %s\n--\n", [[book getAuthor] UTF8String]);
  }

  [pool drain];
  return 0;
}
