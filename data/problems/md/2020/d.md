# Problem D : Necklace Construction

Yalda wants to give a brilliant gift to Bahar for her birthday. She has drawn the sketch ofa necklace consisting of $n$ beads of different colors on paper. The necklace is illustrated by a string of length $n$ which is made up of lowercase English letters that indicate the colors of the beads. Each of the 26 English letters represents a distinct color. Yalda is going to make the necklace using the infinite number of beads in different colors she has. However, as Bahar's birthday is approaching, she has a little time and wants to make the necklace in the fewest steps possible. Yalda has two empty necklaces initially. One of the necklaces is going to be the final gift, and the other one is a buffer necklace that helps her during the construction. At each step she can do one of the followings:

-   Add a bead of the desired color at an arbitrary place in the buffer necklace,

-   Remove a bead at an arbitrary place from the buffer necklace,

-   Substitute a bead of the buffer necklace with a bead of the desired color, or

-   Append a string of beads to the end of the main necklace, copying the buffer necklace. The added string will be exactly the same as the buffer necklace. However, the order of the beads in the buffer necklace wil get reversed during the copying procedure (for example, if the main necklace equals `pq` and the buffer necklace equals `abc` before this procedure, the main necklace becomes `pqabc` and the buffer necklaces becomes `cba` after the procedure).

Yalda would really appreciate it if you could tel her the minimum number of steps required for making the necklace.

## Input

The only line of the input consists of a non-empty string of lowercase English letters with at most 300 letters.  
The string indicates the sketch of the desired necklace.

## Output

In the only line of output, print a single number indicating the minimum number of steps that are required to make the necklace.
