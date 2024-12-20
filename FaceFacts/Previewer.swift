//
//  Previewer.swift
//  FaceFacts
//
//  Created by Michael Robinson on 12/20/24.
//

import Foundation
import SwiftData

@MainActor
struct Previewer {
    let container: ModelContainer
    let event: Event
    let person: Person
    
    init() throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try ModelContainer(for: Person.self, configurations: config)
        
        event = Event(name: "Dimension Jump", location: "Nottingham")
        person = Person(name: "Scott Robinson", emailAddress: "scott@redhat.com", details: "Awesome", metAt: event)
        
        container.mainContext.insert(person)
    }
}
