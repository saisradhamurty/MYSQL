select distinct num as 'ConsecutiveNums' from (
    select num,lead(num,1) over() as 'num1',lead(num,2) over() as 'num2' from logs
)as t where num = num1 and num = num2
