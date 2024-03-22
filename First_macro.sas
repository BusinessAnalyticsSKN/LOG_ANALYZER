%macro level3;
proc print data=sashelp.cars;
run;
%mend;

%macro level2;
proc print data=sashelp.air;
run;

%level3;

%mend;

%macro level1;
proc print data=sashelp.class;
run;

%level2;

%mend;


%level1;
