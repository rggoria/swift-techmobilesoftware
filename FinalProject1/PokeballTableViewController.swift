//
//  PokeballTableViewController.swift
//  FinalProject1
//
//  Created by Syrup on 3/24/22.
//

import UIKit

class PokeballTableViewController: UITableViewController {
    
    var items: [Item] = [
        Item(name: "Poke Ball", desc: "A device for catching wild Pokémon. It's thrown like a ball at a Pokémon, comfortably encapsulating its target.", imageFile: "pokeBall"),
        Item(name: "Great Ball", desc: "A good, high-performance Poké Ball that provides a higher success rate for catching Pokémon than a standard Poké Ball.", imageFile: "greatBall"),
        Item(name: "Ultra Ball", desc: "An ultra-high-performance Poké Ball that provides a higher success rate for catching Pokémon than a Great Ball.", imageFile: "ultraBall"),
        Item(name: "Master Ball", desc: "The best Poké Ball with the ultimate level of performance. With it, you will catch any wild Pokémon without fail.", imageFile: "masterBall"),
        Item(name: "Fast Ball", desc: "A Poké Ball that makes it easier to catch Pokemon that are usually very quick to run away.", imageFile: "fastBall"),
        Item(name: "Level Ball", desc: "A Poké Ball that makes it easier to catch Pokemon that are at a lower level than your own Pokémon.", imageFile: "levelBall"),
        Item(name: "Lure Ball", desc: "A Poké Ball that is good for catching Pokémon that you reel in with a rod while out fishing.", imageFile: "lureBall"),
        Item(name: "Heavy Ball", desc: "A Poké Ball that is better than usual at catching very heavy Pokémon.", imageFile: "heavyBall"),
        Item(name: "Love Ball", desc: "A Poké Ball that works best when catching a Pokémon that is of the opposite gender of your Pokémon.", imageFile: "loveBall"),
        Item(name: "Friend Ball", desc: "A strange Poké Ball that will make the wild Pokémon caught with it more friendly toward you immediately.", imageFile: "friendBall"),
        Item(name: "Moon Ball", desc: "A Poké Ball that will make it easier to catch Pokémon that can evolve using a Moon Stone.", imageFile: "moonBall"),
        Item(name: "Net Ball", desc: "A somewhat different Poké Ball that is more effective when attempting to catch Water- or Bug-type Pokemon.", imageFile: "netBall"),
        Item(name: "Nest Ball", desc: "A somewhat different Poké Ball that becomes more effective the lower the level of the wild Pokémon.", imageFile: "nestBall"),
        Item(name: "Repeat Ball", desc: "A somewhat different Poké Ball that works especially well on a Pokémon species that has been caught before.", imageFile: "repeatBall"),
        Item(name: "Timer Ball", desc: "A somewhat different Poké Ball that becomes progressively more effective at catching Pokémon the more turns that are taken in battle.", imageFile: "timerBall"),
        Item(name: "Luxury Ball", desc: "A particularly comfortable Poké Ball that makes a wild Pokémon quickly grow friendlier after being caught.", imageFile: "luxuryBall"),
        Item(name: "Premier Ball", desc: "A somewhat rare Poké Ball that was made as a commemorative item used to celebrate an event of some sort.", imageFile: "premierBall"),
        Item(name: "Dive Ball", desc: "A somewhat different Poké Ball that works especially well when catching Pokémon that live underwater.", imageFile: "diveBall"),
        Item(name: "Dusk Ball", desc: "A somewhat different Poké Ball that makes it easier to catch wild Pokémon at night or in dark places such as caves.", imageFile: "duskBall"),
        Item(name: "Heal Ball", desc: "A remedial Poké Ball that restores the HP of a Pokémon caught with it and eliminates any status conditions.", imageFile: "healBall"),
        Item(name: "Quick Ball", desc: "A somewhat different Poké Ball that has a more successful catch rate if used at the start of a wild encounter.", imageFile: "quickBall"),
        Item(name: "Beast Ball", desc: "A somewhat different Poké Ball that has a low success rate for catching a Pokémon.", imageFile: "beastBall")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemID", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = items[indexPath.row].desc
        cell.imageView?.image = UIImage(named: items[indexPath.row].imageFile)

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! PokeballViewController
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let item = items[indexPath.row]
            vc.sendItem = item
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
