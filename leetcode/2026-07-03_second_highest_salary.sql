-- Problem: Second Highest Salary
-- Given Employee(id, salary), return the second highest distinct salary.
-- Pattern: DISTINCT + OFFSET/LIMIT, a common DS-screen warm-up.

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

-- Alternative (pandas-style, since most DS screens are Python not SQL):
-- import pandas as pd
-- def second_highest(df: pd.DataFrame) -> float | None:
--     uniq = df['salary'].drop_duplicates().sort_values(ascending=False)
--     return uniq.iloc[1] if len(uniq) > 1 else None
