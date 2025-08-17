# Problem H: Column Addition

A multi-digit column addition is a formula on adding two integers written like this:

$\begin{array}{r} \phantom{+}123 \\ + \phantom{}456 \\ \hline \phantom{+}579 \end{array}$

A multi-digit column addition is written on the blackboard, but the sum is not necessarily correct. We can erase any number of the columns so that the addition becomes correct. For example, in the following addition, we can obtain a correct addition by erasing the second and the forth columns.

$\begin{array}{r} \phantom{+}12127 \\ + \phantom{}45618 \\ \hline \phantom{+}51825 \end{array} \quad\Rightarrow\quad \begin{array}{r} \phantom{+}117 \\ + \phantom{}468 \\ \hline \phantom{+}585 \end{array}$

Your task is to find the minimum number of columns needed to be erased such that the remaining formula becomes a correct addition.

## Input

There are multiple test cases in the input. Each test case starts with a line containing the single integer $n$, the number of digit columns in the addition ($1 \le n \le 1000$). Each of the next 3 lines contain a string of $n$ digits. The number on the third line is presenting the (not necessarily correct) sum of the numbers in the first and the second line. The input terminates with a line containing "`0`" which should not be processed.

## Output

For each test case, print a single line containing the minimum number of columns needed to be erased.
