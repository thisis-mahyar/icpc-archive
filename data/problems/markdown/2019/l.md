# Problem L: The Assembly Code

Jamshid is working with a special computing machine. The machine only supports operations on 32-bit unsigned integers and its memory is an array $M$ of length $2 ^ 32$ (for $0 \le i < 2 ^ 32$, $M_i$ is a 32-bit unsigned integer).

The assembly code for the machine supports the following addressing modes:

-   Immediate addressing: $\# \langle number \rangle$  
    This type of addressing is used to refer constant values. So, $\# 3$ means the constant value 3.

-   Direct addressing: $\$ \langle index \rangle$  
    This mode is used to directly address a memory cell. For example, $\$ 7$ refers to cell $M_7$.

-   Indirect addressing: $@ \langle index \rangle$  
    This addressing mode is used for supporting pointers. It first looks up the value of the memory specified by $\langle index \rangle$, and then refers to the cell specified by that value. For example, if $M_5 = 9$. 1 $@5$ refers to $M_9$.

All the memory cells are initialized with 0 when a program starts running.

An assembly code for the machine is a sequence of commands. Each command consists of an operation followed by a number of addresses. The current assembly language for the machine supports a limited number of operations:

-   `MOVE` $\langle dest \rangle$ $\langle source \rangle$: It copies the value of $\langle source  \rangle$ to the memory cell referred by $\langle dest  \rangle$ For example, `MOVE $9 #13` sets $M_9$ to 13, and `MOVE @4 $6` sets $M_ {M_4}$ to the value of $M_6$.

-   `INPUT` (address): It reads a number from the input and stores it in the memory cell referred by $\langle address \rangle$. For example, `INPUT $2` stores the input value in $M_2$, and `INPUT @1` stores the input value in $M_{M_1}$.

-   `OUTPUT` $\langle address  \rangle$: It prints the value of $\langle address  \rangle$ to the output.

-   `ADD` $\langle dest \rangle$ $\langle arg1 \rangle$ $\langle arg2 \rangle$: It puts the sum of the values referred by $\langle arg1 \rangle$ and $\langle arg2 \rangle$ to the memory cell specified by $\langle dest \rangle$. In case of arithmetic overflow, the remainder of the result modulo $2 ^ 32$ is stored in the destination. For example, `ADD @10 #4294967290 #10` sets $M_{M_10}$ to 4, and `ADD $20 @8 $9` sets $M_20$ to $M_{M_8} + M_9$.

-   `MULT` $\langle dest \rangle$ $\langle arg1 \rangle$ $\langle arg2 \rangle$: It performs the multiplication similar to the `ADD` operation. It has the same behavior in case of arithmetic overflow.

-   `AND` $\langle dest \rangle$ $\langle arg1 \rangle$ $\langle arg2 \rangle$: It puts the bit-wise AND of the values referred by $\langle arg1 \rangle$ and $\langle arg2 \rangle$ to the memory cell specified by $\langle dest \rangle$. For example, `AND $15 $33 #7` puts the remainder of $M_33$ modulo 8 in $M_15$.

-   `OR` $\langle dest \rangle$ $\langle arg1 \rangle$ $\langle arg2 \rangle$: It applies the bit-wise OR similar to the `AND` operation. For example, `OR $121 $121 #1` increments $M_121$ if it is even.

-   `XOR` $\langle dest \rangle$ $\langle arg1 \rangle$ $\langle arg2 \rangle$: It applies the bit-wise XOR similar to the `AND` operation. For example, `XOR @11 #52 #37` sets $M_{M_11}$ to 17.

Except the `OUTPUT` operation, the first address given to all the operations must be direct or indirect addresses. Using the above operations, Jamshid wrote an assembly code for the machine. The code reads some numbers from the input and writes a single integer to the output (there is exactly one `OUTPUT` command in the program). Jamshid has executed the program with $k$ different sets of inputs and saved the results. Later, he ran a formatting script on his code, but due to a bug in the script, some parts of the assembly program became corrupt. More specifically, the 5 arithmetic/bit-wise operations (`ADD`, `MULT`, `AND`, `OR`, and `XOR`) were replaced by 5 distinct ASCI characters `A`, `B`, `C,` `D`, `E`. The problem is that it's not clear which operation is represented by each ASCI character. Given the corrupted program together with the $k$ input sets and their results, your job is to help Jamshid find the correspondence of the 5 assembly operations to the 5 ASCI characters.

## Input

The input starts with the corrupted assembly program. Each line of the program contains a single command as specified before. The program contains at most 1OO commands. It is guaranteed that the last command is the only output operation of the program. The next line contains the single integer $k$ ($1 \le k \le 100$). Each of the next $k$ lines is a space-separated sequence of integers specifying an execution log of the program. It is the sequence of input numbers given to the program appended by the program output. All numbers in the input are non-negative integers less than $2^32$.

## Output

You should print a single integer in the first line of output denoting the different number of ways to assign the 5 assembly operations to the 5 ASCI characters. The result may be any number between l and 120. If the result is unique, you have to print the correspondence in the second line. It should be printed as a space-separated permutation of the operators `ADD`, `MULT`, `AND`, `OR`, and `XOR`, in the order which they are respectively replaced by the ASCII characters `A`, `B`, `C`, `D`, `E`.
