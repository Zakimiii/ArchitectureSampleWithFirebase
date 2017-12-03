import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let presenter = ListPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
        presenter.losdPosts() {
            self.tableView.reloadData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == R.segue.listViewController.toPost.identifier {
            if let vc = segue.destination as? PostViewController,
                let snap = presenter.selectedSnapshot {
                vc.presenter.selectedPost = Post(
                    id: snap.documentID,
                    user: snap["user"] as! String,
                    content: snap["content"] as! String,
                    date: snap["date"] as! Date
                )
            }
        }
    }
    
    @IBAction func addButtonTapped() {
        presenter.selectedSnapshot = nil
        self.toPost()
    }
    
    func initializeTableView() {
        tableView.register(R.nib.listTableViewCell)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.estimatedRowHeight = 150
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    func toPost() {
        self.performSegue(withIdentifier: R.segue.listViewController.toPost, sender: self)
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.contentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.listTableViewCell.identifier) as? ListTableViewCell else { return UITableViewCell() }
        
        let content = presenter.contentArray[indexPath.row]
        let date = content["date"] as! Date
        cell.setCellData(date: date, content: String(describing: content["content"]!))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.select(at: indexPath.row)
        self.toPost()
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            presenter.delete(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: .fade)
        }
    }
}