//
//  ReservationCell.swift
//  Instalook-User
//
//  Created by jets on 5/29/19.
//  Copyright © 2019 Instalook. All rights reserved.
//

import UIKit

class ReservationCell: UITableViewCell, ReservationCellView{

    @IBOutlet weak var serviceName: UILabel!
    @IBOutlet weak var salonName: UILabel!
    @IBOutlet weak var timeOrTurnLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
         timeOrTurnLabel =  Utils.customizeProfileImage(borderImage: 2.0, cornerRedius: timeOrTurnLabel.frame.height/2,imageView: timeOrTurnLabel) as! UILabel
        
        // Initialization code
    }
    override func prepareForReuse() {
        timeOrTurnLabel =  Utils.customizeProfileImage(borderImage: 2.0, cornerRedius: timeOrTurnLabel.frame.height/2,imageView: timeOrTurnLabel) as! UILabel

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func showSalonName(salonName:String){
        self.salonName.text = salonName
    }
    func showDateTime(dateTime:String){
        print("\(Int(Double(dateTime)!))")
        self.timeOrTurnLabel.text = convertMillToDate(time: Int(Double(dateTime)!))
    }
    func showBarberName(name:String){
        self.serviceName.text = name
    }
    func convertMillToDate(time:Int) -> String
    {
        let dateVar = Date.init(timeIntervalSinceNow: TimeInterval(time)/1000)
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a"
        return dateFormatter.string(from: dateVar)
    }

}
