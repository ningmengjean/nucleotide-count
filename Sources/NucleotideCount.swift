//Solution goes in Sources
import Foundation

struct DNA {
    let strand: String
    init?(strand: String) {
        if strand.uppercased() != strand {
            return nil
        } else {
            self.strand = strand
        }
    }
   
    func count(_ input: String) -> Int {
        var result = 0
        for (_ , v) in strand.characters.enumerated() {
            if String(v) == input {
                result += 1
            }
        }
        return result
    }
    
    func counts() -> [String:Int] {
        var a = 0, t = 0, c = 0 , g = 0
        for (_ , v ) in strand.characters.enumerated() {
            if String(v) == "A" {
                a += 1
            } else {
                if String(v) == "T" {
                    t += 1
                } else {
                    if String(v) == "C" {
                        c += 1
                    } else {
                        if String(v) == "G" {
                            g += 1
                        }
                    }
                }
            }
        }
        return [ "A": a, "T": t, "C": c, "G": g ]
    }
}



