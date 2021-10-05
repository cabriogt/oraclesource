--ejercicios 15/09/2021
select *
from tab;
-- seleccionar todo de una tabala en especifico.
select * from emp;

--seleccionar 3 (empno, ename y job) columnas dentro de la tabala emp

select empno, ename, job from emp;

--seleccionar 2 (empno, deptno) columnas dentro de la tabala emp

select empno, deptno from emp;

--usando distinct podemos seleccionar los un resumen de lo diferentes valores en una columna

select distinct deptno from emp;

--select as nos simbre para poner un alias temporal a la columna seleccionada

select empno as employee_number  from emp;

--aqui hacemos una multiplicacion del salario x 12 +la comision = 19500

select ename,sal,comm,sal*12+comm from emp;

--combinamos  el comando as para remnombrar las columnas temporalmente y hacer la operacion matematica 
select ename as trabajador,sal as ingreso ,comm as comision,sal*12+comm as total from emp;

--seleccionamos  2 columnas from emp y usando el comando order by hacemos una lista y usando el
--el comando asc  la lista se ordena de menor a mayor 

select ename,sal from emp order by sal asc;

--el comando desc  la lista se ordena de mayor a menor 

select ename,sal from emp order by sal desc;

-- seleccionamos todo de emp y lo ordenamos de mayor a menor con order by y desc
--de la tabla emp

select
    * from emp order by empno desc;
    
-- Seleccionamos todo de emp y ordenamos las colunmas deptno de menor a mayor y
--la columna sal de mayor a menor 
select * from emp order by deptno asc, sal desc; 

--seleccionamos la tabla empno renombramos las columnas temporalmente from
--emp y luego ordenamos de mayor a menor deptno y de menor a mayor ename

select 
    empno as employee_no, 
    ename as employee_name, 
    mgr as manager,
    sal as salary,
    comm as commision,
    deptno as department_no,
    job,hiredate
from 
    emp 
order by 
    deptno desc,
    ename asc;  
    
--comando where nos sirve para especificar un dato es decir si queremos mostrar 
--que en detpno nos muestre solo las filas que contengan el valor 30 usaremos 
--el comando where que lo podriamos entender donde el valor es iagual a 30

select 
    * 
from 
    emp 
where 
    deptno =30;
    
--en este ejemplo usamos el mismo comando where pero pedimos que nos muestre
-- todos los empno que sean igual a 7782
    
select 
    * 
from 
    emp 
where 
    empno=7782;
    
--usamos el comando where como en el ejemplo pasado y ponemos el comando and
--para agregar otra categoria en el comando where y asi poner 2 condiciones 

SELECT * FROM emp WHERE deptno=30 AND job= 'SALESMAN';

select * from emp where empno =7499 and deptno=30;

--seguimos ocupando el comando where para seleccionar un dato especifico 
--pero agregando el comando or que nos dara el resultado con 
--deptmo con valores de 30 y job con clerk

select * from emp where deptno=30 or job= 'CLERK';

--ejeccios16/09/2021

--seleccionamos todo from emp y pedido es dato donde el salario mulpiplicado por 12
--sea igual a 36mil
select * from emp where sal *12 =36000;

--seleccionamos todo de emp y pedidos el dato donde el salario sea mayor o igual
--a 3mil 

select * from emp where sal >=3000;

--seleccionamos todo de emp y pedimos el dato donde la primera letra del nombre
--sea mayor o igual a F

select * from emp where ename >= 'F';

--seleccionamos todo from emp y pedimos el datodo donde salario sea mayor o
--igual a 2500 y agregamos and para pedir que job sea igual a ANALYST

select * from emp where sal>= 2500 and job = 'ANALYST';

--seleccionamos todo de emp y pedimos el dato donde job sea igual a ANALYST y
--agregamos or para pedir CLERK y Manager tambien 

select * from emp where job = 'ANALYST' or job = 'CLERK'or job = 'MANAGER';

--en este ejemplo pedimos seleccionar todo from emp y pedimos el dato donde
--salario sea diferente o igual a 3mil usando un operardor de comparacion != 
select * from emp where sal !=3000;

--en este ejemplo pedimos seleccionar todo from emp y pedimos el dato donde
--salario sea diferente o igual a 3mil usando un operardor de comparacion <> 

select * from emp where sal <>3000;

--en este ejemplo pedimos seleccionar todo from emp y pedimos el dato donde
--salario sea diferente o igual a 3mil usando un operardor de comparacion ^= 

select * from emp where sal ^=3000;

--en este ejemplo pedimos seleccionar todo from emp y pedimos el dato donde
--salario sea diferente o igual a 3mil usando WHERE NOT que se interpreta como
--donde el dato no sea 

select * from emp where not sal =3000;

--comando IN nos sirve para pedir un dato dentro de una columna en el ejemplo
--pedimos  seleccionar todo from emp y donde job tenga dentro ANALYST , CLERK y
--MANAGER

SELECT * FROM EMP WHERE JOB IN ('ANALYST','CLERK','MANAGER');

--comando IN nos sirve para pedir un dato dentro de una columna en el ejemplo
--pedimos  seleccionar todo from emp y donde job USANDO Y NOT no tenga dentro
-- los datos ANALYST , CLERK y MANAGER asi que nos mostrara los restantes 

SELECT * FROM EMP WHERE JOB NOT IN ('ANALYST','CLERK','MANAGER');

--en este ejemplo seleccionamos todo from emp y pedimos el dato donde la columna
--de deptno y con el comando IN pedimos lo que contenga el valor 10 y 20

SELECT * FROM EMP WHERE DEPTNO IN(10,20);

--BETWEEN  A and B :este comando nos ayuda a obtener un dato entre 
--un valor a y un valor b.
--en el ejemplo seleccinamos todo from emp y pedimos un dato donde el sario sea
--entre 2000 y 3000.

SELECT * FROM EMP WHERE sal >=2000 and sal <=3000;

SELECT * FROM EMP WHERE sal BETWEEN 2000 and 3000;

--En este ejemplo usamos el comando NOT BETWEEN que nos ayuda a pedir un dato 
--que no esta entre el valor A (2000) y el valor B(3000)

SELECT * FROM EMP WHERE sal NOT BETWEEN 2000 and 3000;

--LIKE:Nos sirve para pedir un dato que sea o que luzca como el parametro que 
--ponemos es decir en el emplo  pedimos que la primera letra de
--ename sea la S

SELECT * FROM EMP WHERE ENAME LIKE 'S%';

