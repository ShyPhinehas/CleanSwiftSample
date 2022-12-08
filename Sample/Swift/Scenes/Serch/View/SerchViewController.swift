//
//  SerchViewController.swift
//  Sample
//
//  Created by Littlefox iOS Developer on 2022/12/08.
//

import UIKit
import RxSwift

class SerchViewController: UIViewController {
    
    private let vm: SerchViewModel
    private let _v: SerchView
    
    let disposBag = DisposeBag()
    
    init(vm: SerchViewModel, _v: SerchView) {
        
        self.vm = vm
        self._v = _v
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.vm.configureOut(out: SerchViewModel.Out(events: self._v.events), disposeBag: disposBag)
    }
    
    func setupView(){
        self.view.addSubview(self._v)
        self._v.updateTransform(frame: self.view.frame)
        self._v.number = 1
    }
}
