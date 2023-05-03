//
//  CanvasView.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 04/05/23.
//

import SwiftUI
import PencilKit

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
