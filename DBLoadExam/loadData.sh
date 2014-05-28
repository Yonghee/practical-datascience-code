java -classpath SQLScrewdriver.jar:h2-1.3.170.jar \
   com.winvector.db.LoadFiles \
   file:dbDef.xml , hus \
   file:csv_hus/ss11husa.csv file:csv_hus/ss11husb.csv
java -classpath SQLScrewdriver.jar:h2-1.3.170.jar \
   com.winvector.db.LoadFiles \
   file:dbDef.xml , pus \
   file:csv_pus/ss11pusa.csv file:csv_pus/ss11pusb.csv
