EMPNO	ENAME	JOB	 MGR	HIREDATE	SAL	COMM	DEPTNO
7369	SMITH	CLERK	 7902	17-Dec-80	800	 	20
7499	ALLEN	SALESMAN 7698	20-Feb-81	1600	300	30
7521	WARD	SALESMAN 7698	22-Feb-81	1250	500	30
7566	JONES	MANAGER	 7839	02-Apr-81	2975	 	20
7654	MARTIN	SALESMAN 7698	28-Sep-81	1250	1400	30
7698	BLAKE	MANAGER	 7839	01-May-81	2850	 	30
7782	CLARK	MANAGER	 7839	09-Jun-81	2450	 	10
7788	SCOTT	ANALYST	 7566	09-Dec-82	3000	 	20
7839	KING	PRESIDENT	17-Nov-81	5000	 	10
7844	TURNER	SALESMAN 7698	08-Sep-81	1500	0	30
7876	ADAMS	CLERK	 7788	12-Jan-83	1100	 	20
7900	JAMES	CLERK	 7698	03-Dec-81	950	 	30
7902	FORD	ANALYST	 7566	03-Dec-81	3000	 	20
7934	MILLER	CLERK	 7782	23-Jan-82	1300	 	10
SQL-QUERIES
Emp table data
Dept table data
DEPTNO	DNAME	LOC
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON




1Display all the information of the EMP table?
A      select * from emp;
2Display unique Jobs from EMP table?
A)	select  distinct job from emp;
B)	select unique job from emp;
3List the emps in the asc order of their Salaries?
A      select  * from emp  order by sal asc;
4List the details of the emps in asc order of the Dptnos and desc of Jobs?
A)select * from emp order by deptno asc,job desc;
5Display all the unique job groups in the descending order?
A)select distinct job from emp order by job desc;
6Display all the details of all �Mgrs� 
  A)Select * from emp where empno in ( select  mgr  from emp      ;
7List the emps who joined before 1981.
A      select * from emp where hiredate < (�01-jan-81�);
8List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal.
 A      select empno ,ename ,sal,sal/30,12*sal annsal from emp order by annsal asc;
9Display the Empno, Ename, job, Hiredate, Exp of all Mgrs  
A      select  empno,ename ,job,hiredate, months_between(sysdate,hiredate )      exp from emp where empno in (select mgr from emp);
10List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369.
A )     select empno,ename,sal,exp from emp where mgr = 7369;
11Display all the details of the emps whose Comm. Is more than their Sal.
A )     select * from emp where comm. > sal;
12List the emps in the asc order of Designations of those joined after the second half of 1981.
A )     select * from emp where hiredate > (�30-jun-81�)     and to_char(hiredate,�YYYY�)     = 1981 order by job asc;
13List the emps along with their Exp and Daily Sal is more than Rs.100.
A)     select * from emp where (sal/30)     >100;
14List the emps who are either �CLERK� or �ANALYST� in the Desc order.
A)     select * from emp where job = �CLERK� or job = �ANALYST� order by job desc;
15List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority.
A)     select  * from emp where hiredate  in (�01-may-81�,�03-dec-81�,�17-dec-81�,�19-jan-80�)  order by hiredate asc;
16List the emp who are working for the Deptno 10 or20.
A)          select * from emp where deptno = 10  or deptno = 20 ;
17List the emps who are joined in the year 81.
A)          select * from emp where  hiredate between �01-jan-81� and �31-dec-81�;
18List the emps who are joined in the month of Aug 1980.
A)	select * from emp where hiredate between �01-aug-80� and �31-aug-80�;   (OR)
select * from emp where to_char(hiredate,�mon-yyyy�) =�aug-1980;
19List the emps Who Annual sal ranging from 22000 and 45000.
A)          select * from emp where 12*sal between 22000 and 45000;
20List the Enames those are having five characters in their Names.
A)          select  ename from emp where  length (ename) = 5;
21List the Enames those are starting with �S� and with five characters.
A)          select ename from emp where  ename like �S%� and length (ename) = 5;
22List the emps those are having four chars and third character must be �r�.
A)          select  * from emp where length(ename) = 4 and ename like �__R%�;
23List the Five character names starting with �S� and ending with �H�.
A)          select * from emp where length(ename) = 5 and ename like  �S%H�;
24List the emps who joined in January.
A)          select * from emp where to_char (hiredate,�mon�) = �jan�;
25List the emps who joined in the month of which second character is �a�.
A)	select * from emp where to_char(hiredate,�mon�)  like �_a_�; (OR)
B)          select * from emp where to_char(hiredate,�mon�) like �_a%�;
26List the emps whose Sal is four digit number ending with Zero.
A)          select  *  from  emp where  length (sal) = 4 and sal like �%0�;
27List the emps whose names having a character set �ll� together.
A)          select  * from emp where  ename like �%LL%�;
28List the emps those who joined in 80�s.
A)          select * from emp where  to_char(hiredate,�yy�)  like �8%�;
29List the emps who does not belong to Deptno 20.
A)          select * from emp where  deptno not in (20); (OR)
B)          select * from emp where  deptno != 20; (OR)
C)          select * from emp where deptno <>20; (OR)
D)          select  * from emp where deptno not like �20�;
30List all the emps except �PRESIDENT� & �MGR� in asc order of Salaries.
A)	Select * from emp where  job not in (�PRESIDENT�,�MANAGER�)  order by sal  asc;
B)	select * from emp where job not like �PRESIDENT� and job not like �MANAGER�  order by sal  asc;
C)          select * from emp where job != �PRESIDENT� and job <> �MANAGER�  order  by  sal  asc;
31List all the emps who joined before or after 1981.
A)	select * from emp where to_char (hiredate,�YYYY�)  not in (�1981�);  (OR)
B)	select *  from emp where to_char ( hiredate,�YYYY�)  !=  �1981�;   (OR) 
C)	select * from emp where to_char(hiredate,�YYYY�)  <>  �1981� ; (OR) 
D)          select * from emp where to_char (hiredate ,�YYYY�)  not like �1981�;
32List the emps whose Empno not starting with digit78.
A)  select * from emp where empno not like �78%�;
33List the emps who are working under �MGR�.
A)          select e.ename || � works for � || m.ename  from emp e ,emp m where e.mgr = m.empno ;        (OR)
B)          select  e.ename || � has an employee �|| m.ename from emp e , emp m where e.empno = m.mgr;
34List the emps who joined in any year but not belongs to the month of March.
A)	select * from emp  where  to_char (hiredate,�MON�) not in (�MAR�);  (OR)
B)	select * from emp where to_char (hiredate,�MON�)  !=  �MAR�; (OR) 
C)	select * from emp  where to_char(hiredate,�MONTH�) not like �MAR%� ;  (OR) 
D)	select * from emp where to_char(hiredate,�MON�)  <> �MAR�;
35List all the Clerks of Deptno 20.
A)select * from emp where job =�CLERK� and deptno = 20;
36List the emps of Deptno 30 or 10 joined in the year 1981.
A)          select * from emp where to_char(hiredate,�YYYY�) = �1981� and (deptno =30 or deptno =10) ;  (OR)  select *  from emp where to_char (hiredate,�YYYY�)  in (�1981�)  and  (deptno = 30 or deptno =10 ) ;
37Display the details of SMITH.
A)          select * from emp where ename = �SMITH� ;
38Display the location of  SMITH.
A)          select loc from emp  e , dept d where  e.ename = �SMITH� and  e.deptno = d.deptno ;
39List the total information of EMP table along with DNAME and Loc of all the emps Working Under �ACCOUNTING� & �RESEARCH� in the asc Deptno.
A)	select * from emp e ,dept d where (dname = �ACCOUNTING� or dname =�RESEARCH� ) and e.deptno = d.deptno order by e.deptno asc;  (OR) 
B)	select * from emp e ,dept d where d.dname in (�ACCOUNTING�,�RESEARCH�) and e.deptno = d.deptno order by e.deptno asc;
40List the Empno, Ename, Sal, Dname of all the �MGRS� and �ANALYST� working in New York, Dallas with an exp more than 7 years without receiving the Comm asc order of Loc.
A)	select e.empno,e.ename,e.sal,d.dname  from emp e ,dept d where  d.loc in (�NEW YORK�,�DALLAS�) and e.deptno = d.deptno and e.empno in (select e.empno from emp e where e.job in (�MANAGER�,�ANALYST�) and  (months_between(sysdate,e.hiredate)/12)> 7  and  e.comm. is null) 
       order by d.loc  asc;
