//
//  SchoolHomeViewController.swift
//  SchoolProject
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit

//------------------------------------------------
// MARK: - SchoolHomeViewControllerProtocol
//------------------------------------------------

protocol SchoolHomeViewControllerProtocol: class {
    
}

//------------------------------------------------
// MARK: - SchoolHomeViewController
//------------------------------------------------

final class SchoolHomeViewController: UIViewController {

    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(viewModel: SchoolHomeViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private var viewModel: SchoolHomeViewModel?
    
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
    
    @IBAction func openStudentFramework(_ sender: UIButton) {
        self.viewModel?.openStudentFramework()
    }
    
}

//-----------------------------------------------
// MARK: - SchoolHomeViewControllerProtocol
//-----------------------------------------------

extension SchoolHomeViewController: SchoolHomeViewControllerProtocol {
    
    func didLoadView() {
         
     }
}
