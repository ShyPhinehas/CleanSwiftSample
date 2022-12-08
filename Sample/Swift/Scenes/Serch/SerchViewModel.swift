//
//  SerchViewModel.swift
//  Sample
//
//  Created by Littlefox iOS Developer on 2022/12/08.
//

import Foundation
import RxCocoa
import RxSwift



class SerchViewModel{
    struct Out: ViewEventOut{
        var events: PublishRelay<SerchViewEnvet> = PublishRelay()
    }
    
    struct In{
        
    }
    
    func configureOut(out: Out, disposeBag: DisposeBag){
        out.events.subscribe { event in
            print(event)
        }.disposed(by: disposeBag)
    }
}