--LIKE:Nos sirve para pedir un dato que sea o que luzca como el parametro que 
--ponemos es decir en el emplo  pedimos que la segunda letra de
--ename sea la L

SELECT * FROM EMP WHERE ENAME LIKE '_L%';

--LIKE:Nos sirve para pedir un dato que sea o que luzca como el parametro que 
--ponemos es decir en el emplo  pedimos que en la parte media contenga
--las letras AM

SELECT * FROM EMP WHERE ENAME LIKE '%AM%';

--IS NULL:Nos sirve para buscar algun dato que se null o nulo

SELECT * FROM EMP WHERE COMM IS NULL;

--En este ejemplo seleccionamos todo from emp y pedimos un dato donde mgr sea 
--null

SELECT * FROM EMP WHERE MGR IS NULL;

--En este ejemplo seleccionamos todo from emp y pedimos un dato donde mgr NO sea 
--null usando el comando IS NOT NULL

SELECT * FROM EMP WHERE MGR IS NOT NULL;

--UNION :es una instrucción de conjunto que permite combinar resultados de dos 
--instrucciones SELECT en un solo conjunto de resultados que incluye todas las 
--filas que pertenecen a las instrucciones SELECT en la unión.
--UNION ALL:Por default, el operador UNION elimina todas las filas duplicadas 
--de los conjuntos de resultados. Sin embargo, si desea conservar las filas 
--duplicadas, debe especificar la palabra clave ALL explícitamente como se 
--muestra a continuación:
--INTERSECT: La consulta INTERSECT devolverá los registros en la zona de 
--sombra azul. Estos son los registros que existen tanto en DataSet1 y Dataset2.
--Cada instrucción SQL dentro de la INTERSECT SQL debe tener el mismo número de 
--campos en los conjuntos de resultados con tipos de datos similares.
--MINUS:operator se utiliza para restar las filas que están disponibles en el 
--segundo resultado, desde el primer conjunto de resultados. SQL Server no tiene
--un a built-in MINUS, pero en SQL Server, que es equivalente es el EXCEPT 
--operator o el uso de NOT EXISTS. 

SELECT EMPNO,ENAME,SAL,DEPTNO 
FROM EMP
WHERE DEPTNO =10
UNION
SELECT EMPNO,ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO =20;

SELECT EMPNO,ENAME,SAL,DEPTNO 
FROM EMP
WHERE DEPTNO =10
UNION ALL
SELECT EMPNO,ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO =10;

SELECT EMPNO,ENAME,SAL,DEPTNO 
FROM EMP
WHERE DEPTNO =10
UNION
SELECT SAL,JOB,DEPTNO,SAL
FROM EMP
WHERE DEPTNO =20;

--MINUS

SELECT EMPNO,ENAME,SAL,DEPTNO
FROM EMP
MINUS 
SELECT EMPNO,ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO=10;

SELECT EMPNO,ENAME,SAL,DEPTNO 
FROM EMP
INTERSECT
SELECT EMPNO,ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO =10;

--17/09/2021

-- to upper casae
-- to lowercase
--INITCAP

--Selecionamos ename y hacemos la misma culumna pero conviritiendo la segunda en
--uppercase la tercera en lower case y la ultima la primera letra es capital 
select Ename,upper(ename), lower(ename),INITCAP(ename) from emp;

--
SELECT * FROM EMP WHERE LOWER(ENAME) =LOWER('scott');

SELECT * FROM EMP WHERE LOWER(ENAME)LIKE LOWER('%scott%');

--seleccionamos ename y con el comando length  hacemos una columna para que nos
--muestre el total de caracteres contenido en cada celda 

SELECT ENAME,LENGTH(ENAME)FROM EMP;

--hacemos una columna en coreano donde nos muestra que no se puede usar 
--coreano ya que el nimino de cada caracter es de 4 bytes 
SELECT LENGTH('한글') ,LENGTHB('한글')FROM DUAL;

--esn este ejemplo seleccionamos todo from emp y pedimos un dato donde el 
--contenido de job sea igual o mayor a 6 caracteres dentro de la celda

SELECT * FROM EMP WHERE LENGTH(JOB) >=6;

--SUBSTR: su funcion es sustraer algun valor o caracter dentro de una celda
-- en el ejemplo seleccionamos job y creamos 3 columnas donde cada una substrae 
--algun caracter de la columna original

SELECT job, SUBSTR(job,1,2),SUBSTR(job,3,2), SUBSTR(job,5)
FROM EMP;

--seleccionamos ename y creamos una columna donde sustraemos  e caracter de ename

SELECT ENAME, SUBSTR(ENAME,3) FROM EMP;

--CREAMOS TRES COLUMNAS I CON INSTR PEDIMOS BUSCAR LA LETRA L Y SI PONES UN 
--NUMERO DESPUES LA FUNCION EMPEZARA A BUSCAR DESDE LA POSICION DE ESE NUMERO 

SELECT 
    instr('HELLO, ORACLE!', 'L'),
    instr('HELLO, ORACLE!', 'L',5),
    instr('HELLO, ORACLE!', 'L',2,2)
FROM
    DUAL;
    
-- En estos ejemplos seleccionamos  nuetro texoto que creamos y nuestra
--referencia es la palabra esto para hacer el conteo de la posicion

SELECT INSTR ('ESTO ES ORACLE.ESTO TAMBIEN ES ORACLE.','ESTO') FROM DUAL;

SELECT INSTR ('ESTO ES ORACLE.ESTO TAMBIEN ES ORACLE.','ESTO',3) FROM DUAL;

SELECT INSTR ('ESTO ES ORACLE.ESTO TAMBIEN ES ORACLE.','ESTO',1,2) FROM DUAL;

--en estos ejemplos el resultado es similiar nos van a mostrar ename que contenga
--almenos una letra s o mas 
SELECT * FROM EMP WHERE INSTR(ENAME,'S') >0;

SELECT * FROM EMP WHERE ENAME LIKE '%S%';

--replace:nos va ayudar a cambiar un valor a por un valor b
--En el ejemplo remplazamos el primer telefono con el segundo telefono y alfinal
--los cambiamos otra vez para tener el mismo telefono que al principio 

SELECT 
    '10-1234-5678' AS FON,
    REPLACE ('010-1234-5678', '-', ' ') AS REPLACE1,
    REPLACE ('010-1234-5678', '-') AS REPLACE2
FROM
    DUAL;
    
--CONCATENAR:NOs sirve para agregar algo o sumar algo nuevo a nuestro contenido 
--original

-- en nuestro ejeplo seleccionamos empno y ename y los concatenamos  ademas 
--de pedir una dato donde emp sea igual a scott


