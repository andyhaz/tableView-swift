//
//  ViewController.swift
//  tableView
//
//  Created by andrew hazlett on 1/9/21.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource  {

 
    @IBOutlet weak var tableViewText: NSTableView!
    
 //   @IBOutlet weak var myViewCell: NSTextField!
    
    let listTable = ["list 1","list 2", "list 3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
//
    func numberOfRows(in tableView: NSTableView) -> Int {
        return listTable.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        let item = (listTable)[row]
        

        let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "userCell_id"), owner: self) as? CustomTableCell
        
        cell?.myViewCell.stringValue = item
        
        return cell
    }
}

