import SwiftUI

struct CustomButton: View {
  var label: String = "Send"
  var color: Color = Color("accent")
  var action: (() -> Void)
  
  var body: some View {
    VStack(alignment: .leading) {
      Button(
        action: action,
        label: {
          Text(label)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
        }
      )
      .buttonStyle(.borderedProminent)
      .padding(.top, 20)
    }
    .padding(.horizontal, 50)
  }
}
