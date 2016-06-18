//
//  VGAlertView.swift
//  VGAlertView
//
//  Created by Vikram Gore on 16/06/16.
//  Copyright © 2016 7vikram7. All rights reserved.
//

import UIKit

class VGAlertView: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableview = UITableView()
    
    
    //MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.delegate = self
        tableview.dataSource = self
        tableview.translatesAutoresizingMaskIntoConstraints = false
        
//        tableview.addConstraint(NSLayoutConstraint(item: tableview, attribute:.Top, relatedBy: .Equal, toItem: self, attribute:.Top, multiplier: 1, constant: 0))
//        tableview.addConstraint(NSLayoutConstraint(item: tableview, attribute:.b, relatedBy: .Equal, toItem: self, attribute:.Top, multiplier: 1, constant: 0))
//        tableview.addConstraint(NSLayoutConstraint(item: tableview, attribute:.Top, relatedBy: .Equal, toItem: self, attribute:.Top, multiplier: 1, constant: 0))
//        tableview.addConstraint(NSLayoutConstraint(item: tableview, attribute:.Top, relatedBy: .Equal, toItem: self, attribute:.Top, multiplier: 1, constant: 0))
        
    }

    //MARK: - Public Methods

    func showAlertOnViewController(parentViewController vc:UIViewController, title:String, message:String ) {
     
        
        
    }
    
    
    //MARK: UITableView Delegate Methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
//        NSArray *visibleIndexPaths = [tableView indexPathsForVisibleRows];
//        
//        NSMutableArray *visibleCellsArray = [[NSMutableArray alloc] init];
//        
//            //  You now have visible cells in visibleCellsArray
//            [visibleCellsArray addObject:[tableView cellForRowAtIndexPath:currentPath]];
//        }
        
        let visibleIndexPaths = tableview.indexPathsForVisibleRows
        
        var visibleCellsArray: [UITableViewCell] = []
        
        for currentIndextPath in visibleIndexPaths! {
           //  You now have visible cells in visibleCellsArray
            visibleCellsArray.append(tableview.cellForRowAtIndexPath(currentIndextPath)!)
        }
        
        let cell = UITableViewCell()
        return cell
    }

//    - (void)showAttributedEdit:(UIViewController *)vc headerTitle:(NSString *)headerTitle headerSubTitle:(NSMutableAttributedString *)headerSubTitle title:(NSMutableAttributedString *)title subTitle:(NSMutableAttributedString *)subTitle closeButtonTitle:(NSString *)closeButtonTitle duration:(NSTimeInterval)duration;



    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
