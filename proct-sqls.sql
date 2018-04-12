Emp table data
========================================================================

EMPNO	ENAME	JOB	MGR	HIREDATE	SAL	COMM	DEPTNO
----------------------------------------------------------------------------
7369	SMITH	CLERK	7902	17-Dec-80	800	 	20
7499	ALLEN	SALESMAN 7698	20-Feb-81	1600	300	30
7521	WARD	SALESMAN 7698	22-Feb-81	1250	500	30
7566	JONES	MANAGER	7839	02-Apr-81	2975	 	20
7654	MARTIN	SALESMAN 7698	28-Sep-81	1250	1400	30
7698	BLAKE	MANAGER	7839	01-May-81	2850	 	30
7782	CLARK	MANAGER	7839	09-Jun-81	2450	 	10
7788	SCOTT	ANALYST	7566	09-Dec-82	3000	 	20
7839	KING	PRESIDENT	17-Nov-81	5000	 	10
7844	TURNER	SALESMAN 7698	08-Sep-81	1500	0	30
7876	ADAMS	CLERK	7788	12-Jan-83	1100	 	20
7900	JAMES	CLERK	7698	03-Dec-81	950	 	30
7902	FORD	ANALYST	7566	03-Dec-81	3000	 	20
7934	MILLER	CLERK	7782	23-Jan-82	1300	 	10
SQL-QUERIES



Dept table data:
================================

DEPTNO	DNAME		LOC
--------------------------------------
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES		CHICAGO
40	OPERATIONS	BOSTON




