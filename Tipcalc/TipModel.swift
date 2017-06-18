//
//  TipModel.swift
//  Tipcalc
//
//  Created by Babak Farahanchi on 2017-06-15.
//  Copyright © 2017 Bob. All rights reserved.
//

import Foundation
class TipModel{
    
    private var _billamount: Double=0
    private var _tipAmmount: Double=0
    private var _tipPercent: Double=0
    private var _totalAmount: Double=0

    
    var billamount: Double {
        get{
            return _billamount
        }
        set{
            _billamount = newValue
        }
    }
    
    var tipPercent: Double {
        get{
            return _tipPercent
        }
        set{
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double{
    return _tipAmmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    
    
    init(billamount: Double, tipPercent: Double){
        
        self._billamount = billamount
        self._tipPercent = tipPercent
        
    }
    
    func calculateTip(){
        _tipAmmount = tipPercent * billamount
        _totalAmount = billamount + tipAmount
        
    }
    
    
}
