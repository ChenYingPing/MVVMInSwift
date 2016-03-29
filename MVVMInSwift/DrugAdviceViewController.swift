//
//  DrugAdviceViewController.swift
//  SwiftPerfectDoc
//
//  Created by Chen on 16/3/28.
//  Copyright © 2016年 ChenYingPing. All rights reserved.
//

import UIKit

class DrugAdviceViewController: UITableViewController
{
    var durgAdvices: [DrugAdviceModel]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "用药建议"
        getDurgAdvices()
        tableView.registerNib(UINib(nibName: "DrugAdviceTableViewCell", bundle: nil), forCellReuseIdentifier: "DrugAdvice")
        tableView.separatorStyle = .None
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func getDurgAdvices()
    {
        for _ in 0...10 {
            let model = DrugAdviceModel()
            model.time = "2016-01-29"
            model.title = "用药建议"
            let number = arc4random() % 4 + 1
            var str = ""
            for _ in 0...number {
               str += "陈应平医生为您提供了用药建议：\r\n尼洛替尼胶囊 (达希纳)1盒 \r\n【艾爽】替吉奥胶囊 20mg*42粒1盒 \r\n驱白巴布期片1盒 \r\n您可以直接下单，药店为您送货上门:"
            }
            model.content = str
            model.url_title = "在线购买>"
            model.store_title = "或到店刷医保卡自提,【提货码781】:"
            model.buyNumber = "查看附近药店位置"
            model.phoneNumber = "客服热线：10086"
            durgAdvices?.append(model)
        }
        self.tableView.reloadData()
    }

    // MARK: - tableViewDataSource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return durgAdvices!.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("DrugAdvice", forIndexPath: indexPath) as! DrugAdviceTableViewCell
        var viewModel = DrugAdviceViewModel()
        viewModel.model = durgAdvices![indexPath.row]
        cell.configure(withDataSource: viewModel, delegate: viewModel)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 350
    }
}
