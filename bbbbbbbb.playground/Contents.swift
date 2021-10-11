struct Item {
    
    var title: String
    var time: String
    var priority: String
    var isComplete: Bool
    
    mutating func setComplete() {
        isComplete = true
    }
}



class List {
    var tasks = [Item]()
    
    func create(task:Item){
        tasks.append(task)
    }
    func read(){
        for item in self.tasks {
            print("Task: \(item.title) .. \(item.time)")
        }
    }
    
    func updateTitle(index: Int ,newText: String){
        tasks[index].title = newText
        
    }
    
    func remove(index: Int){
        tasks.remove(at: index)
    }
}
var task1 = Item(title: "Go to work", time: "9:00", priority: "High",isComplete : false)
var task2 = Item(title: "Go to mosq", time: "12:00", priority: "High", isComplete : false)
var task3 = Item(title: "Go to shopping", time: "4:00", priority: "middle", isComplete : false)
var task4 = Item(title: "Go to Gym", time: "6:00", priority: "High" , isComplete : false)
var task5 = Item(title: "Do the homework", time: "8:00", priority: "middle", isComplete : false)
var task6 = Item(title: "Go to sleep", time: "11:00", priority: "High",isComplete : false )

var myList = List()
myList.create(task: task1)
myList.create(task: task2)
myList.create(task: task3)
myList.create(task: task4)
myList.create(task: task5)
myList.create(task: task6)

myList.updateTitle(index: 0, newText: "go to libariy")



myList.read()
myList.remove(index: 0)

myList.read()

