//
//  Serch_V.swift
//  LittleFoxEnglish
//
//  Created by Littlefox iOS Developer on 2022/07/27.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import RxCocoa
import RxSwift

enum SerchViewEnvet: ViewEvent_P{
    case serch
}


class SerchView: UIView{
    
//    enum SerchViewEnvet: ViewEvent_P{
//        case serch
//    }
    var events: PublishRelay<SerchViewEnvet> = PublishRelay()
    
    var number: Int?{
        set{
            self._label.text = "\(newValue ?? -1)"
            self._label.sizeToFit()
            self._label.center = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.3)
        }
        get{
            Int(self._label.text ?? "")
        }
    }
    
    
    let disposBag = DisposeBag()
    
    private var _label: UILabel!
    private var _addBtn: UIButton!
    
    func updateTransform(frame: CGRect){
        
        self.frame = frame
        
        self.backgroundColor = .white
        
        self._label = UILabel()
        self._label.font = UIFont.boldSystemFont(ofSize: 30)
        self._label.textColor = .black
        self.addSubview(self._label)
        
        self._addBtn = UIButton()
        self._addBtn.frame.size = CGSize(width: 100, height: 50)
        self._addBtn.center = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        self._addBtn.setTitle("++", for: .normal)
        self._addBtn.backgroundColor = .red
        self._addBtn.rx.tap.bind {
            self.events.accept(.serch)
        }.disposed(by: disposBag)
        self.addSubview(self._addBtn)
    }

}
