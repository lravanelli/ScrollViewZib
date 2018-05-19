//
//  ViewController.swift
//  ScrollViewZib
//
//  Created by Usuário Convidado on 19/05/18.
//  Copyright © 2018 br.com.fiap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(type: .system)
        button.setTitle("Abrir nova tela", for: .normal)
        button.frame = CGRect(x: 50, y: 100, width: 120, height: 30)
        button.addTarget(self, action: #selector(showSecondScreen), for: UIControlEvents.touchUpInside)
        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @objc func showSecondScreen() {
        let secondVC = SecondViewController(nibName: "SecondViewController", bundle: nil)
        navigationController?.show(secondVC, sender: nil)
    }

}

