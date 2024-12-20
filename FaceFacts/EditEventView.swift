//
//  EditEventView.swift
//  FaceFacts
//
//  Created by Michael Robinson on 12/20/24.
//

import SwiftUI

struct EditEventView: View {
    @Bindable var event: Event
    var body: some View {
        Form {
            TextField("Name of Event", text: $event.name)
            TextField("Location", text: $event.location)
        }
        .navigationTitle("Edit Event")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    do {
        let preview = try Previewer()
        
        return EditEventView(event: preview.event).modelContainer(preview.container)
    } catch {
        return Text("Failed to create preview:\(error.localizedDescription)")
    }
}