SELECT 
    EMPNO,
    ENAME,
        CONCAT (EMPNO,ENAME)
FROM
   EMP
WHERE
   ENAME = 'SCOTT';
    

--en este ejemplo usamos concatenar para agregar los : a la celda

SELECT 
    EMPNO,
    ENAME,
        CONCAT (EMPNO,concat(':',ENAME))
FROM
   EMP
WHERE
   ENAME = 'SCOTT';
   
-- en ese ejemplo llegamos al mismo resultado que en el ejemplo anterior
--pero usamos el metodo de comparacion || or 
SELECT 
    EMPNO||ENAME,
        EMPNO||':'|| ENAME
FROM
   EMP
WHERE
   ENAME = 'SCOTT';
  
--27/09/2021  
   
--DECODE:compara expr con cada uno de valores de busqueda uno a uno. Si expr 
--es igual a un valor de busqueda la base de datos Oracle devuelve el resultado 
--correspondiente.

SELECT
    empno,
    ename,
    job,
    sal,
    decode(job, 'MANAGER', sal * 1.1, 'SALESMAN', sal * 1.05,
           'ANALYST', sal, sal * 1.03) AS upsal
FROM
    emp;
    
--CASE: se utiliza principalmente en un caso con expresiones de igualdad. La 
--sentencia de SQL CASE generalmente está dentro de una lista de selección para
--alterar la salida. Lo que realiza es evaluar una lista de condiciones y 
--devuelve una de las múltiples expresiones de resultado posibles.

SELECT
    empno,
    ename,
    job,
    sal,
CASE job
WHEN 'MANAGER' THEN sal * 1.1
WHEN 'SALESMAN' THEN sal * 1.05
WHEN 'ANALYST' THEN sal
ELSE sal * 1.03
END AS upsal
FROM
    emp;   
    
--    

SELECT
    empno,
    ename,
    comm,
CASE 
WHEN comm is null THEN 'algo'
WHEN comm=0 THEN 'algo'
WHEN comm>0 null THEN
'algo :' || comm
end as comm_text
from emp;

-- esn este ejercicio seleccionamos empno, ename,sal yhacemos una operacion para
--dividir el salario/21.5 para tenerminar elvalor de la columnna day pay y 
--redondeamos al segundo decimal, y despues dividimos salario / 8 para sacar el
--valor de la columna cno nombre time pay y dedondeamos al primer decimal todo 
--from emp 
SELECT
    empno,
    ename,
    sal,
    trunc (sal/21.5,2) as day_pay,
    round (sal/21.5/8,1) as time_pay
from EMP;

--

SELECT
    empno,
    ename,
    hiredate,
    next_day(add_months(hiredate,3),'monday')as r_job
from emp;

SELECT EMPNO,ENAME,NEXT_DAY (ADD_MONTHS(HIREDATE,3),'LUNES')AS R_JOB,
NVL(TO_CAHR(COMM),'N/A') AS COMM FROM EMP;

SELECT COMM,NVL(COMM,0) FROM EMP;

SELECT COMM,NVL(COMM,'0') FROM EMP;



SELECT COMM,NVL(COMM,'N/A') FROM EMP;

SELECT COMM,NVL(TO_CHAR(COMM),'N/A') FROM EMP;

SELECT
    empno,
    ename,
    mgr, decode (substr(to_char(mgr), 1, 2)),
null,'0000',
'75','5555',
'76','6666',
'77','7777',
'78','8888',
substr(to_char(mgr), 1)) AS chg_mgr 
FROM emp;


select empno,ename,mgr, case
when substr(to_char(mgr),1,2) is null the '0000'
when substr(to_char(mgr),1,2) then '5555'
when substr(to_char(mgr),1,2) then '6666'
when substr(to_char(mgr),1,2)then '7777'
when substr(to_char(mgr),1,2) then '8888'
else to_char(mgr)
end as CHG_MGR
from emp;

--SUM La función SUM devuelve la suma de la columna de entrada o valores de la 
--expresión. La función SUM funciona con valores numéricos e ignora los 
--alores NULL.

--COUNT
--MAX
--MIN
--AVG

SELECT SUM(SAL)FROM EMP;

SELECT SUM(SAL),ENAME FROM EMP;

--COUNT
SELECT COUNT(*)FROM EMP;

SELECT COUNT(EMPNO)FROM EMP;

SELECT COUNT(distinct (EMPNO))FROM EMP;

--MAX

SELECT MAX(SAL) FROM EMP WHERE DEPTNO=10;

--MIN 
SELECT MIN(SAL) FROM EMP WHERE DEPTNO=10;


SELECT MIN (HIREDATE) FROM EMP WHERE DEPTNO=20;

--AVG

SELECT AVG(SAL) FROM EMP WHERE DEPTNO=30;

SELECT AVG(DISTINCT SAL) FROM EMP WHERE DEPTNO=30;

--GROUP BY 

SELECT SUM (SAL),DEPTNO FROM EMP GROUP BY DEPTNO ORDER BY DEPTNO;


SELECT AVG (SAL),DEPTNO FROM EMP GROUP BY DEPTNO ORDER BY DEPTNO;

SELECT AVG (SAL),DEPTNO,JOB FROM EMP GROUP BY DEPTNO,JOB ORDER BY DEPTNO,JOB;

--GROUP BY - HAVING 

SELECT DEPTNO, JOB, AVG(SAL) 
FROM EMP 
GROUP BY DEPTNO,JOB HAVING AVG(SAL) >=2000
ORDER BY DEPTNO,JOB;

SELECT DEPTNO, JOB, AVG(SAL) 
FROM EMP
WHERE SAL <= 3000
GROUP BY DEPTNO,JOB HAVING AVG(SAL) >=2000
ORDER BY DEPTNO,JOB;

SELECT DEPTNO,FLOOR(AVG(SAL)) 
AS AVG_SAL,MAX(SAL) 
AS MAX_SAL,MIN(SAL)
AS MIN_SAL,COUNT(*)
FROM EMP 
GROUP BY DEPTNO;

SELECT JOB,COUNT(*)
FROM EMP 
GROUP BY JOB HAVING COUNT(JOB)>=3; 

SELECT TO_CHAR(HIREDATE,'YYYY')AS HIRE_YEAR,DEPTNO,COUNT(*) AS CNT
FROM EMP
GROUP BY TO_CHAR(HIREDATE,'YYYY'),DEPTNO;