41Display the Empno, Ename, Sal, Dname, Loc, Deptno, Job of all emps working at CJICAGO or working for ACCOUNTING dept with Ann Sal>28000, but the Sal should not be=3000 or 2800 who doesn�t belongs to the Mgr and whose no is having a digit �7� or �8� in 3rd position in the asc order of Deptno and desc order of job.
A)          select E.empno,E.ename,E.sal,D.dname,D.loc,E.deptno,E.job
from emp E,dept D
where (D.loc = 'CHICAGO' or D.dname = 'ACCOUNTING') and E.deptno=D.deptno and E.empno in
(select E.empno from emp E where (12*E.sal) > 28000 and  E.sal not in (3000,2800)  and E.job !='MANAGER' 
and ( E.empno like '__7%' or E.empno like '__8%')) 
order by E.deptno asc , E.job desc;
42Display the total information of the emps along with Grades in the asc order.
A)          select * from emp e ,salgrade s where e.sal between s.losal and s.hisal  order by grade asc; (OR) 
B)          select * from emp e ,salgrade s where e.sal >= s.losal and e.sal <= s.hisal  order by s.grade  asc;        (using between and is a bit simple)
43List all the Grade2 and Grade 3 emps.
A)	select * from emp e where e.empno in (select e.empno from emp e ,salgrade s where e.sal  between s.losal and s.hisal and s.grade in(2,3)); (OR)  
B)          select * from emp e ,salgrade s where e.sal between s.losal and s.hisal  and   
                s.grade in (2,3) ;
44Display all Grade 4,5 Analyst and Mgr.
A)          select * from emp e, salgrade s where e.sal between s.losal and s.hisal  and s.grade in (4,5) and e.empno in (select e.empno from emp e where e.job in (�MANAGER�,�ANALYST�) ); 
45List the Empno, Ename, Sal, Dname, Grade, Exp, and Ann Sal of emps working for Dept10 or20.
A)          selectE.empno,E.ename,E.sal,S.grade,D.dname,(months_between(sysdate,E.hiredate)/12) "EXP" ,12*E.sal  �ANN SAL� 
from emp E,dept D ,salgrade S
where E.deptno in (10,20) and E.deptno = D.deptno  and E.sal between S.losal and S.hisal ;
46List all the information of emp with Loc and the Grade of all the emps belong to the Grade range from 2 to 4 working at the Dept those are not starting with char set �OP� and not ending with �S� with the designation having a char �a� any where joined in the year 1981 but not in the month of Mar or Sep and Sal not end with �00� in the asc order of Grades
A)  select e.empno,e.ename,d.loc,s.grade,e.sal from emp e ,dept d,salgrade s where e.deptno = d.deptno 
and (d.dname not like 'OP%' and d.dname not like '%S') and e.sal between s.losal and s.hisal and s.grade in (2,3,4)
and empno in (select empno from emp where job like '%A%'and sal not like '%00' and (to_char (hiredate,'YYYY') = '1981'
and to_char(hiredate,'MON') not in ('MAR','SEP')));
47List the details of the Depts along with Empno, Ename or without the emps
A)          select * from emp e,dept d where e.deptno(+)= d.deptno;
48List the details of the emps whose Salaries more than the employee BLAKE.
A)          select * from emp where sal > (select  sal from emp where ename = �BLAKE�);
49List the emps whose Jobs are same as ALLEN.
A)          select * from emp where job = (select job from emp where ename = �ALLEN�);
50List the emps who are senior to King.
A)	select * from emp where hiredate < ( select hiredate from emp where ename = �KING�);
51List the Emps who are senior to their own MGRS.
A)	select * from emp w,emp m where w.mgr = m.empno  and w.hiredate <  m.hiredate ; (OR) 
B)	select * from emp w,emp m where w.empno= m.mgr and 
w.hiredate> m.hiredate;
52List the Emps of Deptno 20 whose Jobs are same as Deptno10.
A)          select * from emp e ,dept d where d.deptno = 20 and e.deptno = d.deptno and e.job in ( select e.job from emp e,dept d where e.deptno = d.deptno and d.deptno =10);
53List the Emps whose Sal is same as FORD or SMITH in desc order of Sal.
A)
Select *  from  emp where sal in (select sal from emp where ( ename = �SMITH� or  ename = �FORD� ))  order by sal desc;
54List the emps Whose Jobs are same as MILLER or Sal is more than ALLEN.
A)          select *  from emp  where job = (select  job from emp where ename = �MILLER� ) or  sal>(select sal from emp where ename = �ALLEN�);
55List the Emps whose Sal is > the total remuneration of the SALESMAN.
A)          select * from emp where sal >(select sum(nvl2(comm,sal+comm,sal)) from emp  where job = �SALESMAN�);
56List the emps who are senior to BLAKE working at CHICAGO & BOSTON.
A)	select * from emp e ,dept d where  d.loc in (�CHICAGO�,�BOSTON�) and e.deptno = d.deptno and e.hiredate <(select e.hiredate from emp e where e.ename = �BLAKE�) ;
57List the Emps of Grade 3,4 belongs to the dept ACCOUNTING and RESEARCH whose Sal is more than ALLEN and exp more than SMITH in the asc order of EXP.
A)	select * from emp e where e.deptno in (select d.deptno  from dept d where d.dname  in (�ACCOUNTING�,�RESEARCH�) ) and  
 e.sal >(select sal from emp where ename = �ALLEN�)  and  
