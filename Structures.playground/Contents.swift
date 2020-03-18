struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(townName: String, people:[String], stats:[String: Int]) {
        name = townName
        citizens = people
        resources = stats
    }
    
    func fortify(){
        print("yeet")
    }
}

var t = Town(townName: "Hugo's Town", people: [], stats: [:])
