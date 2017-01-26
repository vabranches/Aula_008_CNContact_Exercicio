import UIKit
import ContactsUI

class ViewController: UIViewController , CNContactPickerDelegate{
    
    //MARK: Outlets
    @IBOutlet weak var textFieldContato: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: Actions
    @IBAction func abrir(_ sender: UIButton) {
        let meuContactPicker = CNContactPickerViewController()
        meuContactPicker.delegate = self
        
        present(meuContactPicker, animated: true)
    }
    
    //MARK: Métodos de CNContactPickerDelegate
    func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
        picker.dismiss(animated: true)
    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        textFieldContato.text = "\(contact.givenName) \(contact.familyName)"
        picker.dismiss(animated: true)
    }



}

