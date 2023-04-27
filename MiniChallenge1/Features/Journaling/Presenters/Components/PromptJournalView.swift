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
        VStack {
            Text("Test")
            CanvasView(canvasView: canvasView)
        }
        
    }
}


struct CanvasView: UIViewRepresentable {
    var canvasView: PKCanvasView
    let picker = PKToolPicker()
    
    func makeUIView(context: Context) -> PKCanvasView {
        // Set up the PKCanvasView
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 10)
        
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
