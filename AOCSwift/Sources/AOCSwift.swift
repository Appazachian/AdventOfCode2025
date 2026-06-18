// The Swift Programming Language
// https://docs.swift.org/swift-book
import ArgumentParser
import Foundation


protocol Challenge {
    init(input: String)
    func run() -> String
}


@main
struct AOCSwift: ParsableCommand {
    @Argument
    var day: Int

    func run() throws {
        print("Running day: \(day)")

        // Get the input from the requested days input file
        // NOTE: as of now, this will throw an error at runtime if the file is missing
        //let file = String(format: "Data/day%02d.input", day)
        let url = Bundle.module.url(
            forResource: String(format: "day%02d", day),
            withExtension: "input")!
        let input = try String(contentsOf: url, encoding: .utf8)

        // pass input to requested day and print results
        switch day {
        case 1:
            let output = Day01(input: input).run()
            print(output)
        case 2:
            let output = Day02(input: input).run()
            print(output)
        case 3:
            let output = Day03(input: input).run()
            print(output)
        case 4:
            let output = Day04(input: input).run()
            print(output)
        case 5:
            let output = Day05(input: input).run()
            print(output)
        case 6:
            let output = Day06(input: input).run()
            print(output)
        case 7:
            let output = Day07(input: input).run()
            print(output)
        case 8:
            let output = Day08(input: input).run()
            print(output)
        case 9:
            let output = Day09(input: input).run()
            print(output)
        case 10:
            let output = Day10(input: input).run()
            print(output)
        case 11:
            let output = Day11(input: input).run()
            print(output)
        case 12:
            let output = Day12(input: input).run()
            print(output)
        case 13:
            let output = Day13(input: input).run()
            print(output)
        case 14:
            let output = Day14(input: input).run()
            print(output)
        case 15:
            let output = Day15(input: input).run()
            print(output)
        case 16:
            let output = Day16(input: input).run()
            print(output)
        case 17:
            let output = Day17(input: input).run()
            print(output)
        case 18:
            let output = Day18(input: input).run()
            print(output)
        case 19:
            let output = Day19(input: input).run()
            print(output)
        case 20:
            let output = Day20(input: input).run()
            print(output)
        case 21:
            let output = Day21(input: input).run()
            print(output)
        case 22:
            let output = Day22(input: input).run()
            print(output)
        case 23:
            let output = Day23(input: input).run()
            print(output)
        case 24:
            let output = Day24(input: input).run()
            print(output)
        case 25:
            let output = Day25(input: input).run()
            print(output)
        default:
            print("There are no challenges for day \(day)")
        }
    }
}

