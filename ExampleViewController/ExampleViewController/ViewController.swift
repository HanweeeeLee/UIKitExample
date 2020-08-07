//
//  ViewController.swift
//  ExampleViewController
//
//  Created by hanwe on 2020/08/06.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    //MARK: IBOutlet
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: property
    
    var infoData:JSON = JSON.null {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    //MARK: lifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        requestData(param: Dictionary(), completeHandler: { responseJson in
            self.infoData = responseJson
        }, failureHandler: { err in
            
        })
    }
    
    //MARK: function
    
    func initUI() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "TableViewCellType1", bundle: nil), forCellReuseIdentifier: "TableViewCellType1")
        self.tableView.register(UINib(nibName: "TableViewCellType2", bundle: nil), forCellReuseIdentifier: "TableViewCellType2")
        self.tableView.register(UINib(nibName: "TableViewCellType3", bundle: nil), forCellReuseIdentifier: "TableViewCellType3")
        self.tableView.separatorStyle = .none
    }
    
    func requestData(param:[String:Any],completeHandler:@escaping (JSON) -> (), failureHandler: @escaping (Error) -> ()) { //이부분이 원래 REST API로 호출하는 부분. 써버가 없기때문에 json파일로 일단 박아놓고 쓰겠습니다. 이부분은 서버로 구현을 해야합니다.
        DispatchQueue.global().async {
            usleep(1 * 1000 * 1000)//뭔가 인터넷 통신을 하는것처럼 느끼기위해 슬립을 줌
            if let path = Bundle.main.path(forResource: "ExampleJson", ofType: "json") {
                do {
                    let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                    let testJson:JSON = try! JSON.init(data: data)
                    completeHandler(testJson)
                } catch {
                    // handle error
                }
            }
        }
    }
    
    //MARK: action
    
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let type = self.infoData[indexPath.row]["type"].intValue
        var returnValue:CGFloat = 0
        if type == 1 {
            returnValue = 200
        }
        else if type == 2 {
            returnValue = 150
        }
        else if type == 3 {
            returnValue = 50
        }
        return returnValue
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.infoData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let type = self.infoData[indexPath.row]["type"].intValue
        let value:JSON = self.infoData[indexPath.row]["value"]
        if type == 1 {
            let cell:TableViewCellType1 = tableView.dequeueReusableCell(withIdentifier: "TableViewCellType1", for: indexPath) as! TableViewCellType1
            cell.infoData = value
            return cell
        }
        else if type == 2 {
            let cell:TableViewCellType3 = tableView.dequeueReusableCell(withIdentifier: "TableViewCellType3", for: indexPath) as! TableViewCellType3
            cell.infoData = value
            return cell
        }
        else if type == 3 {
            let cell:TableViewCellType2 = tableView.dequeueReusableCell(withIdentifier: "TableViewCellType2", for: indexPath) as! TableViewCellType2
            cell.infoData = value
            return cell
        }
        else {
            return UITableViewCell()
        }
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}
