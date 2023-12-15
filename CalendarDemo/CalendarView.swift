//
//  CalendarView.swift
//  CalendarDemo
//
//

import SwiftUI
import FSCalendar

struct CalendarView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some FSCalendar {
        let view = FSCalendar()
        view.delegate = context.coordinator
        view.allowsSelection = true
        view.scope = .month
        view.pagingEnabled = false // set multi month mode
        view.scrollDirection = .vertical
        return view
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
            Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource {
        var parent: CalendarView
        
        init(parent: CalendarView) {
            self.parent = parent
        }
        
        func calendar(_ calendar: FSCalendar, shouldSelect date: Date, at monthPosition: FSCalendarMonthPosition) -> Bool {
            // check for date for events and set false if no event
            false
        }
        
        func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
            print("Selected Data \(date)")
        }
        
        func calendar(_ calendar: FSCalendar, willDisplay cell: FSCalendarCell, for date: Date, at monthPosition: FSCalendarMonthPosition) {
            // check for active date and set color
            cell.titleLabel.textColor = .gray
        }
        
        
    }
    
}
