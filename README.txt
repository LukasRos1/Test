Saker att ladda ner

1. eclipse (https://www.eclipse.org/downloads/packages/release/2019-03/r/eclipse-ide-enterprise-java-developers)
2. tomcat (https://tomcat.apache.org/download-90.cgi)
3. postgresql (s�tt l�senord till "password" under installationen f�r att st�mma �verrens med koden, port default  (5432)) (https://www.postgresql.org/download/)
4. postgresql jar, version PostgreSQL JDBC 4.2 Driver, 42.2.5, (https://jdbc.postgresql.org/download.html)
5. pgadmin 4 (https://www.pgadmin.org/download/) 

6. G� in i tomcat-mappen, och placera postgresql jar (fr�n steg 4) i mappen "lib"
7. Starta eclipse tryck p� "File" och sedan "Import", s�k sedan efter "maven" och tryck p� "Existing Maven Project" -> next. Hitta mappen
8. H�gerklicka p� projektet vid v�nster sida och v�lj "Properties" l�ngst ner
9. Hitta "Targeted Runtimes" och v�lj "New" -> Apache Tomcat v.9.0 -> Browse och l�gg till mappen f�r tomcat
10. H�gerklicka p� projektet och tryck p� "Build Path" -> "Configure Build Path" -> Add external JARS (h�ger sida)
11. Leta upp PostgreSQL JAR-filen och v�lj, tryck sedan p� apply and close
Projektet �r nu redo att k�ras
12. Initialisera databasen: g� in i java resources -> src/main/java -> sys -> h�gerklicka p� DatabaseConnection och tryck p� "run as application"
(antagligen g�r n�got fel h�r hehe)
13. H�gerklicka p� projektet och tryck p� "Run As" -> "Run on server", v�lj Tomcat v.9.0
14. G� in i valfri browser och skriv in "localhost:8080/sys/"

