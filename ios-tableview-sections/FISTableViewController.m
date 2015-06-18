//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"
#import "FISStudent.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FISStudent *Malcolm = [[FISStudent alloc] initWithName:@"Malcolm"
                                              favoriteFood:@"Pizza"
                                             favoriteColor:@"White"
                                     favoriteMusicalArtist:@"Drake"
                                              favoriteGame:@"The Last of Us"];
    
    FISStudent *Jane = [[FISStudent alloc] initWithName:@"Jane"
                                           favoriteFood:@"Pad Thai"
                                          favoriteColor:@"Seafoam green"
                                  favoriteMusicalArtist:@"Taylor Swift"
                                           favoriteGame:@"Threes!"];
    
    FISStudent *Slim = [[FISStudent alloc] initWithName:@"Slim"
                                           favoriteFood:@"Steak"
                                          favoriteColor:@"Navy blue"
                                  favoriteMusicalArtist:@"Tupac"
                                           favoriteGame:@"FFVII"];
    
    FISStudent *Evelynn = [[FISStudent alloc] initWithName:@"Evelynn"
                                              favoriteFood:@"Sashimi"
                                             favoriteColor:@"Pink"
                                     favoriteMusicalArtist:@"Beyoncé"
                                              favoriteGame:@"Chess"];
    
    self.students = @[Malcolm, Jane, Slim, Evelynn];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return (NSInteger)self.students.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    FISStudent *student = self.students[(NSUInteger)section];
    return (NSInteger)student.favoriteThings.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expandingCell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    FISStudent *student = self.students[(NSUInteger)section];
    
    NSDictionary *favoriteThing = student.favoriteThings[(NSUInteger)row];
    cell.detailTextLabel.text = [[favoriteThing allValues] componentsJoinedByString:@""];
    cell.textLabel.text = [[favoriteThing allKeys] componentsJoinedByString:@""];
    cell.textLabel.textColor = [UIColor lightGrayColor];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    FISStudent *student = self.students[(NSUInteger)section];
    return student.name;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 35;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
