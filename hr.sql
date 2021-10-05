--ejercicios 15/09/2021
-- seleccionar todo FROM/DESDE tabla
SELECT * FROM EMPLOYEES;

--SELECCIONAR(TRES COLUMNAS) FROM/DESDE EMPLOYEES


SELECT FIRST_NAME,LAST_NAME,JOB_ID FROM EMPLOYEES;

--seleccionar todo de employees

select * from employees;

--seleccionar 3 columnas dentro de la tabala employees

select first_name,last_name,job_id from employees;

--seleccionar unicamente count from employees

select count(*) from employees;

--seleccionamos las columnas lastname y department id de employees y 
--pedimos el valor donde  employyee_id es igual a 176

SELECT LAST_NAME,DEPARTMENT_ID FROM employees WHERE employee_id = 176;

--SELECCIONAMOS LAS COLUMNAS LAST NAME Y SALARY FROM EMPLOYEES Y PEDIMOS
--EL DATO DONDE SALARY ES = O MAYOR A 12000

SELECT LAST_NAME,SALARY FROM employees WHERE SALARY >= 12000;

--usamos el mis mo ejemplo pasado agregando la condicion or
--para pedir los sueldo que sean menor a 5mil or mayores a 12 mil 

SELECT LAST_NAME,salary FROM employees WHERE salary < 5000 OR SALARY > 12000;

--seleccionamos last name y departmnet id from employees y pedimos el dato donde
--dentro de la columna de department id nos muestre los valores que contengan 
--20 y 50

SELECT LAST_NAME,DEPARTMENT_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (20,50);

-- seleccionamos last name ,salary y commission pct from employees y pedimos el 
--dato donte comission pct mayor a 0 y poniendo un orden a la columna de salario
--de mayor a menor  y en la columna de commision pct un orden de mayor a menor 

SELECT LAST_NAME,SALARY,COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT >0 
ORDER BY SALARY DESC, COMMISSION_PCT DESC; 

--en este ejemplo vamos a seleccionar todo from employees y vamos a pedir un dato
--donde salary no contenga los valores de 2500,3500 y 7000 t agregando AND
--vamos a pedir que en la columna de job id nos muestre todos los valores que sean 
-- sa_rep y st_clerk

SELECT * FROM employees WHERE salary NOT IN (2500,3500,7000)
AND job_id IN ('SA_REP','ST_CLERK');

--en este ejemplo vamos a seleccionar las columnas last name , employee id y 
-- hire date from employees y vamos a pedir el dato donde hire date es mayor a
--20/02/2008 y menor a 01/05/2008 y vamos a ordenar la columna hire date  de
--la fecha mayor a la menor

SELECT
    last_name,
    employee_id,
    hire_date
FROM
    employees
WHERE
        hire_date >= '2008-02-20'
    AND hire_date <= '2008-05-01'
ORDER BY
    hire_date DESC;
    
--este ejemplo utiliza la estructura pasada pero al final no  ordenar de alguna 
--manera en especial la columna
    
SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
        hire_date >= '2004-01-01'
    AND hire_date <= '2004-12-31'
ORDER BY
    hire_date;
    
--Between

--En este ejemplo seleccionamos last name y salary from employees y pedimos 
--un dato donde el salario no sea entre 5000 y 12000.

SELECT LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY NOt BETWEEN 5000 AND 12000;
    
--en este ejemplo seleccionamos last name y department id  from employees y 
--pedimos un dato donde el department id contenga los valores 20 y 50 ademas 
--de un salario entre 5000 y 12000.

SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    department_id IN ( 20, 50 )
    AND salary BETWEEN 5000 AND 12000;
    
--

SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '2008-01-20' AND '2008-05-01'
ORDER BY
    hire_date DESC;
    
-- Seleccionamos  last name y hire date from employees y pedidos un dato donde 
--contenga al inicio 04 
SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date LIKE '04%'
ORDER BY HIRE_DATE;

--Seleccionamos employee id y last name from employees y pedimos un dato donde 
--last name contenga en el medio la letra U

SELECT EMPLOYEE_ID, LAST_NAME FROM EMPLOYEES WHERE LAST_NAME LIKE '%U%';

--Seleccionamos employee id y last name from employees y pedimos un dato donde 
--last name contenga en la cuarta pocision la letra a

SELECT EMPLOYEE_ID, LAST_NAME FROM EMPLOYEES WHERE LAST_NAME LIKE '___a%';

--Seleccionamos last name from employees y pedimos un dato donde 
--last name contenga en la primera pocision la letra a o que tenga la letra e
--ordenado por last name 

SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%'
    OR last_name LIKE '%e%'
ORDER BY
    last_name;
    
--Seleccionamos last name from employees y pedimos un dato donde 
--last name contenga en la primera pocision la letra ae o que tenga la letra ea
--ordenado por last name 

SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%%e%'
    OR last_name LIKE '%e%%a%'
ORDER BY
    last_name;
    
 --en este ejemplo seleccionamos last name y job id from employees y pedimos un
 --dato donde manager id is null
 
 SELECT LAST_NAME, JOB_ID FROM EMPLOYEES WHERE MANAGER_ID IS NULL;
 
--en este ejemplo seleccionamos department id from employees y pedimos un
--dato donde st clerk y deparment id is not null 
 
SELECT DISTINCT
    department_id
FROM
    employees
WHERE
        job_id = 'ST_CLERK'
    AND department_id IS NOT NULL;
    
--en este ejemplo seleccionamos employee id , first name, job id  y hacemos una 
--multiplicacion entre salary * commission pct y renombramos la columna como commission
--from employees y pedimos un dato donde comission pct is not null 

SELECT
    employee_id,
    first_name,
    job_id,
    salary * commission_pct AS commission
FROM
    employees
WHERE
    commission_pct IS NOT NULL;

--17/09/2021

--27/09/2021
SELECT LAST_NAME,SALARY,DECODE(TRUNC(SALARY/2000,0),
0,0.00,
1,0.09,
2,0.20,
3,0.30,
4,0.40,
5,0.42,
6,0.44,0.45) AS TAX_RATE
FROM EMPLOYEES WHERE DEPARTMENT_ID=80;

--

SELECT MAX(SALARY)- MIN(SALARY) AS GAP FROM EMPLOYEES;

SELECT COUNT (DISTINCT MANAGER_ID) FROM EMPLOYEES;

--실습] 부서 80의 각 사원에 대해 적용 가능한 세율을 표시하시오.

SELECT LAST_NAME, SALARY, DECODE(TRUNC(salary/2000,0),
                                0, 0.00, 
                                1, 0.09,
                                2, 0.20,
                                3, 0.30, 
                                4, 0.40, 
                                5, 0.42, 
                                6, 0,44, 
                                0.45) AS TAX_RATE
FROM EMPLOYEES WHERE DEPARTMENT_ID=80;

-- 사원들의 최대 급여와 최소 급여의 차이를 조회 
SELECT
    MAX(salary) - MIN(salary) AS gap
FROM
    employees;

-- 매니저로 근무하는 사원들의 총 수 조회( 단, MANAGER_ID 중복 제고)
SELECT
    COUNT(DISTINCT manager_id)
FROM
    employees;

-- 문1] 자신의 담당 매니저의 고용일보다 빠른 입사자 찾기(self join)
SELECT
    *
FROM
    employees e1,
    employees e2
WHERE
        e1.manager_id = e2.employee_id
    AND e1.hire_date < e2.hire_date;
-- 문2] 도시이름이 T로 시작하는 지역에 사는 사원들의 사번, last_name, 부서번호 조회
--employees, department테이블 연결, 연결 결과를 locations테이블과 연결
SELECT
    e.employee_id,
    e.last_name,
    e.department_id
FROM
    employees   e,
    departments d,
    locations   l
WHERE
        e.department_id = d.department_id
    AND d.location_id = l.location_id
        AND city LIKE 'T%';
-- 문3] 위치 id가 1700인 사원들의 last_name, 부서번호, 연봉 조회
--employees, departments 테이블 연결
SELECT
    last_name,
    e.department_id,
    salary * 12
FROM
    employees   e,
    departments d
WHERE
        e.department_id = d.department_id
    AND location_id = 1700;
-- 문4] Executive 부서에 근무하는 모든 사원들의 부서번호, last_name, job_id 조회
--employees, departments 테이블 연결
SELECT
    e.department_id,
    last_name,
    job_id
FROM
    employees   e,
    departments d
WHERE
        e.department_id = d.department_id
    AND department_name = 'Executive';
    
--JOIN ON 

SELECT employee_id,last_name ,e.department_id
FROM employees e,deparments d,locations l
WHERE e.department_id = d.deparment_id And d.location_id = l.location_id AND city LIKE 'T%';


SELECT last_name ,e.department_id, e.salary
FROM employees e,deparments d
WHERE e.department_id = d.deparment_id AND location_id = 1700;


SELECT last_name ,e.department_id, e.job_id
FROM employees e,deparments d
WHERE e.department_id = d.deparment_id AND d.department_name = 'Executive';

SELECT employee_id, last_name 
FROM employees
WHERE department_id IN (SELECT DISTINCT department_id FROM employees WHERE last_name LIKE '%u%');

CREATE TABLE INDEXTBL AS SELECT dISTINCT FIRST_NAME, LAST_NAME, HIRE_DATE FROM EMPLOYEES;

SELECT * FROM INDEXTBL;

SELECT * FROM INDEXTBL WHERE FIRST_NAME = 'Jack';

CREATE INDEX IDX_INDEXTBL_FIRSTNAME ON INDEXTBL(FIRST_NAME);










