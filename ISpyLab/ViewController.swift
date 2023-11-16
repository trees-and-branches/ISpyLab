//
//  ViewController.swift
//  ISpyLab
//
//  Created by shark boy on 10/15/23.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var friesImage: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return friesImage
    }
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / friesImage.bounds.width
        let heightScale = size.height / friesImage.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale

    }
    

}

