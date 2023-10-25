use Employee
select * from Employee_Performance

/*
About Dataset: Uncover the factors that lead to employee attrition and explore 
important questions such as ‘show me a breakdown of distance from home 
by job role and attrition’ or ‘compare average monthly income by education 
and attrition’. This is a fictional data set created by IBM data scientists.

Education
1 'Below College'
2 'College'
3 'Bachelor'
4 'Master'
5 'Doctor'

EmpEnvironmentSatisfaction
1 'Low'
2 'Medium'
3 'High'
4 'Very High'

EmpJobInvolvement
1 'Low'
2 'Medium'
3 'High'
4 'Very High'

EmpJobSatisfaction
1 'Low'
2 'Medium'
3 'High'
4 'Very High'

PerformanceRating
1 'Low'
2 'Good'
3 'Excellent'
4 'Outstanding'

RelationshipSatisfaction
1 'Low'
2 'Medium'
3 'High'
4 'Very High'

WorkLifeBalance
1 'Bad'
2 'Good'
3 'Better'
4 'Best'
*/



-- Q1. Find Avrage age of the employee?
select avg(Age) Avg_age from Employee_Performance
-- Avg_age = 36year





-- Q2. Dipartment vise number of employee ?
select EmpDepartment,COUNT(EmpDepartment) no_of_employee from Employee_Performance
group by EmpDepartment order by no_of_employee desc
/* After see the  result :
	EmpDeparment			No_of_employee
	Sales					373
	Development				361
	Research & Development	343
	Human Resources			54
	Finance					49
	Data Science			20
*/






-- Q3. Total no_of_employee count for MaritalStatus ?
select MaritalStatus,count(MaritalStatus) no_of_emp from Employee_Performance
group by MaritalStatus order by no_of_emp desc
/* After run this query i see:
		MaritalStatus				no_of_emp
		Married						548
		Single						384
		Divorced					268
*/







-- Q4. Find Total no of employee has Education Background is Marketing?
select EducationBackground,count(EducationBackground) background 
from Employee_Performance where EducationBackground='Marketing' 
group by EducationBackground 
-- Total 137 employee having Marketing Background








-- Q5. Fetch The employee who has more then 10 yr of total experience?
select EmpNumber,TotalWorkExperienceInYears from Employee_Performance 
where TotalWorkExperienceInYears>10
-- Total 456 employee having 10+ yr of total work exeperience







-- Q6. Find the no_of_employee has spend more then 10yr in this compney?
select EmpNumber,ExperienceYearsAtThisCompany as Exp_yr from Employee_Performance 
where ExperienceYearsAtThisCompany>10 order by Exp_yr desc 
-- Total 206 employee spend more then 10 yr in this compney.






-- Q7. Select total employee who has more then 12yr of exp in sales department?
select EmpNumber, EmpDepartment,TotalWorkExperienceInYears as yr_of_exp from Employee_Performance
where EmpDepartment='Sales' and TotalWorkExperienceInYears>12 order by yr_of_exp desc
-- Total 117 employee in this list






-- Q8. Select total employee who done business travel frequently and enviroment 
--	   satisfaction is medium(2)?
select EmpNumber,BusinessTravelFrequency,EmpEnvironmentSatisfaction from Employee_Performance
where EmpEnvironmentSatisfaction =2 and BusinessTravelFrequency='Travel_Frequently' 
-- Total 40 employee in this criteria







-- Q9. Fing the avg age of employee who has education level is Bachelor(3) and job 
--	   involmenet is verry high(4)?
with cte as
(select EmpEducationLevel,EmpJobInvolvement,age from Employee_Performance
)
select avg(age) from cte 
-- After see the result we fing the avg_age = 36yr






-- Q10. Chose the no_of_employee by marital status who has job satisfaction is verry high(4)?
select MaritalStatus, count(MaritalStatus)as no_of_employee from Employee_Performance
where EmpJobSatisfaction = 4 group by MaritalStatus order by no_of_employee desc
/* After see the result we find:
		Marital Status			no_of_employee
		Married					169
		Single					129
		Divorced				80 
*/





-- Q11. Which type of job role has highest Excellent performance rating?
select top 1 EmpJobRole,count(PerformanceRating) rating from Employee_Performance
where PerformanceRating=4 group by EmpJobRole order by rating desc
-- The Answer is Developer job role has 31 excelent performance rating.





-- Q12. Find the total epmloyee has age <28 and work life balance is better(3) or best(4) ?
select EmpNumber,Age,  EmpWorkLifeBalance from Employee_Performance
where Age<28 and EmpWorkLifeBalance >=3
-- Total 123 employee in this criteria 