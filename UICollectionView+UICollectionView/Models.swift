
//  Model.swift
//  Created by Vincent-St on 2/16/18.
//  Copyright © 2018 Vincent-St. All rights reserved.


import UIKit

class AppCategory: NSObject {
    var name: String?
    var apps: [App]?
    
    static func sampleAppCategories() -> [AppCategory] {
        
        // Chapter 1
        let chapter1 = AppCategory()
        chapter1.name = NSLocalizedString("CHAPTER 1: ", comment: "1") + NSLocalizedString("3 Sections", comment: "title")
        
        var apps1 = [App]()
        
        let chapter1App = App()
        chapter1App.imageName = "alf-viktor-williamsen-595226-unsplash"
        
        let chapter11App = App()
        chapter11App.imageName = "el-alce-web-544198-unsplash"
        
        let chapter12App = App()
        chapter12App.imageName = "freestocks-org-570357-unsplash"
        
        apps1.append(chapter1App)
        apps1.append(chapter11App)
         apps1.append(chapter12App)
        
        chapter1.apps = apps1
        
        
      // Chapter 2
        let chapter2 = AppCategory()
        chapter2.name = NSLocalizedString("CHAPTER 2: ", comment: "2") + NSLocalizedString("3 Sections", comment: "title")
        
        var apps2 = [App]()
        
        let chapter2App = App()
        chapter2App.imageName = "goran-ivos-307271-unsplash"
        
        let chapter21App = App()
        chapter21App.imageName = "iabzd-607642-unsplash"
        
        let chapter22App = App()
        chapter22App.imageName = "markus-spiske-148030-unsplash"
        
        
        apps2.append(chapter2App)
        apps2.append(chapter21App)
        apps2.append(chapter22App)
        
        
        chapter2.apps = apps2
        
        
        // Chapter 3
        
        let chapter3 = AppCategory()
        chapter3.name = NSLocalizedString("CHAPTER 3: ", comment: "title") + NSLocalizedString("3 Sections", comment: "title")
        
        
        var apps3 = [App]()
        
        let chapter3App = App()
        chapter3App.imageName = "markus-spiske-445255-unsplash"
        
        let chapter31App = App()
        chapter31App.imageName = "radovan-582102-unsplash"
        
        let chapter32App = App()
        chapter32App.imageName = "rahul-chakraborty-460018-unsplash"
        
        
        
        apps3.append(chapter3App)
        apps3.append(chapter31App)
        apps3.append(chapter32App)
        
        chapter3.apps = apps3
        
        // Chapter 4
        
        let chapter4 = AppCategory()
        chapter4.name = NSLocalizedString("CHAPTER 4: ", comment: "title") + NSLocalizedString("3 Sections", comment: "title")
        
        var apps4 = [App]()
        
        let chapter4App = App()
        chapter4App.imageName = "tetsuya-tomomatsu-306592-unsplash"
        
        let chapter41App = App()
        chapter41App.imageName = "thomas-quaritsch-681766-unsplash"
        
        let chapter42App = App()
        chapter42App.imageName = "tim-bennett-538189-unsplash"
        
        
        apps4.append(chapter4App)
        apps4.append(chapter41App)
        apps4.append(chapter42App)
        
        chapter4.apps = apps4
        
        
        return [chapter1, chapter2, chapter3, chapter4]
    }
    
}


class App: NSObject {
    var imageName: String?
}

struct ImageNames {
    var imageNames: [String]
}