SELECT TO_CHAR(HIREDATE,'YYYY')AS HIRE_YEAR,DEPTNO,COUNT(*) AS CNT
FROM EMP
GROUP BY TO_CHAR(HIREDATE,'YYYY'),DEPTNO
ORDER BY HIRE_YEAR DESC,DEPTNO;

--CREATE A NEW TABLE

CREATE TABLE DEPT_TEMP AS SELECT * FROM DEPT;

SELECT * FROM DEPT_TEMP;

--INSERT
--INSERT INTO
--INSERT INTO

INSERT INTO DEPT_TEMP (DEPTNO, DNAME, LOC)VALUES (50,'DATABASE','SEOUL');
INSERT INTO DEPT_TEMP (DEPTNO, DNAME, LOC)VALUES (50,'DATABASE','MEXICO');

--SI NO RESPETAMOS EL ORDEN EN QUE INGRESAMOS LOS DATOS NOS APARACERA UN ERROR 
INSERT INTO DEPT_TEMP VALUES ('NETWORK','BUSAN',70);
INSERT INTO DEPT_TEMP (DNAME,LOC,DEPTNO)VALUES ('DATABASE','BUSAN',50);
 
--ESTE ES UN EJEMPLO DE ERROR POR EL TAMANO DE DATA 500
--INSERT INTO DEPT_TEMP (DEPTNO,DNAME,LOC,)VALUES (500,'DATABASE','SEOUL');

--CUANDO INSERTAMOS DATOS PERO DEJAMOS UN ESPACIO EN BLACO ESE ESPACIO ES OCUPADO
--POR UN NULL
INSERT INTO DEPT_TEMP (DEPTNO,DNAME)VALUES (90,'DATABASE');

INSERT INTO DEPT_TEMP (DEPTNO,DNAME,LOC)VALUES (91,'WEB',NULL);

INSERT INTO DEPT_TEMP (DEPTNO,DNAME,LOC)VALUES (92,'MOBILE','');

COMMIT;


create table emp_temp as select * from emp where 1<>1;

-- borrar esta tabla  delete table emp_tem as select * from emp where 1<>1;

select * from emp_temp;

desc emp_temp;

insert into emp_temp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values(1111, 'juan', 'manager', null, '27-sep-21',4000,null,10);

insert into emp_temp
values(2222,'ella','analyst',null,'27-sep-21',5000,null,10);

insert into emp_temp
values(3333,'kokoa','analyst',null,sysdate,5000,null,10);



--update 

select * from dept_temp;

update dept_temp set loc = 'SEOUL'
WHERE DEPTNO =90;

update dept_temp set loc = 'BUSAN'
WHERE DEPTNO =91;

COMMIT;

SELECT * FROM EMP_TEMP;

-- UPDATE 
UPDATE EMP_TEMP
SET COMM =50
WHERE SAL <=4000;

UPDATE EMP_TEMP
SET COMM =100;

COMMIT;

UPDATE EMP_TEMP
SET comm = 1500
WHERE EMPNO =7369;

ROLLBACK;

--DELETE

create table emp_temp2 as select * from emp;

select * from emp_temp2;

DELETE EMP_TEMP2
WHERE JOB = 'MANAGER';

ROLLBACK;

DELETE EMP_TEMP2;

ROLLBACK;

--join

select count(*) from emp;
select count (*) from dept;


--cartesian join 
select *
from emp,dept;

--inner join Equi join is a special type of join in which we use only an
--equality operator. Hence, when you make a query for join using equality 
--operator then that join query comes under Equi join.

select * from emp,dept where emp.deptno = dept.deptno;

-- ORA-00918: column ambiguously defined
select empno,ename,deptno,dname 
from emp,dept 
where emp.deptno = dept.deptno;

--
select empno,ename,e.deptno,dname 
from emp e,dept d 
where e.deptno = d.deptno
order by dname;

--salary > 3000  
select empno,ename,d.deptno,dname,sal
from emp e,dept d
where e.deptno = d.deptno and sal >= 3000;

-- salary 2500 emp less tahn 9999 

select empno,ename,sal,dname,loc
from emp e, dept d
where e.deptno = d.deptno and sal <=2500 and empno <=9999;

--
select * from salgrade;
select * from emp;

-- inner joint 
select * 
from emp e, salgrade s
where e.sal Between s.losal and s.hisal;

--self join 

select * from emp;

select e1.empno, e1.ename, e1.mgr, e2.empno, e2.ename
from emp e1, emp e2
where e1.mgr = e2.empno;

--outer join
--left outer join
--right outer join 

--left outer join 
select e1.empno, e1.ename, e1.mgr, e2.empno, e2.ename
from emp e1, emp e2
where e1.mgr = e2.empno(+);

--right outer join 
select e1.empno, e1.ename, e1.mgr, e2.empno, e2.ename
from emp e1, emp e2
where e1.mgr(+) = e2.empno;

--full outer join 

--select e1.empno, e1.ename, e1.mgr, e2.empno, e2.ename
--from emp e1, emp e2
--where e1.mgr(+) = e2.empno(+);

--join on 




select empno, ename,d.deptno,dname,sal
from emp e join dept d on e.deptno = d.deptno
where sal >= 3000;


select empno,ename,sal,dname,loc
from emp e join dept d on e.deptno = d.deptno
where sal <=2500 and empno <=9999;

--inner joint
select *
from emp e join salgrade s
on e.sal between s.losal and s.hisal;

--outer join 
select e1.empno, e1.ename,e1.mgr,e2.empno,e2.ename
from emp e1 left outer join emp e2 on e1.mgr = e2.empno;

select e1.empno, e1.ename,e1.mgr,e2.empno,e2.ename
from emp e1 right outer join emp e2 on e1.mgr = e2.empno;


select deptno, dname, empno ,ename, sal 
from dept d, emp e
where d.deptno = e.deptno and sal > 2000;

select d.deptno, dname, empno ,ename, sal 
from dept d join emp e on d.deptno = e.deptno
where sal > 2000;

select d.deptno,dname,floor(avg(sal)) as avg_sal,max(sal) max_sal, min(sal) min_sal, count(*)cnt
from emp e, dept d
where e.deptno = d.deptno
group by d.deptno, dname;

select d.deptno,dname,empno,ename,job,sal
from dept d, emp e
where d.deptno = e.deptno(+);

select d.deptno,dname,empno,ename,job,sal
from dept d left outer join emp e on d.deptno= e.deptno
order by d.deptno, e.deptno;

--
select *
from emp e1, emp e2, emp e3
where e1.empno = e2.empno and e2.empno =e3.empno;

