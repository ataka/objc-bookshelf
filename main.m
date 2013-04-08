#import <Foundation/Foundation.h>
#import <stdio.h>
#import "book.h"
#import "Bookshelf.h"

int main(void)
{
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  
  Bookshelf* niigata = [[Bookshelf alloc] initWithPlace:@"Home at Niigata"];

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

  [niigata addBook: book1];
  [niigata addBook: book2];
  [niigata addBook: book3];
  [niigata addBook: book4];

  printf("at %s\n----\n", [[niigata place] UTF8String]);
  for (Book* book in [niigata books]){
    printf("Title: %s\n", [[book title] UTF8String]);
    printf("Author: %s\n--\n", [[book author] UTF8String]);
  }

  [pool drain];
  return 0;
}
