//
//  RaitingControl.swift
//  MyPlaces
//
//  Created by Alina Kostanovkaya on 07.12.2021.
//

import UIKit

@IBDesignable class RaitingControl: UIStackView {
    
    //MARK: Properties
    
    private var raitingButtons = [UIButton]()
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    
    var raiting = 0
    
    //MARK: Initialization
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    
    @objc func reitingButtonTapped(button: UIButton) {
        print("Button pressed")
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        
        for button in raitingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        
        raitingButtons.removeAll()
        
        for _ in 0..<starCount {
            
            let button = UIButton()
            button.backgroundColor = .red
        
            //Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
        
            //Setup the button action
            button.addTarget(self, action: #selector(reitingButtonTapped(button:)), for: .touchUpInside)
        
            //Add the button on the stack
            addArrangedSubview(button)
            
            //Add the new button on the rating button array
            raitingButtons.append(button)
        }
    }
}