e.hiredate <( select hiredate from emp where ename = �SMITH�) and 
e.empno in (select e.empno from emp e ,salgrade s where e.sal between s.losal and s.hisal  and s.grade in (3,4) ) 
order by e.hiredate desc;
58List the emps whose jobs same as SMITH or ALLEN.
A)	select * from emp where  job in (select job from emp where ename = �SMITH� or ename = �ALLEN�);  (OR)
             B)          select * from emp where job in (select job from emp where ename in (�SMITH�,�ALLEN�);
59Write a Query to display the details of emps whose Sal is same as of 
a)	Employee Sal of EMP1 table.
b)	� Sal of any Mgr of EMP2 table.
c)	The sal of any person with exp of 5 years belongs to the sales dept of emp3 table.
d)	 Any grade 2 employee of emp4 table. 
e)	Any grade 2 and 3 employee working fro sales dept or operations dept joined in 89.
60 Any jobs of deptno 10 those that are not found in deptno 20.
 A)          select  e.job from emp e where e.deptno = 10 and e.job not in (select job from emp where deptno =20);
61List of emps of emp1 who are not found in emp2.
62Find the highest sal of EMP table.
A)          select max(sal) from emp;
63Find details of highest paid employee.
A)	select * from emp where sal in (select  max(sal) from emp);
64Find the highest paid employee of sales department. 
A)          select * from emp where sal in (select max(sal) from emp where deptno in (select d.deptno from
dept d where d.dname = 'SALES'));
65List the most recently hired emp of grade3 belongs to  location CHICAGO.
A)          select * from emp e where  e.deptno in ( select  d.deptno from dept d where d.loc = 'CHICAGO') and 
 e.hiredate in  (select max(hiredate) from emp where empno in (select empno from emp e,salgrade s 
where e.sal between s.losal and s.hisal and s.grade = 3)) ; (or)
select * from emp e,dept d where d.loc='chicago'
and hiredate in(select max(hiredate) from emp e,salgrade s 
where sal between losal and hisal and grade=3);
66 List the employees who are senior to most recently hired employee working under king.
A)          select * from emp where hiredate < (select max(hiredate) from emp where mgr in 
(select empno from emp where ename = 'KING')) ;
67List the details of the employee belongs to newyork with grade 3 to 5 except �PRESIDENT� whose sal> the highest paid employee of Chicago in a group where there is manager and salesman not working under king
A)          select * from emp where deptno in (select deptno from dept where dept.loc ='NEW YORK') 
and empno in (select empno from emp e,salgrade s where e.sal between s.losal and s.hisal and 
s.grade in (3,4,5) ) and job != 'PRESIDENT' and sal >(select max(sal) from emp where deptno in 
(select deptno from dept where dept.loc = 'CHICAGO') and job in ('MANAGER','SALESMAN') and 
mgr not in (select empno from emp where ename = 'KING'));
68 List the details of the senior employee belongs to 1981.
A)	select  *  from emp where hiredate in (select min(hiredate) from emp   where  to_char( hiredate,�YYYY�) = �1981�);  (OR) 
B)	select * from emp where hiredate  = (select min(hiredate) from emp  where to_char(hiredate,�YYYY�) = �1981�);
69List the employees who joined in 1981 with the job same as the most senior person of the year 1981.
A)select * from emp where job in (select  job from emp where hiredate in 
     (select min(hiredate) from emp where to_char(hiredate,�YYYY�) =�1981�));
70 List the most senior empl working under the king and grade is more  than 3.
A)          select * from emp where hiredate in (select min(hiredate) from emp where empno in
(select empno from emp e ,salgrade s where e.sal between s.losal and s.hisal and s.grade in (4,5)))
and mgr in (select empno from emp where ename = 'KING');
71 Find the total sal given to the MGR.
A)	select sum (sal) from emp where job = �MANAGER�; (OR)
           B)          select sum(sal) from emp where empno in(select mgr from emp);
72Find the total annual sal to distribute job wise in the year 81.
A)          select job,sum(12*sal) from emp where to_char(hiredate,'YYYY') = '1981'
group by job ;
73Display total sal employee belonging to grade 3.
A)	select sum(sal) from emp where empno
in  (select empno from emp e ,salgrade s
where e.sal between s.losal and s.hisal and s.grade = 3)
74Display the average salaries of all the clerks.
A)          select avg(sal) from emp where job = �CLERK�;
75List the employeein dept 20 whose sal is >the average sal 0f dept 10 emps.
A)          select * from emp where deptno =20 and sal >(select avg (sal) from emp where  deptno = 10);
76Display the number of employee  for each job group deptno wise.
A)	select  deptno ,job ,count(*)  from emp group by  deptno,job; (or)
            B)          select d.deptno,e.job,count(e.job) from emp e,dept d where e.deptno(+)=d.deptno group by e.job,d.deptno;
77List the manage rno and the number of employees working for those mgrs in the ascending Mgrno.
A)	select w.mgr ,count(*) from emp w,emp m 
       where w.mgr = m.empno 
group by w.mgr 
order by w.mgr asc; 
78List the department,details where at least two emps are working
A)	select deptno ,count(*) from emp group by deptno 
       having count(*) >= 2;
79Display the Grade, Number of emps, and max sal of each grade.
A)          select s.grade ,count(*),max(sal) from emp e,salgrade s where e.sal between s.losal and s.hisal 
group by s.grade;
80Display dname, grade, No. of emps where at least two emps are clerks.
A)          select d.dname,s.grade,count(*) from emp e,dept d,salgrade s where e.deptno = d.deptno and 
e.job = 'CLERK' and e.sal between s.losal and s.hisal  group by d.dname,s.grade having count(*) >= 2;
81List the details of the department where maximum number of emps are working.
A)	select * from dept where deptno in 
      (select deptno from emp group by deptno         
      having count(*) in 
                               (select max(count(*)) from emp group by deptno) ); (OR) 
B)	select d.deptno,d.dname,d.loc,count(*) from emp e ,dept d 
                                     where e.deptno = d.deptno group by d.deptno,d.dname,d..loc 
                               having count(*) = (select max(count(*) ) from emp group by deptno);
82Display the emps whose manager name is jones.
A)	select * from emp where mgr in 
     (select empno from emp where ename = �JONES�); (OR) 
B)	select * from emp where mgr = 
      (select empno from emp where ename = �JONES�);
83 List the employees whose salary is more than 3000 after giving 20% increment.
A)	SELECT * FROM EMP WHERE (1.2*SAL) > 3000 ;
84List the emps with dept names.
A)          select e.empno,e.ename,e.job,e.mgr,e.hiredate,e.sal,e.comm,e.deptno,d.dname 
       from emp e ,dept d where e.deptno = d.deptno;
