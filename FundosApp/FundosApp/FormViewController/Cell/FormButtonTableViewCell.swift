//
//  FormButtonTableViewCell.swift
//  FundosApp
//
//  Created by Vitor Ferraz on 09/05/2018.
//  Copyright © 2018 Vitor Ferraz. All rights reserved.
//

import UIKit

protocol DelegateSegue {
    func performSegue(value:String)
}

class FormButtonTableViewCell: UITableViewCell {
    var delegate:DelegateSegue!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func register(to tableView:UITableView) {
        let nib = UINib(nibName: "FormButtonTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "FormButtonTableViewCell")
    }
    
    @IBAction func sendButtonTapped(_ sender: Any) {
        delegate.performSegue(value: "goToMessageSent")
    }
    
}
