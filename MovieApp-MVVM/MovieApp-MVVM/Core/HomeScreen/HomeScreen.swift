//
//  ViewController.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 17.05.2024.
//

import UIKit

protocol HomeScreenInterface : AnyObject{ //Bu bir protokoldür ve AnyObject ile bu protkolü funclar ile de kullanabiliriz. (Araştır)
    func configureVC()
    func configureCollectionView()
}



final  class HomeScreen: UIViewController { //HomeScreen sınıfı ve bu bir UIViewController'dır.

    private let viewModel = HomeViewModel() //Bir viewModel değişkeni yaptık ve bunu homeViewModel nesnesini yap dedik.
    private var colleectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.view = self  //Burda viewModel.View için HomeScreen Sensin kardeş dedik yani HomeScreen'i ViewModel--> HomeViewModele-->view'a ulaş ve onu kendni yap dedik
        viewModel.viewDidload()//viewDidLoad çalıştığında ViewModeldaki viewDidload çalışsın dedik.
    }


}

extension HomeScreen: HomeScreenInterface{ 
    func configureVC() {
        view.backgroundColor = .systemGray
        
    }
    func configureCollectionView() {
        colleectionView = UICollectionView(frame: .zero, collectionViewLayout: UIHelper.creatHomeFlowLayout())
        view.addSubview(colleectionView)
        
        colleectionView.translatesAutoresizingMaskIntoConstraints = false
        colleectionView.delegate = self
        colleectionView.dataSource = self
        colleectionView.register(MovieCell.self, forCellWithReuseIdentifier: MovieCell.reuseID)
        colleectionView.pinToEdgeOf(view: view)
    }
}

extension HomeScreen : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCell.reuseID, for: indexPath) as! MovieCell
        return cell 
    }
    
    
}
