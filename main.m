#import <Foundation/Foundation.h>
#import <stdio.h>
#import "book.h"

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

  Book* book4 = [Book alloc];
  [book4 setTitle: @"Ender's Game"];
  [book4 setAuthor: @"Orson Scott Card"];

  [bookshelf addObject: book1];
  [bookshelf addObject: book2];
  [bookshelf addObject: book3];
  [bookshelf addObject: book4];

  for (id book in bookshelf){
    printf("Title: %s\n", [[book title] UTF8String]);
    printf("Author: %s\n--\n", [[book author] UTF8String]);
  }

  [pool drain];
  return 0;
}
