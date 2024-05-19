//
//  HomeViewModel.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 19.05.2024.
//

import Foundation

//MARK: BAĞLANTI --> HomeViewModel ile HomeView arasında herhangi bir iletişim yok bunun kısıtlı olması ve iletişim sağlamasını da protocoller ile sağlıycaz.
protocol HomeViewModelInterface{
    
}

final class HomeViewModel { //final açtıkkı başka bir mirascısı olmasın ve genişletilemsin buda bize performans olarak geri dönüş sağlar.
    
}
 
extension HomeViewModel : HomeViewModelInterface{ //Bu bir genişletme değil HomeViewModel sınıfının HomeViewModelInterface protokolünü uyguladığını belirtir.
    
}