85List the emps who are not working in sales dept.
A)	select * from emp where deptno not in 
       (select deptno from emp where dname = �SALES�);
86List the emps name ,dept, sal and comm. For those whose salary is between 2000 and 5000 while loc is Chicago.
A)          select e.ename,e.deptno,e.sal,e.comm from emp e ,dept d where e.deptno = d.deptno and 
d.loc = 'CHICAGO' and e.sal between 2000 and 5000;
87List the emps whose sal is greater than his managers salary
A)          select * from emp w,emp m where w.mgr = m.empno and w.sal > m.sal;
88List the grade, EMP name for the deptno 10 or deptno 30 but sal grade is not 4 while they joined the company before �31-dec-82�.
A)          select s.grade ,e.ename from emp e,salgrade s where e.deptno in (10,20) and 
hiredate < ('31-DEC-82') and (e.sal between s.losal and s.hisal and s.grade not in (4)); 
89List the name ,job, dname, location for those who are working as MGRS.
A)	select e.ename,e.job,d.dname,d.loc from emp e ,dept d 
      where e.deptno = d.deptno and 
                           e.empno in (select mgr from emp ) ;
90List the emps whose mgr name is jones and also list their manager name.
A)          select w.empno,w.ename,w.job,w.mgr,w.hiredate,w.sal,w.deptno,m.ename from emp w ,emp m 
where w.mgr = m.empno and m.ename = 'JONES'; 
91List the name and salary of ford if his salary is equal to hisal of his grade.
A)          select e.ename,e.sal from emp e ,salgrade s where e.ename = 'FORD' and e.sal between s.losal and s.hisal and e.sal = s.hisal ;
92Lit the name, job, dname ,sal, grade dept wise
A)	select e.ename,e.job,d.dname,e.sal,s.grade from emp e,dept d,salgrade s 
      where e.deptno = d.deptno and e.sal between s.losal and s.hisal
      order by e.deptno ;
93List the emp name, job, sal, grade and dname except clerks and sort on the basis of highest sal.
A)	select e.ename,e.job,e.sal,s.grade,d.dname from emp e ,dept d ,salgrade s where e.deptno = d.deptno and e.sal between s.losal and s.hisal and 
      e.job not in('CLERK')
                           order by e.sal desc;
94List the emps name, job  who are with out manager.
A)          select e.ename,e.job from emp e where mgr is null;
95List the names of the emps who are getting the highest sal dept wise.
A)	select e.ename,e.deptno from emp e where e.sal in 
      (select max(sal) from emp group by deptno) ;
96List the emps whose sal is equal to the average of max and minimum
A)          select * from emp where sal =(select (max(sal)+min(sal))/2 from emp);  
97List the no. of emps in each department where the no. is more than 3.
A)          select deptno,count(*) from emp group by deptno  having count(*) < 3;
98List the names of depts. Where atleast 3 are working in that department.
A)	select d.dname,count(*) from emp e ,dept d where e.deptno = d.deptno 
      group by d.dname 
                           having count(*) >= 3  ;
99List the managers whose sal is more than his employess avg salary.
A)	select * from emp m  where m.empno in (select mgr from emp) 
                                   and m.sal > (select avg(e.sal) from emp e where e.mgr = m.empno )                                   
The subquery does the same as   (select (avg(e.sal)),m.ename from emp e,emp m where e.mgr=m.empno group by e.mgr,m.ename);
100List the name,salary,comm. For those employees whose net pay is greater than or equal to any other employee salary of the company.
A)	select e.ename,e.sal,e.comm from emp e  where nvl2(e.comm.,e.sal+e.comm.,e.sal) >= any (select sal from emp);   (OR) 
B)	select ename,sal,comm. from emp where sal+nvl(comm.,0) >= any (select sal from emp);/
101List the emp whose sal<his manager but more than any other manager.
a)	select  distinct W.empno,W.ename,W.sal 
       from (select w.empno,w.ename,w.sal from emp w,emp m where  
                     w.mgr = m.empno and w.sal<m.sal) W,
         (select * from emp where empno in (select mgr from emp)) A
                                               where W.sal > A.sal; (OR)
B)          select * from emp w,emp m where w.mgr = m.empno and w.sal < m.sal 
and w.sal > any (select sal from emp where empno in (select mgr from emp));
102List the employee names and his average salary department wise.
A)
	select d.deptno, round(avg(nvl2(e1.comm, e1.sal+e1.comm, e1.sal))) avg, e2.ename from emp e1, emp e2, dept d where d.deptno =e1.deptno and d.deptno = e2.deptno group by d.deptno, e2.ename; (or)
B)          select d.maxsal,e.ename,e.deptno as "current sal" from emp e,
(select avg(Sal) maxsal,deptno from emp group by deptno) d
where e.deptno=d.deptno;
103Find out least 5 earners of the company.
A)	select * from emp e where 5> (select count(*) from emp where e.sal >sal); (or) 
B)	select rownum rank,empno,ename,job,sal from (select * from emp order by sal asc) where rownum < 6 ; (or)
C)	select * from emp e  where 5 >(select count(distinct sal) from emp where e.sal > sal); 
104Find out emps whose salaries greater than salaries of their managers.
A)	select * from emp w,emp m where w.mgr = m.empno and w.sal> m.sal; (OR)
B)	select * from emp e ,(select * from emp where empno in (select mgr from emp)) a
      where e.sal >a.sal and e.mgr = a.empno
105List the managers who are not working under the president.
         A)          select * from emp where empno in(select mgr from emp) and mgr not in
                 (select empno from emp where job = 'PRESIDENT')
106List the records from emp whose deptno isnot in dept.
107List the Name , Salary, Comm and Net Pay is more than any other employee.
A)	Select e.ename,e.sal,e.comm,nvl2(comm,sal+comm,sal) NETPAY 
      from emp e  
      where nvl2(comm,sal+comm,sal) > any (select sal from emp where empno =e.empno) ;
108List the Enames who are retiring after 31-Dec-89 the max Job period is 20Y.
A)          select ename from emp where add_months(hiredate,240) > '31-DEC-89';
 B)          select ename from emp 
     where add_months(hiredate,240) > to_date(�31-DEC-89�,�DD-MON-RR�);  
109List those Emps whose Salary is odd value.
A)          select * from emp where mod(sal,2) = 1;
110List the emp�s whose Salary contain 3 digits.
A)          select  * from emp  where length (sal) = 3;
111List the emps who joined in the month of DEC.
A)	select * from emp where to_char(hiredate,�MON�) =�DEC�; (OR) 
B)	select * from emp where to_char(hiredate,�MON�)  in (�DEC�); (OR) 
C)	select * from emp where to_char(hiredate,�MONTH�) like �DEC%�;
112List the emps whose names contains �A�.
         A)          select * from emp where ename like �%A%�;
