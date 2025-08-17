# Problem G : Jackson House

Jackson, after witnessing the advancements in the world of technology, decided to sell his small cozy house and enroll in the programming-and-algorithm micromaster. He came across an interesting algorithm that he needed to analyze and solve the problem related to it, in order to pass the exam at this stage of the course. The pseudocode of this algorithm is as follows:

**input**: a permutation $\pi = \langle \pi_1, \pi_2, \dots, \pi_n \rangle$ of numbers $\{1, 2, \dots, n\}$  
**while** $\pi$ is changing during this iteration:  
&nbsp;&nbsp;&nbsp;&nbsp; for $i := n$ **downto** 2:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **if** $\pi_i < \pi_ {\lfloor \frac i 2 \rfloor}$:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; swap ($\pi_i < \pi_ {\lfloor \frac i 2 \rfloor}$)

He wants to know for how many permutations $\pi$ of length $n$ from the possible $n!$ ones, the final permutation will be sorted after running this algorithm.

## Input

The first line contains an integer $t$ ($1 \le t \le 100$), the number of test cases.

Each of the next $t$ lines contains an integer $n_i$ ($2 \le n_i \le 10 ^ 9$), representing the length of the permutation for the $i ^ {th}$ test case.

## Output

Output $t$ lines. On the $i ^ {th}$ line, print the number of permutations of length $n_i$ which will be sorted after running the provided algorithm on it. Since the output could be very large, output the result modulo $10 ^ 9 + 7$.
