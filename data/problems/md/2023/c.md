# Problem C: Moderation in all things

Initially, we have an array of length 1 containing only the number O. All natural numbers are listed in ascending order in the "reservation list" (the first number in the list is 1). The array undergoes $q$ operations. The $i ^ {th}$ operation, is one of the following:

-   `Insert(p, x)`: Insert the first $x$ numbers from the reservation list after the number $p$ in the array, in ascending order. These numbers are removed from the reservation list.
-   `Remove(p, x)`: Remove the next $x$ numbers after number $p$ in the array. These numbers are not returned to the reservation list.

You are given information about $q$ operations, and you are asked to determine the number written in the middle of the array after each operation. If the length of the array after the $i ^ {th}$ operation is $n$, you should find the $\lceil \frac n 2 \rceil ^ {th}$ element of the array. Note that the indexing of the array starts from 1.

### Input

The first line contains an integer $q$ ($1 \le q \le 5 \cdot 10 ^ 5$), which represents the number of operations. Each of the next $q$ lines contains two integers: $p_i$ ($1 \le p_i \le 2 \cdot 10 ^ 9$, and $k_i$ ($1 \le | k_i | \le 2 \cdot 10 ^ 9$).

If $k_i = +x$, operation `Insert` $p_i$`, x` is executed. If $k_i = -x$, operation `Remove` $p_i$`, x` is executed.  
It is guaranteed that all operations are valid, and no impossible operation is performed on the array. Additionally, at most $2 \cdot 10 ^ 9$ numbers are moved from the reservation list into the array.

### Output

Output $q$ lines. In the $i ^ {th}$ line, print the middle element of the array after performing the $i ^ {th}$ operation.
