//
//  DrugAdviceTableViewCell.swift
//  SwiftPerfectDoc
//
//  Created by Chen on 16/3/28.
//  Copyright © 2016年 ChenYingPing. All rights reserved.
//

import UIKit

protocol DrugAdviceTableViewCellDataSource
{
    var time : String { get }
    var title : String { get }
    var content : String { get }
    var url_title : String { get }
    var store_title : String { get }
    var buyNumber : String { get }
    var phoneNumber : String { get }
}

protocol DrugAdviceTableViewCellDelegate
{
    var timeFont: UIFont { get }
    var titleFont: UIFont { get }
    var contentFont: UIFont { get }
    
    var timeColor: UIColor { get }
    var titleColor: UIColor { get }
    var contentColor: UIColor { get }
    var buttonColor: UIColor { get }
}

extension DrugAdviceTableViewCellDelegate
{
    var timeFont: UIFont { return SystemFont(AutoChangeSize(14)) }
    var titleFont: UIFont { return SystemBordFont(AutoChangeSize(18)) }
    var contentFont: UIFont { return SystemFont(AutoChangeSize(16)) }
    var timeColor: UIColor { return UIColor.rgbColorWithHexString(BlackText666Color) }
    var titleColor: UIColor { return UIColor.rgbColorWithHexString(BlackText333Color) }
    var contentColor: UIColor { return UIColor.rgbColorWithHexString(BlackText333Color) }
    var buttonColor: UIColor { return UIColor.rgbColorWithHexString("#2087fb") }
}

class DrugAdviceTableViewCell: UITableViewCell
{
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var buyNumber: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var shopLocation: UIButton!
    @IBOutlet weak var phoneNumber: UIButton!
    
    private var dataSource: DrugAdviceTableViewCellDataSource?
    private var delegate: DrugAdviceTableViewCellDelegate?
    
    func configure(withDataSource dataSource: DrugAdviceTableViewCellDataSource, delegate: DrugAdviceTableViewCellDelegate?)
    {
        self.dataSource = dataSource
        self.delegate = delegate
        
        time.text = dataSource.time
        title.text = dataSource.title
        content.text = dataSource.content
        buyNumber.text = dataSource.buyNumber
        buyButton.setTitle(dataSource.url_title, forState: .Normal)
        shopLocation.setTitle(dataSource.store_title, forState: .Normal)
        phoneNumber.setTitle(dataSource.phoneNumber, forState: .Normal)
        
        time.font = delegate?.timeFont
        title.font = delegate?.titleFont
        content.font = delegate?.contentFont
        buyNumber.font = delegate?.contentFont
        buyButton.titleLabel?.font = delegate?.contentFont
        shopLocation.titleLabel?.font = delegate?.contentFont
        phoneNumber.titleLabel?.font = delegate?.contentFont
        
        time.textColor = delegate?.timeColor
        title.textColor = delegate?.titleColor
        content.textColor = delegate?.contentColor
        buyNumber.textColor = delegate?.contentColor
        buyButton.titleLabel?.textColor = delegate?.buttonColor
        shopLocation.titleLabel?.textColor = delegate?.buttonColor
        phoneNumber.titleLabel?.textColor = delegate?.buttonColor
    }
}