113List the emps whose Deptno is available in his Salary.
         A)          select * from emp where instr(sal,deptno) > 0;
114List the emps whose first 2 chars from Hiredate=last 2 characters of Salary.
A)	select * from emp 
     where substr(hiredate,1,2) = substr(sal,length(sal)-1,length(sal));
115List the emps Whose 10% of Salary is equal to year of joining.
         A)          select * from emp where to_char(hiredate,'YY') in (select .1*sal from emp);
116List first 50% of chars of Ename in Lower Case and remaining are upper Case.
    A)         
select lower(substr(ename,1,round(length(ename)/2)))
 ||substr(ename,round(length(ename)/2)+1,length(ename)) from emp ;  (OR)
B)          select lower(substr(ename,1,ciel(length(ename)/2))) 
     || substr(ename,ciel(length(ename)/2)+1,length(ename)) from emp ;
117List the Dname whose No. of Emps is =to number of chars in the Dname.
A)	select * from dept d where length(dname) in (select count(*) from emp e where e.deptno = d.deptno ); (or)
B)	select d.dname,count(*) from emp e ,dept d where e.deptno = d.deptno  group by d.dname having count(*) = length (d.dname);
118List the emps those who joined in company before 15th of the month.
A)	select * from emp where to_char(hiredate,'DD') < '15';
119List the Dname, no of chars of which is = no. of emp�s in any other Dept.
A)	select * from dept d where length(dname) in (select count(*) from emp  where d.deptno <> deptno group by deptno ); (or)
B)	select * from dept where length(dname) = any (select count(*) from emp where d.deptno <> deptno group by deptno);
C)	select * from dept d , (select count(*) s,e.deptno  "M"from emp e group by e.deptno) d1
      where length(dname)=d1.s and d1.M <>d.deptno; 
120List the emps who are working as Managers.
A)	select * from where job = �MANAGER�; (or)
B)	select * from emp where empno in (select mgr from emp );
121List THE Name of dept where highest no.of emps are working.
         A)          select dname from dept where deptno in 
                      (select deptno  from emp group by deptno         
                        having count(*) in 
                                               (select max(count(*)) from emp group by deptno) );
122Count the No.of emps who are working as �Managers�(using set option).
A)select count(*) 
       from(select * from emp minus select * from emp where job != 'MANAGER')
123List the emps who joined in the company on the same date.
A)	select * from emp e where hiredate in 
     (select hiredate from emp where e.empno <> empno);
124List the details of the emps whose Grade is equal to one tenth of Sales Dept.
               A)          select * from emp e,salgrade s 
                    where e.sal between s.losal and s.hisal and 
                    s.grade = 0.1* (select deptno from dept where dname = 'SALES');
125List the name of the dept where more than average no. of emps are working.
        A)          select d.dname from dept d, emp e where e.deptno = d.deptno 
             group by d.dname 
             having count(*) > (select avg(count(*)) from emp  group by deptno); 
126List the Managers name who is having max no.of emps working under him.
   A)select m.ename,count(*) from emp w,emp m 
    where w.mgr = m.empno  
    group by m.ename
                         having count(*) = (select max(count(*)) from emp group by mgr);      
                                        (OR)
B)          select * from emp where empno = (select mgr from emp group by mgr having count(*) = (select max(count(*)) from emp group by mgr)) ;
127List the Ename and Sal is increased by 15% and expressed as no.of Dollars.
         A)          select ename,to_char(1.15*sal,'$99,999') as "SAL"  from emp; (only for $ it works) 
         B)          select ename,'$'||1.15*sal  �SAL� from emp;
128Produce the output of EMP table �EMP_AND_JOB� for Ename and Job.
         A)          select ename|| job as "EMP_AND_JOB" from emp ;
129Produce the following output from EMP.
EMPLOYEE
			SMITH (clerk)
			ALLEN (Salesman)
                 A)  select ename || �(�|| lower(job)||�)� as �EMPLOYEE� from emp;
130)	List the emps with Hire date in format June 4, 1988.
A)	select empno,ename,sal, to_char(hiredate,'MONTH DD,YYYY') from emp;
131)	Print a list of emp�s Listing �just salary� if Salary is more than 1500, on target if Salary is 1500 and �Below 1500� if Salary is less than 1500.
A)	select empno,ename,sal|| �JUST SALARY� "SAL" from emp where sal > 1500 union
      select empno,ename, sal|| �ON TARGET� "SAL" from emp where sal = 1500        
      union
         select empno,ename, sal|| �BELOW 1500� "SAL" from emp where sal < 1500;  (OR) 
B)select empno,ename,sal,job,
case
when sal = 1500 then 'ON TARGET'
when sal < 1500 then 'BELOW 1500'
when sal > 1500 then 'JUST SALARY'
else 'nothing'
end  "REVISED SALARY"
from emp;
132)	Write a query which return the day of the week for any date entered in format �DD-MM-YY�.
A)          select to_char(to_date('& s','dd-mm-yy'),'day') from dual ;
133)	Write a query to calculate the length of service of any employee with the company, use DEFINE to avoid repetitive typing of functions.
A)	DEFINE  service = ((months_between(sysdate,hiredate))/12)
B)	Select  empno,ename,&service from emp where ename = �& name�;
134)	Give a string of format �NN/NN�, verify that the first and last two characters are numbers and that the middle character is�/�. Print the expression �YES� if valid, �NO� if not valid. Use the following values to test your solution. �12/34�,�01/1a�, �99/98�.
A)
135)	Emps hired on or before 15th of any month are paid on the last Friday of that month those hired after 15th are paid on the first Friday of the following month. Print a list of emps their hire date and the first pay date. Sort on hire date.
A)          select ename,hiredate,next_day(last_day(hiredate),'FRIDAY')-7 from emp where to_char(hiredate,'DD') <=15
union 
select ename,hiredate,next_day(last_day(hiredate),'FRIDAY') from emp where to_char(hiredate,'DD') > 15;
136)	Count the no. of characters with out considering spaces for each name.
A)	select length(replace(ename,� �,null)) from emp;
137)	Find out the emps who are getting decimal value in their Sal without using like operator.
A)          select  * from emp where instr(sal,�.�,1,1) > 0;
138)	List those emps whose Salary contains first four digit of their Deptno.
A)	select * from emp where instr(to_char(sal,,9999),deptno,1,1)>0 and instr(to_char(sal,9999),deptno,1,2)> 0 ;
139)	List those Managers who are getting less than his emps Salary.
A)	select distinct m.ename,m.sal from emp w,emp m where w.mgr = m.empno and w.sal>m.sal;
B)	select * from emp w where sal  < any ( select sal from emp where w.empno=mgr);
C)	select * from emp w where empno in  ( select mgr from emp where    
      w.sal<sal);