select *
from emp e1 join emp e2 on e1.empno= e2.empno
            join emp e3 on e2.empno= e3.empno;
            

select *
from emp e, dept d,salgrade s
where e.deptno = d.deptno and e.sal between s.losal and s.hisal;

--inner join
select d.deptno,dname,empno,ename,mgr,sal,losal,hisal,grade
from emp e, dept d,salgrade s
where e.deptno = d.deptno and e.sal between s.losal and s.hisal;


--
--
--

select *
from emp e1, dept d1
where e1.deptno(+) = d1.deptno;

--
select *
from emp e1, dept d1, salgrade s1
where e1.deptno(+) = d1.deptno and e1.sal between s1.losal(+) and s1.hisal(+);


--
SELECT
    d.deptno,
    dname,
    e1.empno,
    e1.ename,
    e1.mgr,
    e1.sal,
    losal,
    hisal,
    grade,
    e2.empno AS mgr_empno,
    e2.ename  AS mgr_ename
FROM
    emp      e1,
    dept     d,
    salgrade s,
    emp      e2
WHERE
        e1.deptno (+) = d.deptno
    AND e1.sal BETWEEN s.losal(+) AND s.hisal(+)
    and e1.mgr = e2.empno(+)
order by d.deptno,e1.ename;

SELECT
    d.deptno,
    dname,
    e1.empno,
    e1.ename,
    e1.mgr,
    e1.sal,
    losal,
    hisal,
    grade,
    e2.empno AS mgr_empno,
    e2.ename  AS mgr_ename
FROM
    emp      e1 right outer join dept d on e1.deptno = d.deptno
              left outer join salgrade on e1.sal between s.losal and s.hisal
              left outer join emp e2 on e1.mgr =e2.empno
order by d.deptno,e1.ename;

--SUBQUERY hacer  una sentencia dentro de otra sentencia  

SELECT sal FROM emp WHERE ename='JONES'; --2975

SELECT * FROM emp WHERE sal >2975;   

SELECT * FROM emp WHERE sal >(SELECT sal FROM emp WHERE ename='JONES'); 

--Allen buscar alguien que tenga mayor comision que allen 

SELECT * FROM emp WHERE comm >(SELECT comm FROM emp WHERE ename='ALLEN'); 

--Ward 

SELECT * FROM emp WHERE hiredate < (SELECT hiredate FROM emp WHERE ename='WARD');

--alguq te trabaje en el departamento 20 y que tenga mayor salrio que el average

SELECT empno,ename,job,sal, d.deptno, dname, loc 
FROM emp e,dept d
WHERE e.deptno = d.deptno AND d.deptno=20 and e.sal > (SELECT AVG(SAL) FROM EMP);

-->,>=,=,<=,<>,!=  CARACTERES DE COMPARACION 
--MULTI ROW SUB QUERY 

--SELECT * 
--FROM emp 
--WHERE sal >(SELECT MAX(sal)
--FROM emp
--group by deptno);
-- este ejemplo nos mostrara un error ya que los resultados son mas de uno 

SELECT * 
FROM emp 
WHERE sal IN(SELECT MAX(sal)
FROM emp
group by deptno);

--IN
--ANY(SOME)
--ALL
--EXITS

--(IN)
SELECT *
FROM EMP
WHERE SAL IN(SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);

--ANY(SOME)
SELECT *
FROM EMP
WHERE SAL = ANY (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);

--30 PERSONAS
SELECT *
FROM EMP
WHERE SAL < ANY (SELECT MAX(SAL) FROM EMP WHERE DEPTNO=30);

SELECT *
FROM EMP
WHERE SAL < ANY (SELECT SAL FROM EMP WHERE DEPTNO=30);

SELECT *
FROM EMP
WHERE SAL > ANY (SELECT SAL FROM EMP WHERE DEPTNO=30);

--ALL

SELECT *
FROM EMP
WHERE SAL < All (SELECT SAL FROM EMP WHERE DEPTNO=30);

SELECT *
FROM EMP
WHERE SAL > All (SELECT SAL FROM EMP WHERE DEPTNO=30);

--EXISTS
SELECT * FROM EMP WHERE EXISTS ( SELECT DNAME FROM DEPT WHERE DEPTNO=10);

SELECT * FROM EMP WHERE EXISTS ( SELECT DNAME FROM DEPT WHERE DEPTNO=50);

SELECT ENAME,EMPNO,JOB,SAL,D.DEPTNO,D.DNAME 
FROM EMP E, DEPT D 
WHERE E.DEPTNO = D.DEPTNO AND E.JOB
IN (SELECT JOB FROM EMP WHERE ENAME ='ALLEN');

SELECT ENAME,EMPNO,JOB,SAL,D.DEPTNO,D.DNAME,S.GRADE 
FROM EMP E, DEPT D,SALGRADE S
WHERE E.DEPTNO = D.DEPTNO AND E.SAL BETWEEN S.LOSAL AND S.HISAL
AND E.SAL >(SELECT AVG(SAL)FROM EMP)
ORDER BY E.SAL DESC, E.EMPNO ASC;


SELECT *
FROM EMP 
WHERE (DEPTNO,SAL) IN (SELECT DEPTNO,MAX(SAL) FROM EMP GROUP BY DEPTNO);

--FROM
SELECT EMPNO,ENAME,D.DEPTNO,DNAME,LOC
FROM (SELECT *FROM EMP WHERE DEPTNO=10) E10,(SELECT * FROM DEPT) D 
WHERE E10.DEPTNO = D.DEPTNO;

--INSERT 

SELECT *
FROM EMP E,SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL AND S.GRADE=1;


INSERT INTO EMP_TEMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
SELECT E.EMPNO,E.ENAME,E.JOB,E.MGR,E.HIREDATE,E.SAL,E.COMM,E.DEPTNO
FROM EMP E,SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL AND S.GRADE=1;

SELECT * FROM EMP;

--UPDATE
SELECT * FROM DEPT_TEMP;

SELECT DNAME,LOC
FROM DEPT
WHERE DEPTNO=30;

UPDATE DEPT_TEMP
SET (DNAME,LOC) = (SELECT DNAME,LOC FROM DEPT WHERE DEPTNO=30)
WHERE DEPTNO=40;

UPDATE DEPT_TEMP
SET LOC='SEOUL'
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT_TEMP WHERE DNAME='ACCOUNTING');

SELECT * FROM EMP_TEMP;


DELETE EMP_TEMP;
WHERE EMPNO IN (SELECT EMPNO 
                FROM EMP_TEMP E, SALGRADE S
                WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL AND S.GRADE=3 AND DEPTNO=30);