1.	Display all the information of the EMP table?
2.	Display unique Jobs from EMP table?
3.	List the emps in the asc order of their Salaries?
4.	List the details of the emps in asc order of the Dptnos and desc of Jobs?
5.	Display all the unique job groups in the descending order?
6.	Display all the details of all �Mgrs� 
7.	List the emps who joined before 1981.
8.	List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal.
9.	Display the Empno, Ename, job, Hiredate, Exp of all Mgrs  
10.	List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369.
11.	Display all the details of the emps whose Comm. Is more than their Sal.
12.	List the emps in the asc order of Designations of those joined after the second half of 1981.
13.	List the emps along with their Exp and Daily Sal is more than Rs.100.
14.	List the emps who are either �CLERK� or �ANALYST� in the Desc order.
15.	List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority.
16.	List the emp who are working for the Deptno 10 or20.
17.	List the emps who are joined in the year 81.
18.	List the emps who are joined in the month of Aug 1980.
19.	List the emps Who Annual sal ranging from 22000 and 45000.
20.	List the Enames those are having five characters in their Names.
21.	List the Enames those are starting with �S� and with five characters.
22.	List the emps those are having four chars and third character must be �r�.
23.	List the Five character names starting with �S� and ending with �H�.
24.	List the emps who joined in January.
25.	List the emps who joined in the month of which second character is �a�.
26.	List the emps whose Sal is four digit number ending with Zero.
27.	List the emps whose names having a character set �ll� together.
28.	List the emps those who joined in 80�s.
29.	List the emps who does not belong to Deptno 20.
30.	List all the emps except �PRESIDENT� & �MGR� in asc order of Salaries.
31.	List all the emps who joined before or after 1981.
32.	List the emps whose Empno not starting with digit78.
33.	List the emps who are working under �MGR�.
34.	List the emps who joined in any year but not belongs to the month of March.
35.	List all the Clerks of Deptno 20.
36.	List the emps of Deptno 30 or 10 joined in the year 1981.
37.	Display the details of SMITH.
38.	Display the location of  SMITH.
39.	List the total information of EMP table along with DNAME and Loc of all the emps Working Under �ACCOUNTING� & �RESEARCH� in the asc Deptno.
40.	List the Empno, Ename, Sal, Dname of all the �MGRS� and �ANALYST� working in New York, Dallas with an exp more than 7 years without receiving the Comm asc order of Loc.
41.	Display the Empno, Ename, Sal, Dname, Loc, Deptno, Job of all emps working at CJICAGO or working for ACCOUNTING dept with Ann Sal>28000, but the Sal should not be=3000 or 2800 who doesn�t belongs to the Mgr and whose no is having a digit �7� or �8� in 3rd position in the asc order of Deptno and desc order of job.
42.	Display the total information of the emps along with Grades in the asc order.
43.	List all the Grade2 and Grade 3 emps.
44.	Display all Grade 4,5 Analyst and Mgr.
45.	List the Empno, Ename, Sal, Dname, Grade, Exp, and Ann Sal of emps working for Dept10 or20.
46.	List all the information of emp with Loc and the Grade of all the emps belong to the Grade range from 2 to 4 working at the Dept those are not starting with char set �OP� and not ending with �S� with the designation having a char �a� any where joined in the year 1981 but not in the month of Mar or Sep and Sal not end with �00� in the asc order of Grades
47.	List the details of the Depts along with Empno, Ename or without the emps
48.	List the details of the emps whose Salaries more than the employee BLAKE.
49.	List the emps whose Jobs are same as ALLEN.
50.	List the emps who are senior to King.
51.	List the Emps who are senior to their own MGRS.
52.	List the Emps of Deptno 20 whose Jobs are same as Deptno10.
53.	List the Emps whose Sal is same as FORD or SMITH in desc order of Sal.
54.	List the emps Whose Jobs are same as MILLER or Sal is more than ALLEN.
55.	List the Emps whose Sal is > the total remuneration of the SALESMAN.
56.	List the emps who are senior to BLAKE working at CHICAGO & BOSTON.
57.	List the Emps of Grade 3,4 belongs to the dept ACCOUNTING and RESEARCH whose Sal is more than ALLEN and exp more than SMITH in the asc order of EXP.
58.	List the emps whose jobs same as SMITH or ALLEN.
59.	Write a Query to display the details of emps whose Sal is same as of 
60.	 Any jobs of deptno 10 those that are not found in deptno 20.
61.	List of emps of emp1 who are not found in emp2.
62.	Find the highest sal of EMP table.
63.	Find details of highest paid employee.
64.	Find the highest paid employee of sales department. 
65.	List the most recently hired emp of grade3 belongs to  location CHICAGO.
66.	 List the employees who are senior to most recently hired employee working under king.
67.	List the details of the employee belongs to newyork with grade 3 to 5 except �PRESIDENT� whose sal> the highest paid employee of Chicago in a group where there is manager and salesman not working under king
68.	 List the details of the senior employee belongs to 1981.
69.	List the employees who joined in 1981 with the job same as the most senior person of the year 1981.
70.	 List the most senior empl working under the king and grade is more  than 3.
71.	 Find the total sal given to the MGR.
72.	Find the total annual sal to distribute job wise in the year 81.
73.	Display total sal employee belonging to grade 3.
74.	Display the average salaries of all the clerks.
75.	List the employeein dept 20 whose sal is >the average sal 0f dept 10 emps.
76.	Display the number of employee  for each job group deptno wise.
77.	List the manage rno and the number of employees working for those mgrs in the ascending Mgrno.
78.	List the department,details where at least two emps are working
79.	Display the Grade, Number of emps, and max sal of each grade.
80.	Display dname, grade, No. of emps where at least two emps are clerks.
81.	List the details of the department where maximum number of emps are working.
82.	Display the emps whose manager name is jones.
83.	 List the employees whose salary is more than 3000 after giving 20% increment.
84.	List the emps with dept names.
85.	List the emps who are not working in sales dept.
86.	List the emps name ,dept, sal and comm. For those whose salary is between 2000 and 5000 while loc is Chicago.
87.	List the emps whose sal is greater than his managers salary
88.	List the grade, EMP name for the deptno 10 or deptno 30 but sal grade is not 4 while they joined the company before �31-dec-82�.
89.	List the name ,job, dname, location for those who are working as MGRS.
90.	List the emps whose mgr name is jones and also list their manager name.
91.	List the name and salary of ford if his salary is equal to hisal of his grade.
92.	Lit the name, job, dname ,sal, grade dept wise
93.	List the emp name, job, sal, grade and dname except clerks and sort on the basis of highest sal.
94.	List the emps name, job  who are with out manager.
95.	List the names of the emps who are getting the highest sal dept wise.
96.	List the emps whose sal is equal to the average of max and minimum
97.	List the no. of emps in each department where the no. is more than 3.
98.	List the names of depts. Where atleast 3 are working in that department.
99.	List the managers whose sal is more than his employess avg salary.
100.	List the name,salary,comm. For those employees whose net pay is greater than or equal to any other employee salary of the company.
101.	List the emp whose sal<his manager but more than any other manager.
102.	List the employee names and his average salary department wise.
103.	Find out least 5 earners of the company.
104.	Find out emps whose salaries greater than salaries of their managers.
105.	List the managers who are not working under the president.
106.	List the records from emp whose deptno isnot in dept.
107.	List the Name , Salary, Comm and Net Pay is more than any other employee.
108.	List the Enames who are retiring after 31-Dec-89 the max Job period is 20Y.
109.	List those Emps whose Salary is odd value.
110.	List the emp�s whose Salary contain 3 digits.
111.	List the emps who joined in the month of DEC.
112.	List the emps whose names contains �A�.
113.	List the emps whose Deptno is available in his Salary.
114.	List the emps whose first 2 chars from Hiredate=last 2 characters of Salary.
115.	List the emps Whose 10% of Salary is equal to year of joining.
116.	List first 50% of chars of Ename in Lower Case and remaining are upper Case.
117.	List the Dname whose No. of Emps is =to number of chars in the Dname.
118.	List the emps those who joined in company before 15th of the month.
119.	List the Dname, no of chars of which is = no. of emp�s in any other Dept.
120.	List the emps who are working as Managers.
121.	List THE Name of dept where highest no.of emps are working.
122.	Count the No.of emps who are working as �Managers�(using set option).
123.	List the emps who joined in the company on the same date.
124.	List the details of the emps whose Grade is equal to one tenth of Sales Dept.
125.	List the name of the dept where more than average no. of emps are working.
126.	List the Managers name who is having max no.of emps working under him.
127.	List the Ename and Sal is increased by 15% and expressed as no.of Dollars.
128.	Produce the output of EMP table �EMP_AND_JOB� for Ename and Job.
129.	Produce the following output from EMP.
130)	List the emps with Hire date in format June 4, 1988.
131)	Print a list of emp�s Listing �just salary� if Salary is more than 1500, on target if Salary is 1500 and �Below 1500� if Salary is less than 1500.
132)	Write a query which return the day of the week for any date entered in format �DD-MM-YY�.
133)	Write a query to calculate the length of service of any employee with the company, use DEFINE to avoid repetitive typing of functions.
134)	Give a string of format �NN/NN�, verify that the first and last two characters are numbers and that the middle character is�/�. Print the expression �YES� if valid, �NO� if not valid. Use the following values to test your solution. �12/34�,�01/1a�, �99/98�.
135)	Emps hired on or before 15th of any month are paid on the last Friday of that month those hired after 15th are paid on the first Friday of the following month. Print a list of emps their hire date and the first pay date. Sort on hire date.
136)	Count the no. of characters with out considering spaces for each name.
137)	Find out the emps who are getting decimal value in their Sal without using like operator.
138)	List those emps whose Salary contains first four digit of their Deptno.
139)	List those Managers who are getting less than his emps Salary.
140)	Print the details of all the emps who are sub-ordinates to Blake.
141)	List the emps who are working as Managers using co-related sub-query.
142)	List the emps whose Mgr name is �Jones� and also with his Manager name.
143)	Define a variable representing the expression used to calculate on emps total annual remuneration use the variable in a statement, which finds all emps who can earn 30000 a year or more.
144)	Find out how may Managers are their in the company.
145)	Find Average salary and Average total remuneration for each Job type. Remember Salesman earn commission.secommm
146)	Check whether all the emps numbers are indeed unique.
147)	List the emps who are drawing less than 1000 Sort the output by Salary.
148)	List the employee Name, Job, Annual Salary, deptno, Dept name and grade who earn 36000 a year or who are not CLERKS.
149)	Find out the Job that was filled in the first half of 1983 and same job that was filled during the same period of 1984.
150)	Find out the emps who joined in the company before their Managers.
151)	List all the emps by name and number along with their Manager�s name and number. Also List KING who has no �Manager�.
152)	Find all the emps who earn the minimum Salary for each job wise in ascending order.
153)	Find out all the emps who earn highest salary in each job type. Sort in descending salary order.
154)	Find out the most recently hired emps in each Dept order by Hiredate.
155)	List the employee name,Salary and Deptno for each employee who earns a salary greater than the average for their department order by Deptno.
156)	List the Deptno where there are no emps.
157)	List the No.of emp�s and Avg salary within each department for each job.
158)	Find the maximum average salary drawn for each job except for �President�.
159)	Find the name and Job of the emps who earn Max salary and Commission.
160)	List the Name, Job and Salary of the emps who are not belonging to the department 10 but who have the same job and Salary as the emps of dept 10.
161)	List the Deptno, Name, Job, Salary and Sal+Comm of the SALESMAN who are earning maximum salary and commission in descending order.
162)	List the Deptno, Name, Job, Salary and Sal+Comm of the emps who earn the second highest earnings (sal + comm.).
163)	List the Deptno and their average salaries for dept with the average salary less than the averages for all department
164)	List out the Names and Salaries of the emps along with their manager names and salaries for those emps who earn more salary than their Manager.
165)	List out the Name, Job, Salary of the emps in the department with the highest average salary. 
166)	List the empno,sal,comm. Of emps.
167)	List the details of the emps in the ascending order of the sal.
168)	List the dept in the ascending order of the job and the desc order of the emps print empno, ename.
169)	Display the unique dept of the emps.
170)	Display the unique dept with jobs.
171)	Display the details of the blake.
172)	List all the clerks.
173)	list all the employees joined on 1st may 81.
174)	List the empno,ename,sal,deptno of the dept 10 emps in the ascending order of salary.
175)	List the emps whose salaries are less than 3500.
176)	List the empno,ename,sal of all the emp joined before 1 apr 81.
177)	List the emp whose annual sal is <25000 in the asc order of the salaries.
178)	List the empno,ename,annsal,dailysal  of all the salesmen in the asc ann sal
179)	List the empno,ename,hiredate,current date & exp in the ascending order of the exp.
180)	List the emps whose exp is more than 10 years.
181)	List the empno,ename,sal,TA30%,DA 40%,HRA 50%,GROSS,LIC,PF,net,deduction,net allow and net sal in the ascending order of the net salary.
182)	List the emps who are working as managers.
        
