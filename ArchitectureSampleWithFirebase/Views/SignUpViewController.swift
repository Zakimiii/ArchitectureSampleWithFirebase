import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let presenter = SignUpPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if presenter.isUserVerified { toList() }
    }
    
    @IBAction func signUpButtonTapped() {
        guard let email = emailTextField.text else  { return }
        guard let password = passwordTextField.text else { return }
        
        presenter.signUp(with: email, and: password) { (user, error) in
            if let e = error {
                print(e.localizedDescription)
                return
            }
            
            user?.sendEmailVerification() { (error) in
                if let e = error {
                    print(e.localizedDescription)
                    return
                }
                self.toLogin()
            }
        }
    }
    @IBAction func loginButtonTapped() {
        toLogin()
    }
    
    func initializeUI() {
        emailTextField.delegate = self
        passwordTextField.delegate = self
        passwordTextField.isSecureTextEntry = true
    }

    func toLogin() {
        self.performSegue(withIdentifier: R.segue.signUpViewController.toLogin, sender: self)
    }

    func toList() {
        self.performSegue(withIdentifier: R.segue.signUpViewController.toList, sender: self)
    }
    
    func isUserVerified() -> Bool {
        guard let user = Auth.auth().currentUser else { return false }
        return user.isEmailVerified
    }
}

extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
