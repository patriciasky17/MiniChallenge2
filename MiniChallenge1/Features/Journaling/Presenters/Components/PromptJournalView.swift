//
//  PromptJournalView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 27/04/23.
//

import SwiftUI
import PencilKit

struct PromptJournalView: View {
    private var canvasView = PKCanvasView()

    var body: some View {
        NavigationStack {
            VStack {
                GeometryReader { geometry in
                    VStack (spacing: 30) {
                        HStack  {
                            Spacer()
                            Image(systemName: "chevron.left")
                                .font(.title3)
                            
                            
                            Spacer()
                            Text("Cobalah untuk madi atau mandi air hangat dan biarkan diri Anda rileks sepenuhnya. Bagaiman perasaan kamu ketika kamu bisa beristirahat dan memulihkan tenaga, meskipun ada banyak hal yang terjadi?")
                                .multilineTextAlignment(.center)
                                .frame(width: geometry.size.width * 0.6)
                                .font(.subheadline)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.title3)
                            Spacer()
                        }
                        .frame(width: geometry.size.width * 1)
                        
                        Divider()
                            .frame(width: geometry.size.width * 1, height: 1)
                            .background(AppColor.neutral20)
                    }
                    
                    
                }
                .frame(height: 120)
                .padding(10)
                
                CanvasView(canvasView: canvasView)
            }
        }
        
    }
}


struct CanvasView: UIViewRepresentable {
    var canvasView: PKCanvasView
    let picker = PKToolPicker()
    
    func makeUIView(context: Context) -> PKCanvasView {
        let scrollView = UIScrollView()
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 3.0
        scrollView.backgroundColor  = UIColor(red : 1, green : 1, blue : 1, alpha : 1.0)
        
        // Set up the PKCanvasView
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 10)
        canvasView.contentSize = CGSize(width: 1024, height: 10000)
        canvasView.minimumZoomScale = 1.0
        canvasView.maximumZoomScale = 1.0
        canvasView.backgroundColor  = .clear
        canvasView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        canvasView.isOpaque = false
        
        scrollView.addSubview(canvasView)
        scrollView.contentSize = canvasView.frame.size

        
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        // Update the PKCanvasView if necessary
        picker.addObserver(canvasView)
        picker.setVisible(true, forFirstResponder: uiView)
        DispatchQueue.main.async {
            uiView.becomeFirstResponder()
        }
    }
}


struct PromptJournalView_Previews: PreviewProvider {
    static var previews: some View {
        PromptJournalView()
    }
}
