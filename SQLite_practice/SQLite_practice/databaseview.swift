//
//  databasevie.swift
//  princess
//
//  Created by 신상용 on 2023/05/06.
//

import SwiftUI

struct databaseview: View {
    let dbHelper = DBHelper.shared
    var dataArray: [MyModel] = []
    
    var body: some View {
        VStack{
            Button("createbutton"){
                createbutton()
            }
            Button("InsertButton"){
                insertbutton()
            }
            Button("DeleteButton"){
                deleteButton()
            }
            Button("dropbutton"){
                dropButton()
            }
        }
    }
    func createbutton(){
        dbHelper.createTable()
        print(dbHelper.readData())
        
    }
    func insertbutton(){
        dbHelper.insertData(name: "a", age: 10)
        print(dbHelper.readData())
//        print(dbHelper.readData()[0].myName)
        
    }
    func deleteButton(){
        dbHelper.deleteData(id: 1)
        print(dbHelper.readData())
    }
    func dropButton(){
        dbHelper.deleteTable(tableName: "myTable")
        print(dbHelper.readData())
    }
}

struct databaseview_Previews: PreviewProvider {
    static var previews: some View {
        databaseview()
    }
}
