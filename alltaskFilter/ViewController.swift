//
//  ViewController.swift
//  alltaskFilter
//
//  Created by nikhil boriwale on 6/11/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        map()
        filter()
        reduce()
        flatmap()
        chaining()
        sort()
    }
    
    
    func  map(){
        
        //map
        //Map Method
        
        var numberarray = [1,2,3,4,5]
        var emptyarray:[Int] = []
        
        let m1 = numberarray.map{$0 * 2}
        print("my map data",m1)
        let m2 = numberarray.map{$0 / 2}
        print("my map data",m2)
        
    }

    func filter(){
      
        var filertarray = [1,2,3,4,5,6,7,8,9,10 ]
        let filerdata = filertarray.filter{$0 % 2 == 0}
        print("my filter data",filerdata)
    }
   
    func reduce(){
        var reducearray = [1,2,3,4,5,6,7]
    let reduce = reducearray.reduce(0, { $0 + $1 })
        
        let myreduce = reducearray.reduce(0, +)  // $0 + $1
        print(myreduce)
        
       //print("my reduce result",reduce)
        
    }
    func flatmap(){
        
        
        var flatmaparray = [[11,12,13],[14,15,16]]
        let flatmap = flatmaparray.flatMap{$0}
        print("flastmap",flatmap)
        
        // Json cha or xml xha data nil asel tr
        //use flatmap
        
        let people = ["N1",nil,"N2",nil,"N3"]
        let jsonpeople = people.flatMap{$0}
        print("flatmap",jsonpeople)
        
        
        
        
    }
    
    func chaining(){
        // Chaining : we combine using  map,reduce,flatmap,filter
        let chainingarray = [[1,2,3],[4,5,6]]
        let flatmapcombin = chainingarray.flatMap{$0}
        print("chainprint",flatmapcombin)
        
        //agr muze ismay sirf evn numeber chahiye to "Filter" use krte hey muze evenin number chaye isliye
        let flatmapfiletrcombin = chainingarray.flatMap{$0}.filter{$0 % 2 == 0}
        print("chainprint",flatmapfiletrcombin)
        
        // agr muze khuch particular opertaion perform krna hey hr ek value pay same to uss samy hm "Map" use krenge
        
        let FlatmapFilterrMapcombin = chainingarray.flatMap{$0}.filter{$0 % 2 == 0}.map{$0 * $0}
        print("chainprint",FlatmapFilterrMapcombin)
        
        //agr muze ye sb key samne khuch data Add krna ho ex- "$ " add krna hey to mai pahile to in sb ko combine krunga using "Flat Map" then uskey bad using "Map" function may in sb key samne $ sign add kr dunga  like this
        let FlatmapMapcombin = chainingarray.flatMap{$0}.map{"$\($0)"}
        print("chainprint",FlatmapMapcombin)
    }
    
    func sort(){
        var sortarr = [1,2,3,4]
        let arsort = sortarr.sorted{$0 > $1}
        print("sortarray",arsort)
    }
    
    
    
}

