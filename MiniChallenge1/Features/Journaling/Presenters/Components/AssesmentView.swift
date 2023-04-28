//
//  AssesmentView.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 28/04/23.
//

import SwiftUI

struct AssesmentView: View {
        @State private var selectedAnswer = ""
        @State private var step = 1
        let totalSteps = 9

        var body: some View {
            VStack {
                HStack {
                    Spacer()
                    Text("\(step)/\(totalSteps)")
                        .font(.headline)
                }
                Spacer() .frame(height: 200)
                Text("Ini pertanyaan yang gatau apa, tapi you love me gak sih sebenernya?")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                VStack(alignment: .leading) {
                        HStack {
                            VStack(alignment: .center) {
                                Text("A")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.brown)
                            } .frame(width: 64, height: 64)
                                .background(Color.primary.opacity(0.05))
                            Text("Tidak Pernah")
                                .font(.title2)
                                .padding(8)
                            Spacer()
                        }
                        .padding(10)
                    HStack {
                        VStack(alignment: .center) {
                            Text("B")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.brown)
                        } .frame(width: 64, height: 64)
                            .background(Color.primary.opacity(0.05))
                        Text("Jarang")
                            .font(.title2)
                            .padding(8)
                        Spacer()
                    }
                    .padding(10)
                    HStack {
                        VStack(alignment: .center) {
                            Text("C")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.brown)
                        } .frame(width: 64, height: 64)
                            .background(Color.primary.opacity(0.05))
                        Text("Terkadang")
                            .font(.title2)
                            .padding(8)
                        Spacer()
                    }
                    .padding(10)
                    HStack {
                        VStack(alignment: .center) {
                            Text("D")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.brown)
                        } .frame(width: 64, height: 64)
                            .background(Color.primary.opacity(0.05))
                        Text("Sering")
                            .font(.title2)
                            .padding(8)
                        Spacer()
                    }
                    .padding(10)
                }
                .padding()
                
                Spacer()
                
                Button(action: {
                    if step < totalSteps {
                        step += 1
                        selectedAnswer = ""
                    }
                }) {
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .disabled(selectedAnswer.isEmpty)
                .padding()
            }
            .padding([.leading, .trailing, .top, .bottom], 40)
        }
    }


struct AssesmentView_Previews: PreviewProvider {
    static var previews: some View {
        AssesmentView()
    }
}
