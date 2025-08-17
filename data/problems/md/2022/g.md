# Problem G : Laboratory Report

You are assigned to write a software for a medical laboratory. A portion of the software is about generating reports on the conducted medical tests. A medical test consists of a series of measurements on specimens (like blood or urine) sampled from a patient. Each measurement has a name, a unit, and a result (value). For example, the "Cholesterol" in a blood sample might be $\mathrm { 1 8 0 ~ m g / d l }$. Additionally, each measurement is attached with a reference table. A reference table is a general set of rules classifying a (status) flag for the patients based on their measurement results. For example, if"Triglycerides"has a result in the range[1O, 19O], then it is classified as"normal"; and it is flagged as "low" or"high" if it has a result below or above this range, respectively.

Given all the measurement reference tables and the results for several patients, you have to generate the report of their medical tests.

## Input

A text in the input specification of this problem is a non-empty string of arbitrary printable ASCI characters, including the space, punctuation, and alphanumeric characters, but not the newline character. It is guaranteed that a text does not start or end with the white space characters. In addition, all real numbers in the input are in decimal format with at most 7 characters, and their absolute value will not exceed $10 ^ 7$ .

The input consists of multiple (at least 2 and at most 100)sections. Each section ends with a single line containing 80 consecutive "=" characters.

The reference tables are described in the first section. There are at least 1 and at most 100 reference tables, and the lines of two adjacent tables are separated with a single line containing 75 consecutive "-" characters. The first line of a reference table contains the measurement name, a text of length at most 25, which is unique among all the reference tables. The second line contains a text of length at most 15 as the measurement unit. The remaining of the reference table describes its flag classification rules and is either a single line, or a set of pairs of lines. In the former case, the single line specifies the criteria for classifying the result as "`Normal`". In this case, if the measurement result does not meet this criteria, it is classified as "`Abnormal`". In the later case where the remaining of the reference table is in the form of a non-empty set of (at most 10) pairs of lines, the classification rules are more complex. In this case, the first line of each pair specifies the classification criteria, and the second line contains a text of length at most 25 as the flag name preceded by two space characters. In any of the cases mentioned above, the classification criteria is a text of length at most 50 in one of the following forms ($A$ and $B$ are real numbers, and $x$ is a measurement result):

|   Criteria format   |     Meaning     |
| :-----------------: | :-------------: |
|        $< A$        |     $x < A$     |
|       $\le A$       |    $x \le A$    |
|        $> A$        |     $x > A$     |
|       $\ge A$       |    $x \ge A$    |
| $[A, B]$ or $A ~ B$ | $A \le x \le B$ |
|      $[A, B)$       |  $A \le x < B$  |
|      $(A, B]$       |  $A < x \le B$  |
|      $(A, B)$       |  $A <> x < B$   |

There might be arbitrary number of spaces between the different parts ofa text specifying a classification criteria. So for example, `[2, 5]`, `[ 2, 5]`, and `2~ 5` are valid and equivalent texts. When the flag classification rules of a reference table are described with a set of pairs of lines, it is guaranteed that the measurement value space is correctly partitioned by the given set of classification criteria; i.e., each possible measurement result matches exactly one of the provided classification criteria.

The next sections in the input specify the measurement results for the patients. The first line of each section contains a text of length at most 60 as a patient's name. Each of the next lines describes a measurement result for that patient with the measurement name and value (a real number) separated with an arbitrary number (between 1 and 20) of space characters. There are at least 1 and at most 100 measurement results for a single patient. Each measurement name appears at most once in the measurement results of a patient.

## Output

For each section in the input except the first section (which describes the reference tables), you shall write the laboratory test report of its corresponding patient followed by a single line containing 80 consecutive "=" characters. A report consists ofa line containing the patient's name and a table depicting the test results. The table format is illustrative in the sample output. If there were $k$ measurements in the corresponding input section, this table should have $k + 4$ lines of exact length 75. All the empty areas shall be filled with the space character. The table has 4 columns:

-   `Test`: The measurement name; starting at the beginning of the line (the 1-st character).
-   `Result`: The measurement result value, printed in the exact format as the input; starting at the 27-th character of the line.
-   `Unit`: The measurement unit; starting at the 35-th character of the line.
-   `Flag`: The classified flag based on the measurement result and the reference table; starting at the 51-st character of the line. Nothing (but space characters)should be written in this cell if the flag is "`Normal`".

The measurement rows in the output table should be printed in the same order of appearance as in the corresponding input section. In addition to the measurement rows, the table should have a heading line and three separator lines (containing 75 consecutive "-" characters) as depicted in the sample output.

_Notice: The solutions for this problem are judged very strictly. In order for your output to be considered correct, all its characters, including the white space or upper/lower case letters, must exactly match the expected output._
