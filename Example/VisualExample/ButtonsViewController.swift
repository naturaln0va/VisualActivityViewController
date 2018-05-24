//
//  ButtonsViewController.swift
//  VisualExample
//
//  Created by Ryan Ackermann on 5/19/18.
//  Copyright © 2018 Ryan Ackermann. All rights reserved.
//

import UIKit

final class ButtonsViewController: UIViewController {
    
    private let shareText = "Lorem ipsum dolor sit amet, usu an fugit expetendis referrentur. Assum fuisset volumus duo te, ei ubique inimicus eum, nostrum mandamus mel in. Platonem quaerendum comprehensam et nam, at per exerci aliquip persius."
    private let shareURLString = "https://ackermann.io/about"
    
    @IBAction func textShareButtonPressed(_ sender: UIButton) {
        let vc = VisualActivityViewController(text: shareText)
        vc.previewNumberOfLines = 10
        
        presentActionSheet(vc, from: sender)
    }
    
    @IBAction func urlShareButtonPressed(_ sender: UIButton) {
        guard let url = URL(string: shareURLString) else {
            return
        }
        
        let vc = VisualActivityViewController(url: url)
        vc.previewLinkColor = .magenta

        presentActionSheet(vc, from: sender)
    }
    
    @IBAction func imageShareButtonPressed(_ sender: UIButton) {
        let vc = VisualActivityViewController(image: #imageLiteral(resourceName: "dog"))
        vc.previewImageSideLength = 160
        
        presentActionSheet(vc, from: sender)
    }
    
    @IBAction func allShareButtonPressed(_ sender: UIButton) {
        guard let url = URL(string: shareURLString) else {
            return
        }
        
        let items: [Any] = [shareText, url, #imageLiteral(resourceName: "dog")]
        let vc = VisualActivityViewController(activityItems: items, applicationActivities: nil)
        vc.previewNumberOfLines = 10
        
        presentActionSheet(vc, from: sender)
    }
    
    private func presentActionSheet(_ vc: VisualActivityViewController, from view: UIView) {
        if UIDevice.current.userInterfaceIdiom == .pad {
            vc.popoverPresentationController?.sourceView = view
            vc.popoverPresentationController?.sourceRect = view.bounds
            vc.popoverPresentationController?.permittedArrowDirections = [.right, .left]
        }
        
        present(vc, animated: true, completion: nil)
    }

}
