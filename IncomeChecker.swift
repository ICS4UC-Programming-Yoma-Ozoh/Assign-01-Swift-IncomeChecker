import Foundation

/**
 * This program checks user income class
 * in comparison to the average income in Canada
 * @author Yoma Ozoh
 * @version 1.0
 * @since 2026-10-05
 */
public final class IncomeChecker {

    /// Checks if the income is above or below average.
    ///
    /// Parameter userIncome: the user's income
    /// Returns: a message indicating if the income is above or below average
    public static func checkIncome(_ userIncome: Double) -> String {
        // average canadian income
        let averageIncome = 68000.0
        // check if income is greater than average
        if userIncome > averageIncome {
            return "Your income is above the average Canadian income."
        // check if income is less than average
        } else if userIncome < averageIncome {
            return "Your income is below the average Canadian income."
        // check if income is equal to average
        } else {
            return "Your income is equal to the average Canadian income."
        }
    }

    /// Main entry point for user interaction and output.
    public static func main() {
        // try catch for input errors
        print("Please enter your annual income: ", terminator: "")
        
        guard let input = readLine(), let userIncome = Double(input) else {
            print("Invalid input. Please enter a valid integer.")
            return
        }

        // check if user input is valid
        if userIncome >= 0 {
            let result = checkIncome(userIncome)
            print(result)
        } else {
            print("Invalid input. Please enter a positive integer.")
        }
    }
}

// runs program
IncomeChecker.main()