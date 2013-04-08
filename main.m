#import <Foundation/Foundation.h>
#import <stdio.h>
#import "Bookshelf.h"

int main(void)
{
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  
  Bookshelf* niigata = [[Bookshelf alloc] initWithPlace:@"Home at Niigata"];

  NSDictionary* book1 = [NSDictionary dictionaryWithObjectsAndKeys:
                                        @"Foundation", @"title",
                                      @"Issac Asimov", @"author",
                                      nil];
  NSDictionary* book2 = [NSDictionary dictionaryWithObjectsAndKeys:
                                        @"Foundation and Empire", @"title",
                                      @"Issac Asimov", @"author",
                                      nil];
  NSDictionary* book3 = [NSDictionary dictionaryWithObjectsAndKeys:
                                        @"Second Foundation", @"title",
                                      @"Issac Asimov", @"author",
                                      nil];
  NSDictionary* book4 = [NSDictionary dictionaryWithObjectsAndKeys:
                                        @"Ender's Game", @"title",
                                      @"Orson Scott Card", @"author",
                                      nil];

  [niigata addBook: book1];
  [niigata addBook: book2];
  [niigata addBook: book3];
  [niigata addBook: book4];

  printf("at %s\n----\n", [niigata.place UTF8String]);
  for (NSDictionary* book in niigata.books){
    printf("Title: %s\n", [[book objectForKey: @"title"] UTF8String]);
    printf("Author: %s\n--\n", [[book objectForKey: @"author"] UTF8String]);
  }

  [pool drain];
  return 0;
}
