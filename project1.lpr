program project1;

{$mode objfpc}{$H+}

uses
{$IFDEF UNIX}{$IFDEF UseCThreads}
cthreads,
{$ENDIF}{$ENDIF}
Classes;
var x,t,s,eps:real;k:integer;
begin
writeln('Enter "x"');
readln(x);
writeln('Enter "eps"');
readln(eps);
k:=0;
t:=1;
s:=t;
write('k: ',k,' ! t: ',t:15,' ! ','s: ',s:15);
writeln;
repeat
inc(k);
t:=-(sqr(x)*sqr(x)/(162*k))*t;
s:=s+t;
write('k: ',k,' ! t: ',t:15,' ! ','s: ',s:15);
writeln;
until abs(t)<eps;
writeln('S = ',S:15);
readln
end.

