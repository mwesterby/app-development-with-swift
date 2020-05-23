
import UIKit

class EmployeeDetailTableViewController: UITableViewController, UITextFieldDelegate, EmployeeTypeDelegate {

    struct PropertyKeys {
        static let unwindToListIndentifier = "UnwindToListSegue"
    }
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var dobLabel: UILabel!
    @IBOutlet var employeeTypeLabel: UILabel!
    @IBOutlet weak var dobDatePicker: UIDatePicker!
    
    var employee: Employee?
    var isEditingBirthday = false {
        didSet {
            tableView.beginUpdates()
            tableView.endUpdates()
        }
    }
    
    let dobCellIndexPath = IndexPath(row: 1, section: 0)
    let dobDatePickerCellIndexPath = IndexPath(row: 2, section: 0)
    
    var employeeType: EmployeeType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        if let employee = employee {
            navigationItem.title = employee.name
            nameTextField.text = employee.name
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            dobLabel.text = dateFormatter.string(from: employee.dateOfBirth)
            dobLabel.textColor = .black
            employeeTypeLabel.text = employee.employeeType.description()
            employeeTypeLabel.textColor = .black
        } else {
            navigationItem.title = "New Employee"
        }
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        if let name = nameTextField.text, let type = employeeType {
            employee = Employee(name: name, dateOfBirth: dobDatePicker.date, employeeType: type)
            performSegue(withIdentifier: PropertyKeys.unwindToListIndentifier, sender: self)
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        employee = nil
        performSegue(withIdentifier: PropertyKeys.unwindToListIndentifier, sender: self)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if (indexPath == dobCellIndexPath) {
            isEditingBirthday = !isEditingBirthday
            dobLabel.textColor = .black
            dobLabel.text = formatDate(dobDatePicker.date)
        }
    }
    
    @IBAction func dobDatePickerValueChanged(_ sender: UIDatePicker) {
        dobLabel.text = formatDate(dobDatePicker.date)
    }
    
    func formatDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        return dateFormatter.string(from: date)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath == dobDatePickerCellIndexPath) {
            if isEditingBirthday {
                return dobDatePicker.frame.height
            } else {
                return 0.0
            }
        } else {
            return UITableView.automaticDimension
        }
    }
    
    // MARK: - Text Field Delegate
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return false
    }
    
    func didSelect(employeeType: EmployeeType) {
        self.employeeType = employeeType
        
        employeeTypeLabel.text = employeeType.description()
        employeeTypeLabel.textColor = .black
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as? EmployeeTypeTableViewController
        destinationViewController?.delegate = self
    }

}
