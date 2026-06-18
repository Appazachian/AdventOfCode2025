//  Day12
//  Created by Zach Cornute on YYYY-MM-DD.
import Foundation


struct Day12: Challenge {
    let input: String

    func part1() -> Int {
        return 0
    }

    func part2() -> Int {
        return 0
    }

    func run() -> String {
        var part1Sum: Int = 0
        var part2Sum: Int = 0
        var output = ""
        let part1Elapsed = ContinuousClock().measure {
            part1Sum = part1()
        }
        output += "Part 1 took \(part1Elapsed) to complete. Answer: \(part1Sum)\n"
        let part2Elapsed = ContinuousClock().measure {
            part2Sum = part2()
        }
        output += "Part 2 took \(part2Elapsed) to complete. Answer: \(part2Sum)\n"

        return output
    }
}

