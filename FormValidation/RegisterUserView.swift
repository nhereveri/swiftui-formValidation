import SwiftUI

struct RegisterUserView: View {
  @StateObject private var viewModel = ViewModel()
  
  var body: some View {
    ZStack {
      Rectangle()
        .fill(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
      VStack {
        CustomTextField(
          label: "Username",
          text: $viewModel.name)
        CustomTextField(
          label: "E-mail",
          text: $viewModel.email,
          keyboardType: .emailAddress)
        CustomTextField(
          label: "Password",
          text: $viewModel.password)
        CustomTextField(
          label: "Password confirmation",
          text: $viewModel.confirm_password)
        CustomButton() {
          viewModel.evaluate()
        }
      }
    }
  }
}

struct RegisterUserView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterUserView()
  }
}
