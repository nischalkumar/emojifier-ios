//: Playground - noun: a place where people can play

import UIKit

class Emojifier{
    
    var emojiMap : [ String : [String]] = [
        "smile|happy|laugh" : ["😀","😁","😃","😄","😆","😊","🙂","😇"],
        "wink|kidding" : ["😉"],
        "tasty|yum|yummy|taste" : ["😋"],
        "Cool" : ["😎"],
        "Love" : ["😍","😘"],
        "kiss" : ["😗","😙"],
        "Hug" : ["🤗"],
        "Think" : ["🤔"],
        "nothing" : ["😐","😑"],
        "Whatever" : ["🙄"],
        "Smirk|heh" : ["😏"],
        "Persevere" : ["😣"],
        "shock" : ["😮","😳"],
        "muh band" : ["🤐"],
        "surprise" : ["😯"],
        "tire" : ["😪"],
        "Sleep" : ["😴"],
        "Relief" : ["😌"],
        "joking|kidding" : ["😜"],
        "LOL" : ["😝"],
        "Disappoint" : ["😒","😞","😥"],
        "Sad" : ["😓"],
        "Pensive" : ["😔"],
        "Confused" : ["😕"],
        "Upside-Down" : ["🙃"],
        "Money-Mouth" : ["🤑"],
        "Astonished " : ["😲"],
        "Sick" : ["🤒"],
        "Confound " : ["😖"],
        "Worry " : ["😟"],
        "Cry" : ["😢","😭"],
        "Frown|sad" : ["😦","🙁"],
        "Anguish " : ["😧"],
        "Fear " : ["😨"],
        "Frustrate" : ["😬"],
        "Scream" : ["😱"],
        "Angry" : ["😡"],
        "Skull" : ["💀"],
        "Ghost" : ["👻"],
        "Alien" : ["👽"],
        "Robot " : ["🤖"],
        "Boy" : ["👦"],
        "Girl" : ["👧"],
        "Man|guy" : ["👨"],
        "Woman|gal|girl" : ["👩"],
        "Baby" : ["👶"],
        "Hair" : ["👱"],
        "Officer|police|security" : ["👮"],
        "Worker" : ["👷"],
        "Helmet" : ["⛑"],
        "Princess" : ["👸"],
        "Guard" : ["💂"],
        "Spy" : ["🕵"],
        "Santa" : ["🎅"],
        "Bride" : ["👰"],
        "Angel" : ["👼"],
        "Massage" : ["💆"],
        "Pouting" : ["🙎"],
        "Pedestrian" : ["🚶"],
        "Runner" : ["🏃"],
        "Family " : ["👨‍👩‍👧"],
        "Left" : ["👈"],
        "Right" : ["👉"],
        "Up" : ["👆"],
        "Down" : ["👇"],
        "Hi" : ["🖐","👋"],
        "Stop" : ["✋"],
        "OK" : ["👌"],
        "Nope" : ["👎"],
        "Clap|applause" : ["👏"],
        "Eye" : ["👀"],
        "Tongue" : ["👅"],
        "Mouth" : ["👄"],
        "Mark" : ["💋"],
        "Eyeglass" : ["👓"],
        "Sunglass" : ["🕶"],
        "Necktie" : ["👔"],
        "T-Shirt" : ["👕"],
        "Jean" : ["👖"],
        "Dress" : ["👗"],
        "Kimono" : ["👘"],
        "Bikini" : ["👙"],
        "Cloth|Clothes" : ["👚"],
        "Purse" : ["👛"],
        "Handbag" : ["👜"],
        "Pouch" : ["👝"],
        "Satchel" : ["🎒"],
        "Shoe" : ["👞"],
        "Sandal" : ["👡"],
        "Boot" : ["👢"],
        "Crown" : ["👑"],
        "Hat" : ["👒"],
        "Cap" : ["🎓"],
        "Ring" : ["💍"],
        "Umbrella" : ["🌂"],
        "Briefcase" : ["💼"]
    ]
    
    func emojifyLine(string : String) -> String
    {
        var finalString : String = ""
        for word in string.componentsSeparatedByString(" ") {
            finalString = finalString + emojifyWord(word) + " "
        }
        return finalString.substringToIndex(finalString.endIndex.predecessor())
        
    }
    
    private func emojifyWord(string: String) -> String
    {
        
        
        if let emojiList  = emojiMap[string.capitalizedString]{
            return emojiList.first ?? string
        }
        else {
            return string;
        }
    }
    
}
