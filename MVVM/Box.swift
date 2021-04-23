//
//  Box.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 23.04.21.
//

import Foundation

//Класс обвертка
class Box<T> {
    
    //Принимает тип Т и выполняет некоторый блок
    typealias Listener = (T) -> ()
    
    //Создаем наблюдателя (listener - слушателя) в качестве свойсва
    var listener: Listener?
    
    //Свойство за которы и будет происходить наблюдение
    var value: T {
        didSet {
            //Как только меняеться значение (value) мы передаем в listener данное значение
            listener?(value)
        }
    }
    
    //Связываение свойтва с наблюдателем
    func bind(listener: @escaping Listener) {
        //Для того что бы работать с нашим наболюдателем его надо передать (связать)
        self.listener = listener
        //Как толь мы свзали сразу передали новое значение
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
