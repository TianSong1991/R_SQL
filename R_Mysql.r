library(RODBC)

channel <- odbcConnect("MySQL", uid="root", pwd="rainbow")
sqlTables(channel)

data<-sqlFetch(channel,"help_topic")

head(data)

sqlQuery(channel,
         "select help_topic_id,name,help_category_id  
         from help_topic where help_topic_id < 5 
         order by help_topic_id desc")

sqlSave(channel, iris, rownames = "id", addPK = TRUE)

sqlQuery(channel,
         "show tables")

####################################################
library(RMySQL)

conn <- dbConnect(RMySQL::MySQL(), dbname = "MySQL", username="root", password="rainbow", 
                  host="127.0.0.1", port=3306)
dbReadTable(conn, "db") 













