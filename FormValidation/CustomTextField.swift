import SwiftUI

struct CustomTextField: View {
  var label: String
  @Binding var text: String
  var placeholder: String = ""
  var errorMsg: String = ""
  var keyboardType: UIKeyboardType = .default
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(label)
        .font(.headline)
        .padding(.top, 10)
        .padding(.bottom, 0)
      TextField(
        "",
        text: $text,
        prompt: Text(placeholder)
      )
      .padding(.horizontal, 10)
      .padding(.vertical, 5)
      .overlay(
        RoundedRectangle(cornerRadius: 5)
          .stroke(Color("default"), lineWidth: 2)
      )
      .keyboardType(keyboardType)
      Text(errorMsg)
        .fontWeight(Font.Weight.light)
        .foregroundColor(Color("danger"))
        .fixedSize()
        .frame(width: .infinity, height: 10, alignment: .leading)
    }
    .padding(.horizontal, 50)
  }
}