183)	List the emps who are either clerks or managers.
184)	List the emps who have joined on the following dates 1 may 81,17 nov 81,30 dec 81
185)	List the emps who have joined in the year 1981.
186)	List the emps whose annual sal ranging from 23000 to 40000.
187)	List the emps working under the mgrs 7369,7890,7654,7900.
188)	List the emps who joined in the second half of 82.
189)	 List all the 4char emps.
190)	List the emp names starting with �M� with 5 chars.
191)	List the emps end with �H� all together 5 chars.
192)	List names start with �M�.
193)	List the emps who joined in the year 81.
194)	List the emps whose sal is ending with 00.
195)	List the emp who joined in the month of JAN.
196)	Who joined in the month having char �a�. 
197)	Who joined in the month having second char �a�
198)	 List the emps whose salary is 4 digit number.
199)	List the emp who joined in 80�s.
200)	List the emp who are clerks who have exp more than 8ys.
201)	List the mgrs of dept 10 or 20.
202)	List the emps joined in jan with salary ranging from 1500 to 4000.
203)	List the unique jobs of dept 20 and 30 in desc order.
204)	List the emps along with exp of those working under the mgr whose number is starting with 7 but should not have a 9 joined before 1983.
205)	List the emps who are working as either mgr or analyst with the salary ranging from 2000 to 5000 and with out comm.
206)	List the empno,ename,sal,job of the emps with /ann sal <34000 but receiving some comm. Which should not be>sal and desg should be sales man working for dept 30.
207)	List the emps who are working for dept 10 or 20 with desgs as clerk or analyst with a sal is either 3 or 4 digits with an exp>8ys but does not belong to mons of mar,apr,sep and working for mgrs &no is not ending with 88 and 56.
208)	List the empno,ename,sal,job,deptno&exp of all the emps belongs to dept 10 or 20 with an exp 6 to 10 y working under the same mgr with out comm. With a job not ending irrespective of the position with comm.>200 with exp>=7y and sal<2500 but not belongs to the month sep or nov working under the mgr whose no is not having digits either 9 or 0 in the asc dept& desc dept
209)	List the details of the emps working at Chicago.
210)	List the empno,ename,deptno,loc of all the emps.
211)	List the empno,ename,loc,dname of all the depts.,10 and 20.
212)	List the empno, ename, sal, loc of the emps working at Chicago dallas with an exp>6ys.
213)	List the emps along with loc of those who belongs to dallas ,newyork with sal ranging from 2000 to 5000 joined in 81.
214)	List the empno,ename,sal,grade of all emps.
215)	List the grade 2 and 3 emp of Chicago.
216)	List the emps with loc and grade of accounting dept or the locs dallas or Chicago with the grades 3 to 5 &exp >6y
217)	List the grades 3 emps of research and operations depts.. joined after 1987 and whose names should not be either miller or allen.
218)	List the emps whose job is same as smith.
219)	 List the emps who are senior to miller.
220)	List the emps whose job is same as either allen or sal>allen.
221)	List the emps who are senior to their own manager.
222)	List the emps whose sal greater than blakes sal.
223)	List the dept 10 emps whose sal>allen sal.
224)	List the mgrs who are senior to king and who are junior to smith.
225)	List the empno,ename,loc,sal,dname,loc of the all the emps belonging to king dept.
226)	List the emps whose salgrade are greater than the grade of miller.
227)	List the emps who are belonging dallas or Chicago with the grade same as adamsor exp more than smith.
228)	List the emps whose sal is same as ford or blake.
229)	List the emps whose sal is same as any one of the following.
230)	Sal of any clerk of emp1 table.
231)	Any emp of emp2 joined before 82.
232)	The total remuneration (sal+comm.) of all sales person of Sales dept belonging to emp3 table.
233)	Any Grade 4 emps Sal of emp 4 table.
234)	Any emp Sal of emp5 table.
235)	List the highest paid emp.
236)	List the details of most recently hired emp of dept 30.
237)	List the highest paid emp of Chicago joined before the most  recently hired emp of grade 2.
238)	List the highest paid emp working under king.
		
