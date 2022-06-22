//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Fitsyu  on 23/06/22.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data(
    )
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $data.title)
                HStack {
                    Slider(value: $data.lengthInMinutes, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    Text("\(Int(data.lengthInMinutes)) minutes")
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
.previewInterfaceOrientation(.portrait)
    }
}
