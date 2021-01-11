//
//  ViewController.m
//  ObjC-Tutorial1
//
//  Created by Kuiduan Zeng on 1/11/21.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;


@property (weak, nonatomic) IBOutlet UILabel *notificationLabel;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.username = @"bob";
    self.password = @"securepw";
    
    self.passwordTextField.secureTextEntry = YES;
    NSLog(@"%@%@", self.username, self.password);
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (IBAction)loginWasPressed:(UIButton *)sender {
    BOOL isUsersEqual = [self.username isEqualToString:[self.usernameTextField text]];
    
    BOOL isPasswordsEqual = [self.password isEqualToString:[self.passwordTextField text]];
    
    if (isUsersEqual && isPasswordsEqual) {
        NSLog(@"SUCCESS!");
        [self.notificationLabel setText:@"Congratulations you have logged in!"];
    } else {
        NSLog(@"FAILURE!");
        [self.notificationLabel setText:@"Your username or password was incorrect!"];
    }
}


@end
