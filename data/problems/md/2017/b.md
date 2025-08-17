# Problem B : Bank Card Verifier

Cafe Bazaar, the famous Iranian android market, is looking for creative software developers. A group of applicants are attending an interview, and the company wants to select the fastest developer who can code simple rules accurately. As a test, all applicants should quickly develop a bank card verifier that determines whether a payment card number is valid or not.

All payment card numbers are 16 digits long. The leftmost 6 digits represent a unique identification number for the bank who has issued the card. The next 2 digits determine the type of the card (e.g. debit, credit, gift). Digits 9 to 15 are the serial number of the card, and the last digit is used as a control digit to verify whether the card number is valid. Hence, if somebody enters the card number incorrectly, there is a high chance that a payment software can easily determine it.

For a valid card number, the last digit is selected in such a way that the following algorithm passes:

1. Label all digits from left to right by 1 to 16.

2. Multiply each odd-labeled digit by 2.

3. If the result for any digit is greater than 9, subtract 9 from it.

4. Sum the results of the previous step, and add to it the sum of all even-labeled digits.

5. If the result is a multiple of 10, the card number is valid; otherwise, it is invalid.

Your task is to read several card numbers from the input, and determine whether each one is a valid card number or not.

## Input

There are multiple test cases in the input. Each testis given in one line consisting of four space-separated 4-digit strings. The leftmost digit of the given card number is guaranteed to be non-zero. The input terminates with aline containing "`0000 0000 0000 0000`" that should not be processed.

## Output

For each testcase, output a line containing "`Yes`" or "`No`" depending on whether the card number is valid or not, respectively.
