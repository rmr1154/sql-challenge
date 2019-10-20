/*
 * Instructions said descending but didn't specify if that was to be by last_name or count
 * so i have provided both.
 * 
 * 8a = count descending
 * 8b = last_name descending
 * 
 * 
 */

select
last_name
,count(last_name)
from employees
group by last_name
order by count(last_name) desc
