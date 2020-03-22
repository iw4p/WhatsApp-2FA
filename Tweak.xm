%hook WASettingsViewController

-(void)viewDidLoad {

%orig;


NSString *path =[NSHomeDirectory() stringByAppendingString:@"/Library"];
NSDictionary *dict =[NSDictionary dictionaryWithContentsOfFile:[[path stringByAppendingPathComponent:@"2fa"]  stringByAppendingPathExtension:@"plist"]];
NSString *value = dict[@"f6"];


    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Your 2FA code"
                                                message:value
                                               delegate:self
                                      cancelButtonTitle:@"OK"
                                      otherButtonTitles:nil];
    [alert show];


}

%end
