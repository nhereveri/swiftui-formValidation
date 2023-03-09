import Foundation

extension RegisterUserView {
  @MainActor class ViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirm_password: String = ""
    @Published var errors = [String: String]()
    
    func evaluate() {
      let inputs = [
        "name": name,
        "email": email,
        "password": password,
        "confirm_password": confirm_password
      ]
      let rules = [
        "name": "required",
        "email": "required",
        "password": "required",
        "confirm_password": "required"
      ]
    }
  }
}
