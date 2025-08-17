# Problem E: Parking Party

Peyman has decided to host a dinner party in his house at Zabol. His house has a rectangular parking lot which can be represented by a grid with $n$ rows and $m$ columns. A car can park in one of the $n \times m$ cells in this grid. However, some cells are occupied by immovable pillars and thus, no car can park in or passthrough them. Each row or column in the parking lot has an entrance on both its ends. When a car enters the parking lot through an entrance, it can just move forward straightly in the corresponding row or column; it stops and parks in a grid cell when it reaches the opposite entrance or when the next cell is occupied by a pillar or another parked car. Additionally, a car cannot enter a row or column if its first cell is already occupied.

Peyman wants to maximize the number of cars that can be parked in his parking lot. In order to do that, he can instruct the guests on which entrance to take upon arrival. Your task is to help Peyman achieve this task.

## Input

The first line of input contains two space-separated integers $n$ and $m$ ($1 \le n, m \le 1000$), the number of rows and columns in the parking lot, respectively. Each of the following $n$ lines contain a string of length $m$ made of"`.`" and"`o`" characters. the $j$-th character of the ($i + 1$)-th line is an `o` if the cell in row $i$ and column $j$ contains a pillar, and it is a "`.`" if it is empty.

## Output

Print a single integer $k$, the maximum number of cars Peyman can park in his parking lot.
