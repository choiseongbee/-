//
//  WasteChartView.swift
//  USG01
//
//  Created by 최성빈 on 2023/02/19.
//

import SwiftUI
import Charts

struct WasteData: Identifiable {
    let id = UUID()
    let date: Date
    let weight: Double

    init(month: Int, day: Int, weight: Double) {
        let calendar = Calendar.autoupdatingCurrent
        self.date = calendar.date(from: DateComponents(year: 2023, month: month, day: day))!
        self.weight = weight
    }
}

struct WasteChartView: View {
    @State private var data: [WasteData] = []
    @State private var generalWasteData: [WasteData] = []

    var body: some View {
        NavigationView {
            VStack {
                WasteChart(title: "재활용 쓰레기 소비",
                           data: data,
                           onAdd: { weight in
                    let date = Date()
                    data.append(WasteData(month: Calendar.current.component(.month, from: date),
                                          day: Calendar.current.component(.day, from: date),
                                          weight: weight))
                })

                WasteChart(title: "일반쓰레기 소비",
                           data: generalWasteData,
                           onAdd: { weight in
                    let date = Date()
                    generalWasteData.append(WasteData(month: Calendar.current.component(.month, from: date),
                                                      day: Calendar.current.component(.day, from: date),
                                                      weight: weight))
                })
            }
            .navigationBarTitle(Text("Waste Chart"))
        }
    }
}

struct WasteChart: View {
    let title: String
    let data: [WasteData]
    let onAdd: (Double) -> Void
    @State private var weightInput: String = ""

    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.custom("BMJUAOTF", size: 28))
                    .fontWeight(.regular)

                Spacer()

                NavigationLink(destination: AddView(onAdd: { weight in
                    onAdd(weight)
                })) {
                    Text("측정하기")
                        .font(.custom("BMJUAOTF", size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .frame(width: 89.0, height: 34.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 19)
                                .stroke(Color.black, lineWidth: 2)
                        )
                }
            }
            .padding()

            Chart(data) {
                LineMark(x: .value("day", $0.date), y: .value("weight",$0.weight))
                PointMark(x: .value("day", $0.date), y: .value("weight",$0.weight))
                RuleMark(y: .value("weightAverage",496.23)).foregroundStyle(.green)
            }
            .frame(width: 300, height: 200)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red: 0.87, green: 0.96, blue: 0.88))
            )
        }
    }
}

struct AddView: View {
    let onAdd: (Double) -> Void
    @State private var weightInput: String = ""

    var body: some View {
        VStack {
            TextField("Enter weight", text: $weightInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)

            Button(action: {
                guard let weight = Double(weightInput) else {
                    return
                }
                onAdd(weight)
            }) {
                Text("Add")
            }
        }
        .padding()
        .navigationBarTitle(Text("Add Waste"))
    }
}


struct WasteChartView_Previews: PreviewProvider {
    static var previews: some View {
        WasteChartView()
    }
}
