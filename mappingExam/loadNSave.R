options( java.parameters = "-Xmx2g" )
library(RJDBC)
drv = JDBC("org.h2.Driver","h2-1.3.170.jar",identifier.quote="'")
options=";LOG=0;CACHE_SIZE=65536;LOCK_MODE=0;UNDO_LOG=0"
conn = dbConnect(drv,paste("jdbc:h2:H2DB",options,sep=''),"sa","")
dhus = dbGetQuery(conn,"SELECT * FROM hus WHERE ORIGRANDGROUP<=1")
dpus = dbGetQuery(conn,"SELECT pus.* FROM pus WHERE pus.SERIALNO IN (SELECT DISTINCT hus.SERIALNO FROM hus WHERE hus.ORIGRANDGROUP<=1)")
dbDisconnect(conn)
save(dhus,dpus,file='phsample.RData')
