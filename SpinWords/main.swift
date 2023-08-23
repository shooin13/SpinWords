var repeatAgain = false

repeat {
    print("Enter any string consisting of several words and it will reverse any word containing more than 4 characters")
    
    let sentence = readLine()!
    
    print("the function result is below:")
    print(spinWords(in: sentence))
    print("hit y to repeat or any other key to exit")

} while readLine()?.lowercased() == "y"
