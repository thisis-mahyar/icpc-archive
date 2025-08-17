# Problem J : Vaccination Against Corona

Whenever a baby is born in Neverland, a place on the main road of Neverland is assigned to her/him. In every traditional activity, such as morning exercises, the citizens of Neverland take place on their own assigned place on the main road. Unfortunately, during the corona pandemic, all out-door traditional activities of Neverland are canceled. After the approval of the corona Vaccine, Neverland's council has decided to reopen the activities, but of course with a corona-secure regulation. Neverland's council has assumed that a vaccinated person is safe both in getting infected or in the transmission of the infection. On the other hand for non-vaccinated persons, there is a corona-safe distance that keeping this distance between every two persons keeps them safe. Thus, a safe situation is a situation in which every two non-vaccinated persons kep the corona-safe physical distance. Knowing assigned places to the citizens participating in traditional activities, Neveland's council has decided to vaccinate a minimum number of citizens to make their activity safe.

## Input

The input consists of two lines. The first line contains two integers separated by a space $n$ ($1 \le n \le 10 ^ 5$), the number of Neverland's citizens participating in the activities, and the corona-safe distance $L$ ($1 \le L \le 10 ^ 5$), i.e. two persons will not get the virus from each other if their distance is at least $L$. The next line consists of $n$ integer numbers in the range $[-10 ^ 5, 10 ^ 5]$, where the $i$-th number represents the location of the $i$-th participating citizen. The location is calculated as the distance in meters from the beginning of the main road of Neverland.

## Output

Print the minimum number of citizens that should be vaccinated to have a safe activity in Neverland.
