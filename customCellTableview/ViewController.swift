//
//  ViewController.swift
//  customCellTableview
//
//  Created by Suneetha Ragupatula on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fruitsTableview: UITableView!
    
    var fruitsArr = [ "apricot", "Banana", "Blueberry", "Cherry", "Coconut", "Fig", "Grapes", "GreenApple", "Kiwi", "Lime", "mango", "Orange", "Peach", "Pears", "Pineapple", "RedApple", "Strawberry", "Watermelon"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fruitsTableview.delegate = self
        fruitsTableview.dataSource = self
        print(fruitsArr)
    }

}
// MARK : -
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsArr.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "FruitsCell", for: indexPath) as! FruitsTableViewCell
        Cell.fruitLabel.text = fruitsArr[indexPath.row]
        Cell.fruitImg.image = UIImage(named: fruitsArr[indexPath.row])
        
        Cell.fruitView.layer.cornerRadius = Cell.fruitView.frame.height / 2
        
        Cell.fruitImg.layer.cornerRadius = Cell.fruitImg.frame.height / 2
        
        
        return Cell
    }
    
    
}

