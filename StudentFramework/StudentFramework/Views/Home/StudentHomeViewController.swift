//
//  StudentHomeViewController.swift
//  StudentFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit

//------------------------------------------------
// MARK: - StudentHomeViewControllerProtocol
//------------------------------------------------

protocol StudentHomeViewControllerProtocol: class {
    
}

//------------------------------------------------
// MARK: - StudentHomeViewController
//------------------------------------------------

final class StudentHomeViewController: UIViewController {

    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(viewModel: StudentHomeViewModel) {
        super.init(nibName: "StudentHomeViewController", bundle: Bundle(for: StudentHomeViewController.self))
        self.viewModel = viewModel
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private var viewModel: StudentHomeViewModel?
    
    //------------------------------------------------
    // MARK: - Life cycle
    //------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel?.printEnvironment()
    }
    
    //------------------------------------------------
    // MARK: - Button actions
    //------------------------------------------------
    
    @IBAction func showDetail(_ sender: UIButton) {
        self.viewModel?.showDetail()
    }
    
}

//-----------------------------------------------
// MARK: - StudentHomeViewControllerProtocol
//-----------------------------------------------

extension StudentHomeViewController: StudentHomeViewControllerProtocol {
    
    func didLoadView() {
         
     }
}