SELECT * FROM EMP_TEMP;

CREATE TABLE EXAM_EMP AS SELECT * FROM  EMP;

CREATE TABLE EXAM_DEPT AS SELECT * FROM  DEPT;

CREATE TABLE EXAM_SALGRADE AS SELECT * FROM SALGRADE;

insert into exam_emp values(7201,'TEST_USER1','MANAGER',7788,'02-JAN-16',4500,NULL,50);
INSERT INTO EXAM_EMP VALUES(7202,'TEST_USER2','CLERK',7201,'21-FEB-2016',1800,NULL,50);
INSERT INTO EXAM_EMP VALUES(7203,'TEST_USER3','ANALYST',7201,'11-APRIL-2016',3400,NULL,60);
INSERT INTO EXAM_EMP VALUES(7204,'TEST_USER4','SALESMAN',7201,'31-MAY-2016',2700,300,60);
INSERT INTO EXAM_EMP VALUES(7205,'TEST_USER5','CLERK',7201,'20-JUN-2016',2600,NULL,70);
INSERT INTO EXAM_EMP VALUES(7206,'TEST_USER6','CLERK',7201,'08-SEP-2016',2600,NULL,70);
INSERT INTO EXAM_EMP VALUES(7207,'TEST_USER7','LECTURER',7201,'28-OCT-2016',2300,NULL,80);
INSERT INTO EXAM_EMP VALUES(7208,'TEST_USER8','STUDENT',7201,'09-MARCH-2018',1200,NULL,80);

UPDATE EXAM_EMP
SET DEPTNO =70
WHERE SAL> (SELECT AVG(SAL) FROM EXAM_EMP WHERE DEPTNO =50);


UPDATE EXAM_EMP
SET SAL = SAL *1.1,DEPTNO =80
WHERE HIREDATE>(SELECT MIN (HIREDATE) FROM EXAM_EMP WHERE DEPTNO=60)

DELETE 
FROM 
    EXAM_EMP 
WHERE EMPNO IN (SELECT empno FROM exam_emp, exam_salgrade WHERE sal BETWEEN losal AND hisal AND grade = 5);

commit;
            
--transaccion
create table dept_tcl as select * from dept;

Select * from dept_tcl;

insert into dept_tcl values (50,'database','seoul');

update dept_tcl set loc= 'busan' where deptno =40;

delete from dept_tcl where dname= 'research';

select * from dept_tcl;

----

rollback;

-----

commit;

select *from dept_tcl;

--session

delete from dept_tcl where deptno=40;

select * from dept_tcl;

update dept_tcl 
set loc='seoul'
where deptno =30;

commit;

sql plus update dept_tcl set dname='database' where deptno=30;

--DDL data definition language
--create,change,delete  object
--create, alter,drop 
--create table, field name , field name 2

create table EMP_DDL(
 EMPNO NUMBER(4),
 ENAME VARCHAR2(10),
  JOB VARCHAR(9),
  MGR NUMBER(4);
  HIREDATE DATE,
  SAL NUMBER(7,2)
 COMM NUMBER (7,2),
 DEPTNO NUMBER (2)
 );

DESC EMP

--ALTER

CREATE TABLE EMP_ALTER AS SELECT * FROM EMP;

-- CREATE ONE COLUMN :ADD

DESC EMP_ALTER;

ALTER TABLE EMP_ALTER ADD HP VARCHAR2(20);
SELECT * FROM EMP_ALTER;

alter table emp_alter rename column hp to tel;

-mod



create table member(
 id NUMBER(8),
 name VARCHAR2(8),
  ADDR VARCHAR2(50),
  NATION CHAR(4),
  EMAIL VARCHAR2 (50),
  AGE NUMBER(7,2)
 );

DROP TABLE MEMBER;

alter TABLE MEMBER ADD BIGO VARCHAR2(20);

alter TABLE MEMBER MODIFY BIGO VARCHAR2(30);

alter TABLE MEMBER RENAME COLUMN BIGO TO REMARK;

--05/10/2021
--view  

CREATE VIEW  vm_emp20 as (SELECT empno,ename,job,deptno from emp where deptno=20);

select * from vm_emp20;

--CREATE OR REPLACE  VIEW 

CREATE VIEW VM_EMPALL AS SELECT * FROM EMP;

--VM_EMPALL  NEEW 
SELECT * FROM VM_EMPALL;

UPDATE  VM_EMPALL 
SET JOB ='SALESMAN'
WHERE EMPNO=7369;

INSERT INTO VM_EMPALL VALUES(6666,'KIM','MANAGER',NULL,'20-OCT-2005',2650,NULL,20);

SELECT * FROM EMP;

--WE CREATAE A NEW TABLE WITH JUST THE OPTION OF SEE THE TABLE WE CANT MODIFIE 

CREATE VIEW VM_EMP30READ AS SELECT EMPNO,ENAME,JOB FROM EMP WHERE DEPTNO=30 WITH READ ONLY; 

SELECT * FROM VM_EMP30READ;

DROP VIEW VM_EMPALL;

--SECUENCIAS 

CREATE SEQUENCE SEQ_DEPT_SEQUENCE
INCREMENT BY 10 -- LA OPCION DEFAULT ES 1
START WITH 10 -- LA OPCION DEFAULT ES 1
MAXVALUE 90 -- POR DEFULT LA OPCION  10 A LA 27
MINVALUE 0 -- EL VALOR POR DEFAULT ES 1 
NOCYCLE CACHE 2; --LA OPCION ES CICLO(CYCLE) Y NO CICLO (NO CCYCLE) 

CREATE TABLE DEPT_SEQUENCE AS SELECT * FROM DEPT WHERE 1<>1;

INSERT INTO DEPT_SEQUENCE(DEPTNO,DNAME,LOC)
VALUES(SEQ_DEPT_SEQUENCE.NEXTVAL,'DATABASE','SEOUL');

ALTER  SEQUENCE SEQ_DEPT_SEQUENCE
INCREMENT BY 3
MAXVALUE 99
CYCLE;

SELECT * FROM DEPT_SEQUENCE;

DROP SEQUENCE SEQ_DEPT_SEQUENCE;

-- INDEX ES COMO UNA BUSQUEDA RAPIDA 
--TABLE FULL SCAN , INDEX SCAN 

CREATE INDEX IDX_EMP_SAL
ON EMP(SAL);

--
CREATE TABLE USERTBL(
USERID CHAR(8) NOT NULL PRIMARY KEY,
USERNAME VARCHAR(10) NOT NULL);