140)	Print the details of all the emps who are sub-ordinates to Blake.
A)	select *  from emp where mgr in (select empno from emp where ename = 'BLAKE');
141)	List the emps who are working as Managers using co-related sub-query.
A)	select * from emp where empno in (select mgr from emp);
142)	List the emps whose Mgr name is �Jones� and also with his Manager name.
A)	select w.ename,m.ename,(select ename from emp where m.mgr = empno) "his MANAGER" 
     from emp w,emp m where w.mgr = m.empno and m.ename = 'JONES'; (or)
B)          select e.ename,w.ename,m.ename from emp e,emp w,emp m where e.mgr = w.empno and w.ename = �JONES� and w.mgr = m.empno;
143)	Define a variable representing the expression used to calculate on emps total annual remuneration use the variable in a statement, which finds all emps who can earn 30000 a year or more.
A)	Set define on 
B)	Define  annual = 12*nvl2(comm.,sal+comm.,sal)  (here define variable is a session variable) 
C)	Select * from emp where &annual > 30000;
144)	Find out how may Managers are their in the company.
A)	select count(*) from emp where job = �MANAGER�; (or)
B)	select count(*) from emp where empno in (select mgr from emp); (or)
C)	select count(distinct m.empno) from emp w,emp m where w.mgr = m.empno ; 
145)	Find Average salary and Average total remuneration for each Job type. Remember Salesman earn commission.secommm
A)          select avg(sal),avg(sal+nvl(comm,0)) from emp;
146)	Check whether all the emps numbers are indeed unique.
A)          select   empno,count(*)  from emp group by empno;
147)	List the emps who are drawing less than 1000 Sort the output by Salary.
         A)select * from emp where sal < 1000 order by sal;
148)	List the employee Name, Job, Annual Salary, deptno, Dept name and grade who earn 36000 a year or who are not CLERKS.
A)selecte.ename,e.job,(12*e.sal)"ANNUALSALARY", e.deptno,d.dname,s.grade
from emp e,dept d ,salgrade s where e.deptno = d.deptno and e.sal between s.losal and s.hisal
and (((12*e.sal)>= 36000) or (e.job != 'CLERK'))
149)	Find out the Job that was filled in the first half of 1983 and same job that was filled during the same period of 1984.
A)          select *  from emp where (to_char(hiredate,'MM ') <= 06  and to_char(hiredate,'YYYY') = 1984) and job in (select job from emp where to_char(hiredate,'MM' ) <= 06 and to_char(hiredate,'YYYY') <= 1983) ;  
150)	Find out the emps who joined in the company before their Managers.
A)	select * from emp w,emp m where w.mgr = m.empno and 
      w.hiredate< m.hiredate;(or) 
B)          select * from emp e where hiredate < (select  hiredate from emp where empno = e.mgr)
151)	List all the emps by name and number along with their Manager�s name and number. Also List KING who has no �Manager�.
A)          select w.empno,w.ename,m.empno,m.ename from emp w,emp m where w.mgr= m.empno(+); 
152)	Find all the emps who earn the minimum Salary for each job wise in ascending order.
A)	select * from emp where sal in 
     (select min(sal) from emp group by job) 
     order by sal asc;
153)	Find out all the emps who earn highest salary in each job type. Sort in descending salary order.
A)	select * from emp where sal in 
     (select max(sal) from emp group by job) 
     order by sal desc;
154)	Find out the most recently hired emps in each Dept order by Hiredate.
A)	select * from emp  e where hiredate in 
     (select max(hiredate) from emp where e.deptno =  deptno ) 
      order by hiredate;
155)	List the employee name,Salary and Deptno for each employee who earns a salary greater than the average for their department order by Deptno.
A)	select * from emp e 
      where sal >  (select avg(sal) from emp where e.deptno = deptno );
B)	select e.ename,e.sal,e.deptno from emp e,(select avg(sal) A,deptno D from   
      emp group by deptno) D1 where D1.D = e.deptno and e.sal > D1.A;
156)	List the Deptno where there are no emps.
A)	select  deptno ,count(*) from emp 
      group by deptno  
      having count(*) = 0;
157)	List the No.of emp�s and Avg salary within each department for each job.
A)	select count(*),avg(sal),deptno,job from emp 
      group by deptno,job;
158)	Find the maximum average salary drawn for each job except for �President�.
A)          select max(avg(sal)) from emp  where job != 'PRESIDENT' group by job;
159)	Find the name and Job of the emps who earn Max salary and Commission.
A)	select * from emp where sal = (select max(sal) from emp) and comm. is not null;
160)	List the Name, Job and Salary of the emps who are not belonging to the department 10 but who have the same job and Salary as the emps of dept 10.
A)          select ename,job,sal from emp where deptno != 10 and job in (select job from emp where deptno = 10)
and sal in (select sal from emp where deptno = 10);
161)	List the Deptno, Name, Job, Salary and Sal+Comm of the SALESMAN who are earning maximum salary and commission in descending order.
A)select  deptno,name,job,sal,sal+nvl(comm.,0) from emp where job = �SALESMAN� and sal in (select max(sal+nvl(comm.,0)) from emp where comm. is not null) 
 Order by (sal +nvl(comm.,0)) desc;
162)	List the Deptno, Name, Job, Salary and Sal+Comm of the emps who earn the second highest earnings (sal + comm.).
A)          select deptno,ename,sal,job,sal+nvl(comm,0) from emp e where  2 = (select count(distinct sal+nvl(comm,0)) from emp where (e.sal+nvl(comm.,0))<(sal+nvl(comm.,0)); 
163)	List the Deptno and their average salaries for dept with the average salary less than the averages for all department
A)	select deptno,avg(sal) from emp group by deptno
having avg(sal) <(select avg(Sal) from emp); 
164)	List out the Names and Salaries of the emps along with their manager names and salaries for those emps who earn more salary than their Manager.
A)	select w.ename,w.sal,m.ename,m.sal from emp w,emp m 
      where w.mgr = m.empno and w.sal > m.sal;
165)	List out the Name, Job, Salary of the emps in the department with the highest average salary. 
A)	select * from emp where deptno in 
     (select deptno from emp e  
          having avg(sal) =(select max(avg(sal)) from emp group by deptno)   
           group by deptno);
