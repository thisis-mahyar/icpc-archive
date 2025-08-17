# Problem I: Congestion Charging Zone

Tehran municipality has set up anew charging method for the Congestion Charging Zone (CCZ) which controls the passage of vehicles in Tehran's high-congestion areas in the congestion period(CP)from 6:30 to 19:00. There are plate detection cameras inside or at the entrances of the CCZ recording vehicles seen at the CCZ. The table below summarizes the new charging method.

| The first time seen in the CP | The last time seen in the CP | Charge |
| :---------------------------: | :--------------------------: | :----: |
|         6:30 to 10:00         |        6:30 to 16:00         | 24000  |
|         6:30 to 10:00         |        16:01 to 19:00        | 36000  |
|        10:01 to 16:00         |        10:01 to 16:00        | 16800  |
|        10:01 to 19:00         |        16:01 to 19:00        | 24000  |

Note that the first time and the last time that a vehicle is seen in the CP may be the same. Write a program to compute the amount of charge of a given vehicle in a specific day.

## Input

The first line of the input contains a positive integer $n$ ($1 \le n \le 100$) where $n$ is the number of records for a vehicle. Each of the next $n$ lines contains a time at which the vehicle is seen. Each time is of form &lt;hour&gt;:&lt;minute&gt;, where &lt;hour&gt; is an integer number between 0 and 23 (inclusive) and &lt;minute&gt; is formatted as an exactly two-digit number between 00 and 59 (inclusive).

## Output

Print the charge to be paid by the owner of the vehicle in the output.
