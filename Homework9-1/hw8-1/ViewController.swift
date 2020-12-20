//
//  ViewController.swift
//  hw8-1
//
//  Created by Nadya Belozerova on 01.12.2020.
//

import UIKit


    class ViewController: UIViewController {

        @IBOutlet weak var imageView: UIImageView?

        @IBOutlet weak var fromLabel: UILabel?
        
      
        @IBOutlet weak var arrowLabel: UILabel?
        
        @IBOutlet weak var toLabel: UILabel?
        

        @IBOutlet weak var bottomLabel: UILabel?
        
    
       


        

        var isFromBig = false

        var isToBig = false

        

        @IBAction func showHideImage(_ sender: Any) {
            
            imageView?.isHidden.toggle()
        }
        
        @IBAction func showHideBottomLabel(_ sender: Any) {
            
            bottomLabel?.isHidden.toggle()
        }
        
       @IBAction func showHideArrowLabel(_ sender: Any) {
            
         arrowLabel?.isHidden.toggle()
     }
        
        
        @IBAction func showHideToLabel(_ sender: Any) {
            
            toLabel?.isHidden.toggle()
        }
        
        @IBAction func updateFromLabel(_ sender: Any) {
            
            isFromBig.toggle()

            if isFromBig {

                fromLabel?.text = "From From From From From From From From From From From From From From From From"

            } else {

                fromLabel?.text = "From"

            }
        }
        
        @IBAction func updateToLabel(_ sender: Any) {
            
            isToBig.toggle()

            if isToBig {

                toLabel?.text = "To To To To To To To To To To To To To To To To To To To To To To To To To To To To To To To To To"

            } else {

                toLabel?.text = "To"

            }

        }

        }
        

        



        

     
