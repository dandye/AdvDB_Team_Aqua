create or replace function decade_fx (outparm in integer) 
return integer
is retval integer;
begin
  retval := cast(substr(cast(outparm as char),1,3) || '0' as integer);
  return retval;
END;