DROP INDEX IDX_EMP_SAL;

-- EJERCICIO 

CREATE TABLE EMPIDX  AS SELECT * FROM EMP;

CREATE INDEX IDX_EMPIDX_EMPNO
ON EMPIDX(EMPNO);

CREATE VIEW EMPIDX_OVER15K AS( SELECT EMPNO,ENAME,JOB,DEPTNO,SAL,COMM FROM EMPIDX WHERE SAL >=1500):

CREATE TABLE DEPTSE FROM 

CREATE SEQUENCE DEPTSEQ_SEQUENCE
INCREMENT BY 1 -- LA OPCION DEFAULT ES 1
START WITH 1 -- LA OPCION DEFAULT ES 1
MAXVALUE 99 -- POR DEFULT LA OPCION  10 A LA 27
MINVALUE 1 -- EL VALOR POR DEFAULT ES 1 
NOCYCLE NOCACHE; --LA OPCION ES CICLO(CYCLE) Y NO CICLO (NO CCYCLE) 

INSERT INTO DEPTSEQ VALUES(DEPTSEQ_SECUENCE.NEXTVAL,'DATABASE','SEOUL');
INSERT INTO DEPTSEQ VALUES(DEPTSEQ_SECUENCE.NEXTVAL,'WEB','BUSAN');
INSERT INTO DEPTSEQ VALUES(DEPTSEQ_SECUENCE.NEXTVAL,'MOBILE','ILSAN');

SELECT * FROM DEPTSEQ;

--LIMITED CONDITIONS 
--USAMOS LAS LIMITACIONES PARA MANTENER LA DATA FUERA DE COMFLICTOS

--NOT NULL 

CREATE TABLE TABLE_NOTNULL(
    LOGIN_ID VARCHAR(20) NOT NULL,
    LOGIN_PWD VARCHAR (20) NOT NULL,
    TEL VARCHAR (20));
    
INSERT INTO TABLE_NOTNULL VALUES ('TEST_01',NULL,'010-1234-5678');

INSERT INTO TABLE_NOTNULL(LOGIN_ID,LOGIN_PWD) VALUES('TEST_01','TEST_01');

UPDATE TABLE_NOTNULL
SET LOGIN_PWD = NULL
WHERE LOGIN_ID='TEST_01';

CREATE TABLE TABLE_NOTNULL2(
    LOGIN_ID VARCHAR(20) CONSTRAINT TBLNN2_LGNID_NN NOT NULL,
    LOGIN_PWD VARCHAR (20)CONSTRAINT TBLNN2_LGNPWD_NN NOT NULL,
    TEL VARCHAR (20));
    
SELECT OWNER,CONSTRAINT_NAME,CONSTRAINT_TYPE,TABLE_NAME 
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'TABLE_NOTNULL';

--PONEMOS LAS LIMITANTESW UNA TABLA QUE YA EXISTIA 
SELECT * FROM TABLE_NOTNULL;

ALTER TABLE  TABLE_NOTULL MODIFY(TEL NOT NULL);

--UPDATE 

UPDATE TABLE_NOTNULL
SET TEL='010-1234-5365'
WHERE LOGIN_ID= 'TEST_01';

SELECT * FROM TABLE_NOTNULL;

SELECT * FROM TABLE_NOTNULL2;
ALTER TABLE TABLE_NOTNULL2 MODIFY (TEL CONSTRAINT TBLNN_TEL_NN NOT NULL);

SELECT OWNER,CONSTRAINT_NAME,CONSTRAINT_TYPE,TABLE_NAME 
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'TABLE_NOTNULL2';

ALTER TABLE TABLE_NOTNULL2 RENAME CONSTRAINT TBLNN_TEL_NN TO TBLNN2_TEL_NN;

ALTER TABLE TABLE_NOTNULL2 DROP CONSTRAINT TBLNN2_TEL_NN;


--UNIQUE 

CREATE TABLE  TABLE_UNIQUE(
 LOGIN_ID VARCHAR2 (20)UNIQUE,
 LOGIN_PWD VARCHAR2(20) NOT NULL,
 TEL VARCHAR(20));

SELECT OWNER,CONSTRAINT_NAME,CONSTRAINT_TYPE,TABLE_NAME 
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'TABLE_UNIQUE';

INSERT INTO TABLE_UNIQUE 
VALUES ('TEST_ID_01','PWD082','010-1234-5678');

INSERT INTO TABLE_UNIQUE 
VALUES ('TEST_ID_01','PWD082','010-1234-5679');

INSERT INTO TABLE_UNIQUE 
VALUES (NULL,'PWD082','010-1234-5679');

CREATE TABLE  TABLE_UNIQUE2(
 LOGIN_ID VARCHAR2 (20)CONSTRAINT TBLUNQ2_LGID_UNQ UNIQUE,
 LOGIN_PWD VARCHAR2(20)CONSTRAINT TBLUNQ2_LGPWD_UNQ NOT NULL,
 TEL VARCHAR(20));
 
 SELECT OWNER,CONSTRAINT_NAME,CONSTRAINT_TYPE,TABLE_NAME 
FROM USER_CONSTRAINTS
WHERE TABLE_NAME LIKE 'TABLE_UNIQUE%';

ALTER TABLE TABLE_UNIQUE MODIFY (TEL UNIQUE);

CREATE TABLE TABLE_CON(
    COL1 VARCHAR2(20),
    COL2 VARCHAR2(20),
    COL3 VARCHAR2(20),
    PRIMARY KEY(COL1),
    CONSTRAINT TBLCON_UNQ UNIQUE (COL2));


--PRIMARY KEY : NOT NULL + UNIQUE

CREATE TABLE  TABLE_PK(
 LOGIN_ID VARCHAR2 (20)PRIMARY KEY,
 LOGIN_PWD VARCHAR2(20)NOT NULL,
 TEL VARCHAR(20));
 
 INSERT INTO TABLE_PK 
 VALUES('TEST_01','PWD01','010-1234-7896');
 
 INSERT INTO TABLE_PK 
 VALUES('TEST_01','PWD02','010-1234-7896');
 
 CREATE TABLE  TABLE_PK2(
 LOGIN_ID VARCHAR2 (20)PRIMARY KEY,
 LOGIN_PWD VARCHAR2(20) PRIMARY KEY,
 TEL VARCHAR(20));
 
 CREATE TABLE  TABLE_PK2(
 LOGIN_ID VARCHAR2 (20)CONSTRAINT TBLPK2_LGID_PK PRIMARY KEY,
 LOGIN_PWD VARCHAR2(20)CONSTRAINT TBLPK2_LGPWD_NN NOT NULL,
 TEL VARCHAR(20));
 
 --FOREING KEY 
 CREATE TABLE DEPT_FK(
 DEPTNO NUMBER(2) CONSTRAINT DEPTFK_DEPTNO_PK PRIMARY KEY,
 DNAME VARCHAR2(14),
 LOC VARCHAR(13));
 