166)	List the empno,sal,comm. Of emps.
A)          select empno,sal,comm. from emp;
167)	List the details of the emps in the ascending order of the sal.
A)          select * from emp order by sal asc;
168)	List the dept in the ascending order of the job and the desc order of the emps print empno, ename.
A)          select * from emp e  order by e.job asc,e.empno desc ;
169)	Display the unique dept of the emps.
A)select * from dept where deptno in (select unique deptno from emp); 
170)	Display the unique dept with jobs.
A)          select unique deptno ,job from emp ;
171)	Display the details of the blake.
A)          select * from emp where ename = �BLAKE�;
172)	List all the clerks.
A)          select * from emp where job = �CLERK�;
173)	list all the employees joined on 1st may 81.
A)          select * from emp where hiredate = �01-MAY-81�;
174)	List the empno,ename,sal,deptno of the dept 10 emps in the ascending order of salary.
A)	select e.empno,e.ename,e.sal,e.deptno from emp where e.deptno = 10 
order by e.sal asc;
175)	List the emps whose salaries are less than 3500.
A)          select * from emp where sal <3500;
176)	List the empno,ename,sal of all the emp joined before 1 apr 81.
A)          select e.empno ,e.ename .e.sal from emp where hiredate <�01-APR-81�;
177)	List the emp whose annual sal is <25000 in the asc order of the salaries.
A)          select * from emp where (12*sal) < 25000 order by sal asc;
178)	List the empno,ename,annsal,dailysal  of all the salesmen in the asc ann sal
A)          select e.empno,e.ename ,12*sal "ANN SAL" , (12*sal)/365 "DAILY SAL" from emp e 
where e.job = 'SALESMAN' 
order by "ANN SAL" asc ;
179)	List the empno,ename,hiredate,current date & exp in the ascending order of the exp.
A)	select empno,ename,hiredate,(select sysdate from dual),((months_between(sysdate,hiredate))/12) EXP 
      from emp 
      order by EXP asc;
180)	List the emps whose exp is more than 10 years.
A)          select * from emp where ((months_between(sysdate,hiredate))/12) > 10;
181)	List the empno,ename,sal,TA30%,DA 40%,HRA 50%,GROSS,LIC,PF,net,deduction,net allow and net sal in the ascending order of the net salary.
182)	List the emps who are working as managers.
A)          select * from emp where job = �MANAGER�;
183)	List the emps who are either clerks or managers.
A)          select * from emp where job in (�CLERK�,�MANAGER�);
184)	List the emps who have joined on the following dates 1 may 81,17 nov 81,30 dec 81
A)	select * from emp where to_char(hiredate,�DD-MON-YY�)  in 
(�01-MAY-81�,�17-NOV-81�,�30-DEC-81�);
185)	List the emps who have joined in the year 1981.
A)          select * from emp where to_char(hiredate,�YYYY�) = �1981�;
186)	List the emps whose annual sal ranging from 23000 to 40000.
A)          select * from emp where (12* sal) between 23000 and 40000;
187)	List the emps working under the mgrs 7369,7890,7654,7900.
A)          select * from emp where mgr in ( 7369,7890,7654,7900);
188)	List the emps who joined in the second half of 82.
A)select * from emp where hiredate between �01-JUL-82� and �31-DEC-82�;
189)	 List all the 4char emps.
A)          select * from emp where length (ename) = 4;
190)	List the emp names starting with �M� with 5 chars.
A)          select * from emp where ename like �M%� and length (ename) = 5;
191)	List the emps end with �H� all together 5 chars.
A)	select * from emp where ename like �%H� and length (ename) = 5;
192)	List names start with �M�.
A)          select * from emp where ename like �M%�;
193)	List the emps who joined in the year 81.
A)          select * from emp where to_char(hiredate,�YY�) = �81�;
194)	List the emps whose sal is ending with 00.
A)  select * from where  sal  like  �%00�;
195)	List the emp who joined in the month of JAN.
A)	select * from emp where  to_char(hiredate,�MON�) = �JAN�; (OR)
B)	select * from emp where to_char (hiredate,�MM�) = 1;
196)	Who joined in the month having char �a�. 
A)	select * from emp where to_char (hiredate,�MONTH�) like�%A%�; (OR)
B)	select * from emp where instr(to_char(hiredate,�MONTH�),�A�) >0;
197)	Who joined in the month having second char �a�
A)	select * from emp where to_char(hiredate,�MON�) like �_A%�; (OR)
B)	select * from emp where instr(to_char(hiredate,�MON�),�A�) = 2;
198)	 List the emps whose salary is 4 digit number.
A)	select * from emp where length (sal) = 4;(OR) 
B)	select * from emp  where sal between 999 and 9999;
199)	List the emp who joined in 80�s.
A)	select *  from emp where to_char(hiredate,�YY�)  between �80� and �89�; (OR) 
B)	select * from emp where to_char(hiredate,�YY�) >= �80� and to_char(hiredate,�YY�) < �90�;
200)	List the emp who are clerks who have exp more than 8ys.
A)          select * from emp where job = �CLERK� and (months_between(sysdate,hiredate) /12) > 8;
201)	List the mgrs of dept 10 or 20.
A)          select * from emp where job = �MANAGER� and (deptno = 10 or deptno =20);
202)	List the emps joined in jan with salary ranging from 1500 to 4000.
A)	select * from emp where to_char(hiredate,�MON�) = �JAN� and sal 
between 1500 and 4000;
203)	List the unique jobs of dept 20 and 30 in desc order.
A)          select  distinct job from emp where deptno in (20,30) order by job desc;
204)	List the emps along with exp of those working under the mgr whose number is starting with 7 but should not have a 9 joined before 1983.
A)	select * from emp where (mgr like '7%' and mgr not like '%9%') 
      and to_char(hiredate,'YY') < '83';
205)	List the emps who are working as either mgr or analyst with the salary ranging from 2000 to 5000 and with out comm.
A)	select * from emp where  (job  in (�MANAGER� ,�ANALYST�) ) and sal between  2000 and 5000 and comm is null;
206)	List the empno,ename,sal,job of the emps with /ann sal <34000 but receiving some comm. Which should not be>sal and desg should be sales man working for dept 30.
A)          select empno,ename,sal,job from emp where 
12*(sal+nvl(comm,0)) < 34000 and comm is not null and comm<sal and job = 'SALESMAN' and deptno = 30;   
207)	List the emps who are working for dept 10 or 20 with desgs as clerk or analyst with a sal is either 3 or 4 digits with an exp>8ys but does not belong to mons of mar,apr,sep and working for mgrs &no is not ending with 88 and 56.
A)          select * from emp where 
deptno in (10,20) and
job in ('CLERK','ANALYST') and 
(length(sal) in (3,4)) and 
((months_between(sysdate,hiredate))/12)> 8 and 
to_char(hiredate,'MON') not in ('MAR','SEP','APR') and 
(mgr not like '%88' and mgr not like '%56');
208)	List the empno,ename,sal,job,deptno&exp of all the emps belongs to dept 10 or 20 with an exp 6 to 10 y working under the same mgr with out comm. With a job not ending irrespective of the position with comm.>200 with exp>=7y and sal<2500 but not belongs to the month sep or nov working under the mgr whose no is not having digits either 9 or 0 in the asc dept& desc dept
A) 
209)	List the details of the emps working at Chicago.
A)          select * from emp where deptno in (select deptno from dept where dept.loc = �CHICAGO�);
210)	List the empno,ename,deptno,loc of all the emps.
A)	select e.empno,e.ename,e.deptno,d.loc from emp e ,dept d 
       where e.deptno = d.deptno ;
