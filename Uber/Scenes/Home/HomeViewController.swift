//
//  HomeViewController.swift
//  Uber
//
//  Created by claudiocarvalho on 27/02/20.
//  Copyright © 2020 claudiocarvalho. All rights reserved.
//

import UIKit
import Firebase
import MapKit

class HomeViewController: UIViewController {
    
    // MARK: - Properties
    
    private let mapView = MKMapView()
    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkIfUserIsLoggedIn()
        //signOut()
    }
    
    // MARK: - API
    
    func checkIfUserIsLoggedIn() {
        if Auth.auth().currentUser?.uid == nil {
            DispatchQueue.main.async {
                let navigation = UINavigationController(rootViewController: LoginViewController())
                self.present(navigation, animated: true, completion: nil)
            }
        } else {
            configureUI()
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("DEBUG: Error signing out")
        }
    }
    
    // MARK: - Helper Functions
    
    func configureUI() {
        view.addSubview(mapView)
        mapView.frame = view.frame
    }
}
