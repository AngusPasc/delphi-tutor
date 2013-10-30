program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function Prost(a:integer):boolean;
var i:integer;
    f:boolean;
begin
if a<2 then f:=false
else
 begin
  f:=true;i:=2;
  while (i*i<=a)and f do
  if a mod i=0 then f:=false
  else inc(i)
 end;
Prost:=f;
end;
var i,m,k:integer;
begin
k:=0;
i:=2;
write('Kakoe prostoe chislo hotite yznat:');
readln(m);
repeat
if Prost(i)then
  begin
   k:=k+1;
   if k=m then writeln(i:3);
  end;
i:=i+1;

until k=m;
readln;
end.
