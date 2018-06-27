SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
call ant -buildfile build.xml -Dguidename=cdc-acg -Dspec=http://hl7.org/fhir/STU3/
pause