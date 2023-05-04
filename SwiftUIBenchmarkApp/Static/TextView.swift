import SwiftUI
struct TextView: View {
    var numberOfElements = 200
    let maxColumns = 50
    var body: some View {
        let rows = (numberOfElements / maxColumns) + 1 
        VStack(spacing: 0){
                ForEach(0..<rows){ r in
                    HStack(spacing: 0){
                        let remainingElements = (numberOfElements - (r * maxColumns))
                        let columns = min(remainingElements, maxColumns)
                        ForEach(0..<columns) { c in
                            Text("\(c)")
                                .font(.system(size: 6))
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.orange)
    }
}
