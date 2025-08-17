# Problem M: Colorful Intervals

The _Museum of Contemporary Art_ is holding a painting gallery focused on modern art, especially _Monochromatic style_ paintings, which use only a single color. The gallery displays $n$ paintings arranged in a line.

The ICPC wants to bring students on an excursion to the gallery to spark their interest in art. However, the students are programmers, and everyone knows programmers only care about the colors of these modern paintings. They are also somewhat impatient. To keep their attention and to ensure they see every color without overwhelming them, the organizer decided to show them exactly two intervals of painting. This approach balances their short attention span and ensures all colors are represented. The task is to find two intervals of paintings such that each color appears at least once in at least one of the intervals, and the total number of paintings the students need to see is minimized.

## Input

The input consists of a single line containing a non-negative integer $n$ ($2 \le n \le 2000$), indicating the number of paintings. This is followed by $n$ lines, each containing a string representing the color of a painting. Each color is represented by a non-empty lowercase string with a length of less than 20. It is guaranteed that there are at least 2 and at most 5O different colors in the input.

## Output

In the output, print the minimum number of paintings the ICPC students need to see, which is the sum of the lengths of the two intervals.
