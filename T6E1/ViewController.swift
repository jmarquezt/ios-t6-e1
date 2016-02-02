//
//  ViewController.swift
//  T6E1
//
//  Created by Jorge Marquez Torres on 2/2/16.
//  Copyright © 2016 jmarquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func vignetteAction(sender: AnyObject) {
        let inputImage = imageView.image
        let context = CIContext(options: nil)
        if let currentFilter = CIFilter(name: "CIVignette") {
            let beginImage = CIImage(image: inputImage!)
            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
            currentFilter.setValue(slider.value, forKey: kCIInputIntensityKey)
            
            if let output = currentFilter.outputImage {
                let cgimg = context.createCGImage(output, fromRect: output.extent)
                let processedImage = UIImage(CGImage: cgimg)
                imageView.image = processedImage
            }
        }
    }
    @IBAction func sepiaAction(sender: AnyObject) {
        let inputImage = imageView.image
        let context = CIContext(options: nil)
        if let currentFilter = CIFilter(name: "CISepiaTone") {
            let beginImage = CIImage(image: inputImage!)
            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
            currentFilter.setValue(slider.value, forKey: kCIInputIntensityKey)
            
            if let output = currentFilter.outputImage {
                let cgimg = context.createCGImage(output, fromRect: output.extent)
                let processedImage = UIImage(CGImage: cgimg)
                imageView.image = processedImage
            }
        }
    }
    @IBAction func invertAction(sender: AnyObject) {
        let inputImage = imageView.image
        let context = CIContext(options: nil)
        if let currentFilter = CIFilter(name: "CIColorInvert") {
            currentFilter.setDefaults()
            let beginImage = CIImage(image: inputImage!)
            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
            
            if let output = currentFilter.outputImage {
                let cgimg = context.createCGImage(output, fromRect: output.extent)
                let processedImage = UIImage(CGImage: cgimg)
                imageView.image = processedImage
            }
        }
    }
    @IBAction func pinchAction(sender: AnyObject) {
        let inputImage = imageView.image
        let context = CIContext(options: nil)
        if let currentFilter = CIFilter(name: "CIPinchDistortion") {
            currentFilter.setDefaults()
            let beginImage = CIImage(image: inputImage!)
            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
            
            if let output = currentFilter.outputImage {
                let cgimg = context.createCGImage(output, fromRect: output.extent)
                let processedImage = UIImage(CGImage: cgimg)
                imageView.image = processedImage
            }
        }

    }
    @IBAction func perspectiveAction(sender: AnyObject) {
        let inputImage = imageView.image
        let context = CIContext(options: nil)
        if let currentFilter = CIFilter(name: "CIPerspectiveTransform") {
            currentFilter.setDefaults()
            let beginImage = CIImage(image: inputImage!)
            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
            
            if let output = currentFilter.outputImage {
                let cgimg = context.createCGImage(output, fromRect: output.extent)
                let processedImage = UIImage(CGImage: cgimg)
                imageView.image = processedImage
            }
        }
    }
    @IBAction func gaussianAction(sender: AnyObject) {
        let inputImage = imageView.image
        let context = CIContext(options: nil)
        if let currentFilter = CIFilter(name: "CIGaussianBlur") {
            currentFilter.setDefaults()
            let beginImage = CIImage(image: inputImage!)
            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
            
            if let output = currentFilter.outputImage {
                let cgimg = context.createCGImage(output, fromRect: output.extent)
                let processedImage = UIImage(CGImage: cgimg)
                imageView.image = processedImage
            }
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

