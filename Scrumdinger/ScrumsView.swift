//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Fitsyu  on 19/06/22.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums) {
                CardView(scrum: $0)
                    .listRowBackground($0.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
