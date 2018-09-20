//
//  GoalCell.swift
//  goal-post-app
//
//  Created by Adam Gusky on 9/18/18.
//  Copyright © 2018 Adam Gusky. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var completionView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(goal: Goal) {
        self.descriptionLabel.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
    }
    
}
