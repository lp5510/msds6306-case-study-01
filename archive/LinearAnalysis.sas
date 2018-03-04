filename CSV URL "https://dl.dropboxusercontent.com/spa/afq05cp80hp4ezn/downloads/public/msds-data/beerbrew.csv";
data dataset;
   infile CSV dsd firstobs=2;
   input RecordNumber Beer_ID Beer $ Style $ Ounces ABV IBU Brew_ID Brewery $ City $ State $;
run;
proc print data = dataset; run;

proc sort data = dataset;
    by ABV;
run;


proc univariate data=dataset;
  class ABV;
  var IBU;
  histogram IBU ;
  qqplot IBU ;
run;

proc boxplot data=dataset;
   plot IBU*ABV / horizontal;
run;

proc sgplot data=dataset;
    scatter x=ABV y=IBU;
run;


proc sgscatter data=dataset;
    plot IBU*ABV;
run;


proc corr data = dataset; run;


data rsquaredval;
    rsquared = 0.669 * 0.669;
run;
proc print data = rsquaredval; run;

data rteststatistic;
    teststat = (0.669 * SQRT(8-2)) / SQRT(1 - 0.669*0.669);
run;
proc print data = rteststatistic; run;


data pvaluetdistribution;
    pvalue_t_distribution = 2*(1 - cdf('t', 2.20475, 1372 - 2));
run;
proc print data = pvaluetdistribution; run;