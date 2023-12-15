//
//  ContentView.swift
//  CalendarDemo
//
//

import SwiftUI
import FSCalendar

struct ContentView: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
            CalendarView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
