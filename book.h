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
