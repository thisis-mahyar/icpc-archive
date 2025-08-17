# Problem J: Image Processing Project

You want to be recruited in Cafebazaar, a leading IT company in Iran, as part of an image processing project for detecting celestial bodies. To prove yourself, you should do a pilot project in a mater of hours for the project manager.

The project manager has put some paper sheets on a rectangular table whose color is white. All paper sheets are square and have the same size. Moreover, all paper sheets are white but their boundaries are black. Each side of all paper sheets is parallel to an edge of the table. You must write an image processing program to count the number of paper sheets by receiving a picture of the table taken from above.

## Input

The first line of the input contains two positive integers $r$ and $c$ ($3 \le r, c \le 200$) denoting the number of rows and columns of the given picture, respectively. Precisely, the picture is an $r \times c$ table of pixels. The next $r$ lines, each contains exactly $c$ characters. Each character is `+`, `-`, or `.` representing a pixel of the picture. A dash pixel illustrates one unit of a horizontal side of a paper sheets. A plus pixel illustrates either one unit of a vertical side of a paper sheet or a corner of a paper sheet. A dot pixel is a white pixel.

You can assume that in each row there exists at most one horizontal side. Similarly, in each column, there exists at most one vertical side. It is guaranteed that at least two corners of each paper sheet are visible. A corner is visible when along with the pixel corresponding to the corner, at least one immediate pixel from each of its incident edges is also present in the input. Moreover, It is guaranteed that there is at least a dash pixel in the input.

## Output

Print the number of paper sheets in the output.
