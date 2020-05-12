
select * from emp where deptno=20;

SELECT   deptno, job, SUM(sal)
FROM   emp where deptno=20 
group by deptno,job;

SELECT   deptno, job, SUM(sal)
FROM     emp where deptno=20
GROUP BY ROLLUP(deptno, job)
order by deptno;

SELECT   deptno, job,mgr, SUM(sal)
FROM     emp where deptno=20
GROUP BY ROLLUP( job,deptno,mgr)
order by deptno;

SELECT   deptno, job, SUM(sal)
FROM     emp where deptno=20
GROUP BY cube(deptno, job)
order by deptno;

SELECT   deptno DEPTID, job JOB, 
SUM(sal),
GROUPING(deptno) GRP_DEPT,
GROUPING(job) GRP_JOB
FROM     emp
GROUP BY ROLLUP(deptno, job)
order by deptno;

SELECT   deptno DEPTID, job JOB, 
SUM(sal),
GROUPING(deptno) GRP_DEPT,
GROUPING(job) GRP_JOB
FROM     emp
GROUP BY cube(deptno, job)
order by deptno;

SELECT   deptno, job, 
mgr,avg(sal)
FROM     emp
GROUP BY GROUPING SETS 
((deptno,job), (job,mgr));

SELECT   deptno, job, mgr, 
SUM(sal)
FROM     emp  
GROUP BY cube( deptno,(job, mgr));

SELECT   deptno, job, mgr, 
SUM(sal)
FROM     emp  
GROUP BY rollup( deptno,(job, mgr));

SELECT   deptno, job, mgr, 
SUM(sal)
FROM     emp
GROUP BY deptno,
ROLLUP(job),
CUBE(mgr);