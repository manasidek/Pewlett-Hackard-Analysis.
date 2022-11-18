# Pewlett-Hackard-Analysis

## Overview of the analysis

-  The purpose of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.

## Sources

- Data Source:
	1.[departments]()
	2.[deparment employes]()
	3.[department managers]()
	4.[employees]()
	5.[salaries]()
	6.[titles]()

- Softwares: Postgresql 14.6

## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

- Queries for the analysis are:  [Queries]()

### Analysis for Number of Retiring Employees by Title

- Analysis was performed on the employees and titles tables to retrieve the list of employees due for retirement. The list looks like the image below.

![Retire Titles]()

- The complete data is stored in a csv file. The link is [Retire_Titles]()

- On this list, further analysis was performed to filter employees who were promoted or were transfered to a different department during the tenure. The analysis also checks if the employees are currently working with Pewlett-Hackard. the below image is the final list of employees who are up for retirement.

![Unique Titles]()

- The complete data is stored in a csv file. The link is [Unique_Titles]()

- Further analyze the above data and find the number of retiring emeployees with their titles. link to the csv file is [retiring_titles]()

![Retiring Titles]() 

### Analysis for Employees Eligible for the Mentorship Program

- Analysis is performed on the employees, dept employees and titles tables to retrieve the list of employees those are eligible for mentorship program. The list is show in the image below.

![mentorship_eligibilty]()

- The complete data is stored in a csv file. The link is [mentorship_eligibilty]()


## Summary

- After performing analysis, it can be deduced that the impact of the "silver tsunami" is going to be greater than expected. The number of employees who are going to retire from every department is as shown in thw image below.

![retire_dept]()

- The link to csv that holds this data is: [retire_dept]()

- The total number of retiring employees in each department are show below

![retiring_dept]()

- The link to the csv is: [retiring_dept]()

- Clearly from the above analysis a mentorship program must be held by the retirement-ready employees in the department to mentor the next generation. In order to do so, analysis was performed to find the number of employees in each department who are eligible for the mentorship program. 

- The list of employees is [mentors_dept]()

![mentors_dept]()

- The number of employees in each department are [mentorship_dept]()

![mentorship_dept]()