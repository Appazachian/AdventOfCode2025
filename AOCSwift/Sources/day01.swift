//  Day01
//  Created by Zach Cornute on 2026-06-18.
import Foundation


struct Day01: Challenge {
    let input: String

    func run() -> String {
        var landedOnZeroTotal: Int = 0
        var passedZeroTotal: Int = 0
        let timeElapsed = ContinuousClock().measure {
            var dial: Int = 50            
            let rotations = ["L68", "L30", "R48", "L5", "R60", "L55", "L1", "L99", "R14", "L82"]
            //let rotations = input.split(separator: "\n")

            print("The dial starts by pointing to 50.")
            for rotation in rotations {
                let direction: Int = (rotation.hasPrefix("L")) ? -1 : 1
                let clicks: Int = Int(rotation.dropFirst())!
                var nextZero: Int = 0

                // calculate how many times we'll pass zero this rotation.
                // this includes landing on it as well.
                if direction == -1 {
                    nextZero = (dial == 0) ? 100 : dial
                } else {
                    nextZero = 100 - dial
                }
                let passedZeroCount: Int = Int(Double(clicks - nextZero) / 100 + 1)
                if clicks >= nextZero {
                    passedZeroTotal += passedZeroCount
                }

                // rotate the dial
                // example: (50 + -1 * 68) % 100 = 82
                // -> (50 - 68) % 100 = 82
                // -> -18 % 100 = 82
                // ((x % n) + n) % n -> Swift moduluo operator doesn't behave like a true mathematical modulo
                // (((50 - 68) % 100) + 100) % 100
                dial = (((dial + direction * clicks) % 100) + 100) % 100
                if dial == 0 {
                    landedOnZeroTotal += 1
                }

                print("The dial is rotated \(rotation) to point \(dial), during this rotation, it passed zero \(passedZeroCount) times")
            }
        }
        var output = "Took \(timeElapsed)\n"
        output += "Part 1 answer: \(landedOnZeroTotal)\n"
        output += "Part 2 answer: \(passedZeroTotal)\n"

        return output
    }
}

