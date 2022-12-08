//
//  ViewEvent.swift
//  Sample
//
//  Created by Littlefox iOS Developer on 2022/12/08.
//

import Foundation
import RxSwift
import RxCocoa

//protocol ViewEventKind{}

protocol ViewEvent_P{
//    associatedtype T: ViewEventKind
//    func create(_ kind: T)
}

protocol ViewEventOut{
    associatedtype Event: ViewEvent_P
    var events: PublishRelay<Event> {get set}
}

extension ViewEventOut{
    func create(_ e: Event){
        self.events.accept(e)
    }
}
