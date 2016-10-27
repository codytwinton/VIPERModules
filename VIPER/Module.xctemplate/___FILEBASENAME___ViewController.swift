//
//  ___FILENAME___
//  Project: ___PROJECTNAME___
//
//  Module: ___VARIABLE_viperModuleName___
//
//  By ___FULLUSERNAME___ ___DATE___
//  ___ORGANIZATIONNAME___ ___YEAR___
//

// MARK: Imports

import UIKit

// MARK: Protocols

protocol ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol: class {
	//func viewTitle(title: String?)
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {
	
	// MARK: - Variables

	let presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol
	
	
	// MARK: Inits
	
	init(presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	// MARK: - Load Functions

	override func viewDidLoad() {
        super.viewDidLoad()
		presenter.viewLoaded()
    }
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		presenter.viewAppearing()
	}
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		presenter.viewAppeared()
	}
	
	override func viewDidDisappear(animated: Bool) {
		super.viewDidDisappear(animated)
		presenter.viewDisappeared()
	}
}


// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to View Protocol

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {
	/*
	func viewTitle(title: String?) {
		print("title: \(title)")
		self.title = title
	}
	*/
}