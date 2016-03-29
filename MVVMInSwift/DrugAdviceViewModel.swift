//
//  DrugAdviceViewModel.swift
//  SwiftPerfectDoc
//
//  Created by Chen on 16/3/28.
//  Copyright © 2016年 ChenYingPing. All rights reserved.
//

import UIKit


struct DrugAdviceViewModel: DrugAdviceTableViewCellDataSource {
    
    var model: DrugAdviceModel? {
        didSet {
            time = model!.time!
            title = (model?.title)!
            content = (model?.content)!
            url_title = (model?.url_title)!
            store_title = (model?.store_title)!
            buyNumber = model!.buyNumber!
            phoneNumber = model!.phoneNumber!
        }
    }
    
    var time = ""
    var title = ""
    var content = ""
    var url_title = ""
    var store_title = ""
    var buyNumber = ""
    var phoneNumber = ""
}

extension DrugAdviceViewModel: DrugAdviceTableViewCellDelegate {
    
}


