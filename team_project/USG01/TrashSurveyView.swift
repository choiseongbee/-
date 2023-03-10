//
//  TrashSurveyView.swift
//  USG01
//
//  Created by kimjiyeon on 2023/03/04.
//

import SwiftUI

struct Question {
    var id: Int
    var text: String
    var image: Image
    var type: QuestionType
    
    enum QuestionType{
        case slider(range: ClosedRange<Int>)
        
        case binary(options: [String])
    }
}

struct TrashSurveyView: View {
    
    @State private var pagenum = 0.0
    
    @State var currentIndex = 0
    
    @State var showResultView = false
    
    @State var showNextQuestio = false
    
    @State var questions: [Question] = [
        Question(id: 1, text: "현재 거주하는 인원은 몇 명인가요?", image: Image("t_survey0"), type: .slider(range: 1...30)), Question(id: 2, text: "10L 종량제 기준 평균 며칠 주기로 교체하시나요?", image: Image("t_survey1"), type: .slider(range: 1...30)), Question(id: 3, text: "하루 중 밖에 있는 시간은 평균적으로 몇 시간인가요?", image: Image("t_survey2"), type: .slider(range: 1...30)),Question(id: 4, text: "평소 물건을 구매한 후 종이 영수증을 받으시나요?", image: Image("t_survey3"), type: .binary(options: ["네","아니오"]))
    ]
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                
                
                Rectangle()
                    .fill(Color(red: 253/255, green: 237/255, blue: 196/255))
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity).ignoresSafeArea()
                
                VStack{
                    
                    Spacer()
                    
                    ProgressView(value: Double(currentIndex), total: Double(questions.count)).padding()
                    
                    if !showNextQuestio{
                        QuestionView(question: questions[currentIndex])
                    }
                    
                    HStack{
                        if currentIndex > 0{
                            Button {
                                withAnimation {
                                    currentIndex -= 1
                                }
                            } label: {
                                Text("이전")
                            }.padding().bold().font(.custom("BMJUAOTF", size: 20)).foregroundColor(.white).background(Color(red: 226/255, green: 196/255, blue: 141/255)).cornerRadius(30).padding()
                        }
                            
                            Spacer()
                            
                            if currentIndex < questions.count - 1{
                                Button {
                                    withAnimation {
                                        currentIndex += 1
                                    }
                                } label: {
                                    Text("다음")
                                }.padding().bold().font(.custom("BMJUAOTF", size: 20)).foregroundColor(.white).background(Color(red: 226/255, green: 196/255, blue: 141/255)).cornerRadius(30).padding()

                            }
                        
                        else {
                            Button {
                                withAnimation {
                                    self.showResultView = true
                                }
                            } label: {
                                Text("제출")
                            }.padding().bold().font(.custom("BMJUAOTF", size: 20)).foregroundColor(.white).background(Color(red: 226/255, green: 196/255, blue: 141/255)).cornerRadius(30).padding()
                        }
                        
                    }

                    
                                        
                }
                
                
            }
            
        }.sheet(isPresented: $showResultView) {
            TrashSurveyResultView(isclosed: $showResultView)
        }
    }
}

struct QuestionView: View{
    let question: Question
    
    var body: some View{
        VStack{
            question.image
            
            ZStack{
                
                Rectangle()
                    .fill(Color.white).padding().cornerRadius(10)
                
                switch question.type{
                case .slider(let range): SliderView(question: question, range: range)
                case .binary(options: let options):
                    YesNoView(question: question, options: options)
                }
            }
        }
    }
    
}

struct SliderView: View{
    var question: Question
    
    var range: ClosedRange<Int>
    
    @State var value: Int = 1
    
    var intProxy: Binding<Double>{
        Binding<Double> (get: {
            return Double(value)
        }, set: { print($0.description)
            value = Int($0)
        })

    }
    
    var body: some View{
        VStack{
            Text(question.text)
            
            Slider(value: intProxy, in: 1...30)
            Text("\(value)")
        }.padding()
    }
}

struct YesNoView: View{
    var question: Question
    
    var options: [String]
    
    @State var selection: String?
    
    var body: some View{
        VStack{
            Text(question.text)
            
            HStack{
                ForEach(options, id: \.self){
                option in Button {
                    selection = option
                } label: {
                    Text(option).padding()
                }.bold().font(.custom("BMJUAOTF", size: 20)).foregroundColor(.white).background(Color(red: 241/255, green: 159/255, blue: 100/255)).cornerRadius(30).padding()

                }}
        }
    }
    
}

struct TrashSurveyView_Previews: PreviewProvider {
    static var previews: some View {
        TrashSurveyView()
    }
}
