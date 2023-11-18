-- Hacker Rank Question of Differentiating Trangle Types based on Sides
/* 

SELECT CASE
WHEN A=B AND B=C THEN "Equilateral"
WHEN A+B<C OR A+C<B OR B+C<A THEN "Not A Triangle" 
WHEN A<>B AND B<>C THEN "Scalene"
ELSE "Isosceles"
END
FROM TRIANGLES; 

*/ 

-- Hacker Rank Question on Printing Maximum Salary and Displaying the Count 

/* 

SELECT months*salary,COUNT(months*salary) as a
FROM EMPLOYEE
GROUP BY months*salary DESC
LIMIT 1; 

*/