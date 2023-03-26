//
//  DatePickerSwiftUI.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 26/3/23.
//

import SwiftUI

struct DatePickerSwiftUI: View {
    @State var selectedDate = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected Date: ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker(
                "Select a Date",
                selection: $selectedDate,
                displayedComponents: [.date, .hourAndMinute]
            )
            .accentColor(.red)
            .padding()
            .datePickerStyle(
                CompactDatePickerStyle()
                // GraphicalDatePickerStyle()
                // WheelDatePickerStyle()
            )
        }
        
        //        DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate)
    }
}

struct DatePickerSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerSwiftUI()
    }
}
