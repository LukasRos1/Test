Saker att ladda ner

1. eclipse (https://www.eclipse.org/downloads/packages/release/2019-03/r/eclipse-ide-enterprise-java-developers)
2. tomcat (https://tomcat.apache.org/download-90.cgi)
3. postgresql (sätt lösenord till "password" under installationen för att stämma överrens med koden, port default  (5432)) (https://www.postgresql.org/download/)
4. postgresql jar, version PostgreSQL JDBC 4.2 Driver, 42.2.5, (https://jdbc.postgresql.org/download.html)
5. pgadmin 4 (https://www.pgadmin.org/download/) 

6. Gå in i tomcat-mappen, och placera postgresql jar (från steg 4) i mappen "lib"
7. Starta eclipse tryck på "File" och sedan "Import", sök sedan efter "maven" och tryck på "Existing Maven Project" -> next. Hitta mappen
8. Högerklicka på projektet vid vänster sida och välj "Properties" längst ner
9. Hitta "Targeted Runtimes" och välj "New" -> Apache Tomcat v.9.0 -> Browse och lägg till mappen för tomcat
10. Högerklicka på projektet och tryck på "Build Path" -> "Configure Build Path" -> Add external JARS (höger sida)
11. Leta upp PostgreSQL JAR-filen och välj, tryck sedan på apply and close
Projektet är nu redo att köras
12. Initialisera databasen: gå in i java resources -> src/main/java -> sys -> högerklicka på DatabaseConnection och tryck på "run as application"
(antagligen går något fel här hehe)
13. Högerklicka på projektet och tryck på "Run As" -> "Run on server", välj Tomcat v.9.0
14. Gå in i valfri browser och skriv in "localhost:8080/sys/"