CREATE TABLE EMP_FK (
 EMPNO NUMBER (4) CONSTRAINT EMPFK_EMPNO_PK PRIMARY KEY,
 ENAME VARCHAR2(10),
 JOB VARCHAR2(9),
 MGR NUMBER(4),
 HIREDATE DATE,
 SAL NUMBER(7,2),
 COMM NUMBER(7,2),
 DEPTNO NUMBER(2)CONSTRAINT EMPFK_DEPTNO_FK REFERENCES DEPT_FK(DEPTNO));
 
INSERT INTO EMP_FK 
VALUES(9999,'TEST_NAME','TEST-JOB',NULL,'05-OCT-2021',3000,NULL,10);

--

INSERT INTO DEPT_FK VALUES(10,'DATABASE','SEOUL');

INSERT INTO EMP_FK
VALUES(9999,'TEST_NAME','TEST-JOB',NULL,'05-OCT-2021',3000,NULL,10);

DELETE FROM DEPT_FK WHERE DEPTNO =10;

DELETE FROM EMP_FK WHERE DEPTNO =10;
DELETE FROM DEPT_FK WHERE DEPTNO =10;

 CREATE TABLE DEPT_FK2(
 DEPTNO NUMBER(2) CONSTRAINT DEPTFK2_DEPTNO_PK PRIMARY KEY,
 DNAME VARCHAR2(14),
 LOC VARCHAR(13));
 
CREATE TABLE EMP_FK2 (
 EMPNO NUMBER (4) CONSTRAINT EMPFK2_EMPNO_PK PRIMARY KEY,
 ENAME VARCHAR2(10),
 JOB VARCHAR2(9),
 MGR NUMBER(4),
 HIREDATE DATE,
 SAL NUMBER(7,2),
 COMM NUMBER(7,2),
 DEPTNO NUMBER(2)CONSTRAINT EMPF2K_DEPTNO_FK REFERENCES DEPT_FK2(DEPTNO)ON DELETE CASCADE );

INSERT INTO DEPT_FK2 VALUES(10,'DATABASE','SEOUL');

INSERT INTO EMP_FK2
VALUES(9999,'TEST_NAME','TEST-JOB',NULL,'05-OCT-2021',3000,NULL,10);

DELETE FROM DEPT_FK2 WHERE DEPTNO =10;    

SELECT * FROM DEPT_FK2;
SELECT * FROM EMP_FK2;

CREATE TABLE EMP_FK3 (
 EMPNO NUMBER (4) CONSTRAINT EMPFK3_EMPNO_PK PRIMARY KEY,
 ENAME VARCHAR2(10),
 JOB VARCHAR2(9),
 MGR NUMBER(4),
 HIREDATE DATE,
 SAL NUMBER(7,2),
 COMM NUMBER(7,2),
 DEPTNO NUMBER(2)CONSTRAINT EMPFK3_DEPTNO_FK REFERENCES DEPT_FK2(DEPTNO)ON DELETE SET NULL );
 
 INSERT INTO DEPT_FK2 VALUES(10,'DATABASE','SEOUL');

INSERT INTO EMP_FK3
VALUES(9999,'TEST_NAME','TEST-JOB',NULL,'05-OCT-2021',3000,NULL,10);

SELECT * FROM DEPT_FK2;
SELECT * FROM EMP_FK3;

DELETE FROM DEPT_FK2 WHERE DEPTNO =10;

--CHECK 

CREATE TABLE TABLE_CHECK(
 LOGIN_ID VARCHAR2(20) CONSTRAINT TBLCK_LGNID_PK PRIMARY KEY,
 LOGIN_PWD VARCHAR2(20)CONSTRAINT TBLCK_LGNPWD_NN CHECK (LENGTH(LOGIN_PWD)>3) ,
 LOC VARCHAR(20));
 
INSERT INTO TABLE_CHECK VALUES('TEST_ID','123','101-1234-5678');
 
INSERT INTO TABLE_CHECK VALUES('TEST_ID','1234','101-1234-5678');
 
CREATE TABLE TABLE_DEFAULT(
 LOGIN_ID VARCHAR2(20) CONSTRAINT TBLDF_LGNID_PK PRIMARY KEY,
 LOGIN_PWD VARCHAR2(20) DEFAULT '1234' ,
 TEL VARCHAR(20));
 
INSERT INTO TABLE_DEFAULT(LOGIN_ID,LOGIN_PWD)
VALUES('TEST_ID','TEST_ID');
 
INSERT INTO TABLE_DEFAULT(LOGIN_ID,TEL)
VALUES('TEST_ID2','010-5689-1234'); 
 
INSERT INTO TABLE_DEFAULT(LOGIN_ID,LOGIN_PWD,TEL)
VALUES('TEST_ID3',NULL,'010-5689-1234');

SELECT * FROM TABLE_DEFAULT;
 
 
CREATE TABLE DETP_CONST(
 DEPTNO NUMBER(2) CONSTRAINT DEPTCONST_DEPTNO_PK PRIMARY KEY,
 DNAME VARCHAR2(14)CONSTRAINT DEPTCONST_DNAME_UNQ UNIQUE,
 LOC VARCHAR2(13)CONSTRAINT DEPTCONST_LOC_NN NOT NULL);
 

 CREATE TABLE EMP_CONST(
 EMPNO NUMBER(2) CONSTRAINT EMPCONST_EMPNO_PK PRIMARY KEY,
 ENAME VARCHAR2(10)CONSTRAINT EMPCONST_ENAME_NN NOT NULL,
 JOB VARCHAR2(9),
 TEL VARCHAR2(20)CONSTRAINT EMPCONST_TEL_UNQ UNIQUE,
 HIREDATE DATE,
 SAL NUMBER(7,2) CONSTRAINT EMPCONST_SAL_CHK CHECK(SAL BETWEEN 1000 AND 9999),
 COMM NUMBER (7,2),
 DEPTNO NUMBER (2) CONSTRAINT EMPCONST_DEPTNO_FK REFERENCES DEPT_CONST(DEPTNO));
 

