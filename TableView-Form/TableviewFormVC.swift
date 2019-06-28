//
//  TableviewFormVC.swift
//  TableView-Form
//
//  Created by Rohit Prajapati on 09/03/19.
//  Copyright © 2019 Rohit Prajapati. All rights reserved.
//

import UIKit

class TableviewFormVC: UITableViewController{

    
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var firstnameTextfield: UITextField!
    @IBOutlet weak var lastnameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    var signInShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func didTapSignIn() {
        
    }
    
    @IBAction func didTapSignUp() {
        
    }
    
    @IBAction func toggleForm() {
        
        signInShowing = !signInShowing
        
        if signInShowing {
            
        } else {
            
        }
        
        tableView.reloadData()
    }
    
   
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        let signInHiddenRows = [2,3,6,7]
        let signUpHiddenRows = [5,8]
        
        if indexPath.row == 0  {
            return tableView.frame.height * 0.33
        }
        
        else if signInShowing {
            if signInHiddenRows.contains(indexPath.row) {
                return 0
            }
        } else {
            if signUpHiddenRows.contains(indexPath.row) {
                return 0
            }
        }
        
        return super.tableView(tableView, heightForRowAt: indexPath)

    }

}
