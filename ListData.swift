//
//  ListData.swift
//  AbdelrahmanTealab_MidTerm
//
//  Created by Abdelrahman  Tealab on 2020-10-28.
//  Student ID: 301164103

import Foundation

/*----------------------------------------------
 these variables are to create the data structure
  of an object which will be stored inside the
  dictionary when 'save' is clicked
 ----------------------------------------------*/
struct ListData {
    
    var listname: String
    var textsData: [Int:String]
    var labelsData: [Int:String]
    var steppersData: [Int:Int]
    
    init(listname: String, textsData: [Int:String],labelsData: [Int:String],steppersData: [Int:Int]) {
        self.listname = listname
        self.textsData = textsData
        self.labelsData = labelsData
        self.steppersData = steppersData
    }
    
}
