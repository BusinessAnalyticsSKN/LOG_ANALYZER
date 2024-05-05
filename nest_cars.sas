proc print data=sashelp.cars;
run;

%macro level6;
proc means data=sashelp.cars mean std median max;
var Invoice;
run;
%mend;


%macro level5;
proc sgplot data=sashelp.cars;
   vbox Invoice / category=Type fillattrs=(color=lightorange);
   title "Price Distribution by Type";
run;
%mend;

%macro level4;
%local i var;
%do i = 1 %to 3;
   %let var = %scan(Horsepower Cylinders EngineSize, &i);
   proc sgplot data=sashelp.cars;
      vbar Type / response=&var fillattrs=(color=coral);
      title "Bar Chart: Type vs. &var";
   run;
%end;
%mend;

%macro level3;
proc sort data=sashelp.cars;
    by Type;
run;
%level4;;
%mend;

%macro level2;
proc univariate data=sashelp.cars;
   var Invoice;
   histogram / normal;
   inset mean std min max / position=ne;
run;
%mend;

%macro level1;
proc freq data=sashelp.cars;
    tables Type / list; 
run;

%level2;
%level3;
%level5;
%level6;
%mend;

%level1;