211)	List the empno,ename,loc,dname of all the depts.,10 and 20.
A)	select e.empno,e.ename,e.deptno,d.loc,d.dname from emp e ,dept d 
     where e.deptno = d.deptno    and  e.deptno in (10,20);
212)	List the empno, ename, sal, loc of the emps working at Chicago dallas with an exp>6ys.
A)	select e.empno,e.ename,e.deptno,e.sal,d.loc from emp e ,dept d 
      where e.deptno = d.deptno  and d.loc in ('CHICAGO','DALLAS') 
       and (months_between(sysdate,hiredate)/12)> 6 ;
213)	List the emps along with loc of those who belongs to dallas ,newyork with sal ranging from 2000 to 5000 joined in 81.
A)	select e.empno,e.ename,e.deptno,e.sal,d.loc from emp e ,dept d 
      where e.deptno = d.deptno and d.loc in ('NEW YORK','DALLAS') 
      and to_char(e.hiredate,'YY') = '81'  and  e.sal between 2000 and 5000; 
214)	List the empno,ename,sal,grade of all emps.
A)	select e.empno,e.ename,e.sal,s.grade from emp e ,salgrade s  
      where e.sal  between s.losal and s.hisal ;
215)	List the grade 2 and 3 emp of Chicago.
A)	select * from emp where empno in 
         (select empno from emp e,salgrade s where e.sal between s.losal and               
            s.hisal  and s.grade in (2,3)); 
216)	List the emps with loc and grade of accounting dept or the locs dallas or Chicago with the grades 3 to 5 &exp >6y
A)	select e.deptno,e.empno,e.ename,e.sal,d.dname,d.loc,s.grade from emp e,salgrade s,dept d 
wheree.deptno = d.deptno and e.sal between s.losal and s.hisal 
and s.grade in (3,5) 
   and ((months_between(sysdate,hiredate))/12) > 6 
   and ( d.dname = 'ACCOUNTING' or D.loc in ('DALLAS','CHICAGO')) 
217)	List the grades 3 emps of research and operations depts.. joined after 1987 and whose names should not be either miller or allen.
A)	select e.ename from emp e ,dept d,salgrade s 
             where e.deptno = d.deptno and d.dname in ('OPERATIONS','RESEARCH') and e.sal between s.losal and s.hisal 
and e.ename not in ('MILLER','ALLEN')
 and to_char(hiredate,'YYYY') >1987;
218)	List the emps whose job is same as smith.
A)          select * from emp where job = (select job from emp where ename = 'SMITH');
219)	 List the emps who are senior to miller.
A)	select  *  from emp  where  hiredate <(select hiredate from emp where ename = �MILLER�);
220)	List the emps whose job is same as either allen or sal>allen.
A)	select * from emp 
      where job = (select job from emp where ename = 'ALLEN') 
        or sal > (select sal from emp where ename = 'ALLEN');
221)	List the emps who are senior to their own manager.
A)	select * from emp w,emp m where w.mgr = m.empno and 
      w.hiredate < m.hiredate;
222)	List the emps whose sal greater than blakes sal.
A)	select * from emp 
      where sal>(select sal from emp where ename = �BLAKE�);
223)	List the dept 10 emps whose sal>allen sal.
A)	select * from emp where deptno = 10 and 
       sal > (select sal from emp where ename = 'ALLEN');
224)	List the mgrs who are senior to king and who are junior to smith.
A)select * from emp where empno in 
          (select mgr from emp 
               where hiredate<(select hiredate from emp where ename = 'KING' ) 
           and hiredate > (select hiredate from emp where ename =  'SMITH')) and mgr is        
            not null;
225)	List the empno,ename,loc,sal,dname,loc of the all the emps belonging to king dept.
A)	select e.empno,e.ename,d.loc,e.sal,d.dname from emp e,dept d 
        where e.deptno=d.deptno and e.deptno in 
       (select deptno from  emp where ename = 'KING'and emp.empno <> e.empno);
226)	List the emps whose salgrade are greater than the grade of miller.
A)	select * from emp e,salgrade s 
      where e.sal between s.losal and s.hisal and s.grade > 
(select s.grade from emp e,salgrade s where e.sal between s.losal and s.hisal and e.ename = 'MILLER') ;
227	)	List the emps who are belonging dallas or Chicago with the grade same as adamsor exp more than smith.
A)	select * from emp e ,dept d,salgrade s 
        where e.deptno= d.deptno and d.loc in ('DALLAS','CHICAGO') and e.sal between s.losal and s.hisal and 
                   (s.grade in (select s.grade from emp e,salgrade s where e.sal between s.losal and s.hisal and e.ename = 'ADAMS')
                                                   or months_between (sysdate,hiredate) > (select months_between(sysdate,hiredate) from emp where ename = 'SMITH')) ;
228)	List the emps whose sal is same as ford or blake.
A)	select * from emp where sal in (select sal from emp e where e.ename in ('FORD','BLAKE')and emp.empno <> e.empno);
229)	List the emps whose sal is same as any one of the following.
A)	select * from emp where sal  in  
      (select sal from emp e where emp.empno <> e.empno);
230)	Sal of any clerk of emp1 table.
A)          select * from emp where job = �CLERK�;
231)	Any emp of emp2 joined before 82.
A)          select * from emp where to_char(hiredate,'YYYY') < 1982;
232)	The total remuneration (sal+comm.) of all sales person of Sales dept belonging to emp3 table.
A)	select * from emp e 
       where (sal+nvl(comm,0)) in 
              (select sal+nvl(comm,0)  from emp e,dept d where e.deptno=d.deptno  
                                   and d.dname = 'SALES'and e.job = 'SALESMAN');
233)	Any Grade 4 emps Sal of emp 4 table.
A)	select * from emp4 e,salgrade s where e.sal between s.losal and s.hisal and s.grade = 4;
234)	Any emp Sal of emp5 table.
A)          select * from emp5;
235)	List the highest paid emp.
A)	select * from emp where sal in (select max(sal) from emp);
236)	List the details of most recently hired emp of dept 30.
A)	select * from emp where hiredate in 
      (select max(hiredate) from emp where deptno = 30);
237)	List the highest paid emp of Chicago joined before the most  recently hired emp of grade 2.
A)	select * from emp 
       where sal = ( select max(sal) from emp e,dept d where e.deptno =  
                             d.deptno and d.loc = �CHICAGO� and 
                                hiredate <(select max(hiredate) from emp e ,salgrade s         
                                   where e.sal between s.losal and s.hisal and s.grade = 2))
238)	List the highest paid emp working under king.
A)select * from emp where sal in 
     (select max(sal) from emp where mgr in 
              (select empno from emp where ename = 'KING'));
