REM   Script: PL SQL procedures and functions
REM   exp 9

CREATE OR REPLACE PROCEDURE today_is AS 
BEGIN 
DBMS_OUTPUT.PUT_LINE( 'Today is ' || TO_CHAR(SYSDATE, 'DL') ); 
END today_is; 
/

BEGIN 
  today_is(); 
END; 
/

DECLARE  
   a number;  
PROCEDURE squareNum(x IN OUT number) IS  
BEGIN  
  x := x * x;  
END;   
BEGIN  
   a:= 23;  
   squareNum(a);  
   dbms_output.put_line(' Square of (23): ' || a);  
END;  
/

DECLARE    
   a number;    
   b number;    
   c number;   
FUNCTION findMax(x IN number, y IN number) 
RETURN number 
IS  
   z number; 
BEGIN    
   IF x > y THEN    
      z:= x;    
   ELSE    
      z:= y;    
   END IF;    
   RETURN z; 
END;      
BEGIN    
   a:= 23;    
   b:= 45;    
   c:=findMax(a,b);    
   dbms_output.put_line(' Maximum of (23, 45) : ' || c);    
END;
/

DECLARE 
       num number; 
       factorial number; 
FUNCTION fact(x number) 
RETURN number 
IS 
       f number; 
BEGIN 
       IF x=0 THEN 
           f:=1; 
       ELSE 
           f:=x*fact(x-1); 
       END IF; 
RETURN f; 
END; 
BEGIN  
       num:=6; 
       factorial:=fact(num); 
       dbms_output.put_line('Factorial '||num||' is '||factorial); 
END;
/

