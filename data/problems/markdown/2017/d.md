# Problem D : World Cup Draw

The draw for the 2O18 FIFA World Cup took place onFriday, December 1 at the State Kremlin Palace in Moscow. The FIFA released the draw procedure a few months ago on the official FIFA website, explained below.

The 32 qualified finalists are first distributed into four seeding pots based on the FIFAranking for October 2017. Pot 1 contains the host Russia and the seven highest ranking teams; the next eight highest ranked teams in Pot 2, and so on. Then, teams are drawn into eight groups of four, which are labeled from $A$ to $H$. The pots are emptied into groups in order from Pot 1 through Pot 4. The draw must satisfy the following two rules:

<ol type = "i">

<li>
    no teams from the same pot can be drawn into the same group.
</li>

<li>
    with the exception of UEFA, which has more qualified teams (14)than the groups(8), no teams from the same confederation can be drawn in the same group. Moreover, at most two teams from UEFA can be drawn in the same group.
</li>

</ol>

Order groups alphabetically from $A$ to $H$ with $A$ and $H$ respectively being the leftmost and rightmost groups. At each step of the draw, the drawn team $x$ from Pot $i$ is placed in the first group from left (starting from group $A$) not violating rules (i) and (ii) and being possible to distribute the remaining teams (not drawn teams so far) of Pot $i$ in the next steps without violating rules (i) and (ii). Computer scientists have assured FIFA that it is always possible to distribute teams of Pot $i$ into groups satisfying rules (i) and (ii), regardless of how the other teams in Pot 1 through Pot $i - 1$ are distributed into groups.

The table below shows the pots. In this table, $x(r, c)$ means that team $x$ belongs to confederation $c$, and its rank in the FIFA ranking is $r$. You are to write a program to simulate the draw and report the groups for the given draw order for each pot.

|      Seeding Pot 1      |      Seeding Pot 2      |       Seeding Pot 3       |     Seeding Pot 4      |
| :---------------------: | :---------------------: | :-----------------------: | :--------------------: |
|    Russia (65, UEFA)    |     Spain (8, UEFA)     |    Denmark (19, UEFA)     |   Serbia (38, UEFA)    |
|    Germany (1, UEFA)    |   Peru (10, CONMEBOL)   |    Iceland (21, UEFA)     |   Nigeria (41, CAF)    |
|  Brazil (2, CONMEBOL)   | Switzerland (11, UEFA)  | Costa Rica (22, CONCACAF) |  Australia (43, AFC)   |
|   Portugal (3, UEFA)    |   England (12, UEFA)    |     Sweden (25, UEFA)     |    Japan (44, AFC)     |
| Argentina (4, CONMEBOL) | Colombia (13, CONMEBOL) |     Tunisia (28, CAF)     |   Morocco (48, CAF)    |
|    Belgium (5, UEFA)    |  Mexico (16, CONCACAF)  |      Egypt (30, CAF)      | Panama (49, CONCACAF)  |
|    Poland (6, UEFA)     |  Uruguay(17, CONMEBOL)  |     Senegal (32, CAF)     | South Korea (62, AFC)  |
|    France (7, UEFA)     |   Croatia (18, UEFA)    |      Iran (34, AFC)       | Saudi Arabia (63, AFC) |

## Input

There are multiple test cases in the input. Each test case consists of 4 lines. The $i$th line presents all 8 team names (as written in the table) in Pot $i$ in the draw order (from left to right). Team names are separated by "," and there may exist a space before or after team names. In all test cases, Russia is the first drawn country in Pot1 due to the old tradition of placing the host country in group $A$. The input terminates with "`End`" that should not be processed.

## Output

For each testcase, simulate the draw based on the given draw order, and compute the weight of each group which is the summation of team ranks in that group. For each group, print the group name(an uppercase letter)and its weight separated bya space in one line. This must be done in the increasing order of the weights from the strongest group (the group with the minimum weight) to the weakest group (the group with the maximum weight). In the case of a tie, print based on the alphabetical order of group names.
