import Foundation

struct CloudGoogle {
    
    func connectToCloud() -> Bool {
        print("Try Google connection")
        return true
    }
}

struct CloudAmazon {
    
    func connectToCloud() -> Bool {
        print("Try Amazon connection")
        return true
    }
}

struct CloudOneDrive {
    
    func connectToCloud() -> Bool {
        print("Try OneDrive connection")
        return true
    }
}

class ClientCode {
    
    init() {
        let googleCloud = CloudGoogle()
        googleCloud.connectToCloud()
        
        let amazonCloud = CloudAmazon()
        amazonCloud.connectToCloud()
        
        let oneDriveCloud = CloudOneDrive()
        oneDriveCloud.connectToCloud()
    }
}