# Pewlett-Hackard-Analysis

## Overview of the analysis

-  The purpose of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.


## Sources

- Data Source:

	1.[departments](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/departments.csv)

	2.[deparment employes](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/dept_emp.csv)

	3.[department managers](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/dept_manager.csv)

	4.[employees](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/employees.csv)

	5.[salaries](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/salaries.csv)

	6.[titles](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/titles.csv)

- Softwares: Postgresql 14.6


## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

- Queries for the analysis are:  [Queries](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Queries/Employee_Database_Challenge.sql)

### Analysis for Number of Retiring Employees by Title

- Analysis was performed on the employees and titles tables to retrieve the list of employees due for retirement. The list looks like the image below.

![Retire Titles](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Images/retire_titles.png)

- The complete data is stored in a csv file. The link is [Retire_Titles](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/retirement_titles.csv)

- On this list, further analysis was performed to filter employees who were promoted or were transfered to a different department during the tenure. The analysis also checks if the employees are currently working with Pewlett-Hackard. the below image is the final list of employees who are up for retirement.

![Unique Titles](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Images/unique_title.png)

- The complete data is stored in a csv file. The link is [Unique_Titles](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/unique_title.csv)

- Further analyze the above data and find the number of retiring emeployees with their titles. link to the csv file is [retiring_titles](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/retiring_titles.csv)

![Retiring Titles](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Images/retiring_titles.png) 


### Analysis for Employees Eligible for the Mentorship Program

- Analysis is performed on the employees, dept employees and titles tables to retrieve the list of employees those are eligible for mentorship program. The list is show in the image below.

![mentorship_eligibilty](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Images/mentorship_eligibility.png)

- The complete data is stored in a csv file. The link is [mentorship_eligibilty](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/mentorship_eligibility.csv)



## Summary

- After performing analysis, it can be deduced that the impact of the "silver tsunami" is going to be greater than expected. The link to csv that holds this data is: [retire_dept](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/retire_dept.csv)

- The total number of retiring employees in each department are show below

![retiring_dept](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Images/retiring_dept.png)

- The link to the csv is: [retiring_dept](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/retiring_dept.csv)

- Clearly from the above analysis a mentorship program must be held by the retirement-ready employees in the department to mentor the next generation. In order to do so, analysis was performed to find the number of employees in each department who are eligible for the mentorship program.

- The number of employees in each department are [mentorship_dept](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Data/mentorship_dept.csv)

![mentorship_dept](https://github.com/manasidek/Pewlett_Hackard_Analysis/blob/main/Images/mentorship_dept.png)

- Comparing the above data, it can be concluded that there are enough retirement ready employees to mentor the next generation of employees.