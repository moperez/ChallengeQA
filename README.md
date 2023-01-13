## Automation Testing ChallengePetStore


### Project 
* [https://petstore.swagger.io/](https://petstore.swagger.io/) 

### Tests
##### Pet
* Create Pet: Agregar una mascota realizando un POST al path/v2/pet
* Get: Realizar un GET/v2/pet/{petId} para obtener una mascota existente
* Put: Modificar una mascota existente mediante PUT al path/v2/pet



### Procedimiento de Ejecución de los Test
```sh
gradle clean cucumber -Psuite=@Challenge
```



### Generacion de Reporte

* 1-Ejecutar los tests, esto genera el .json (Report.json) en  la carpeta build/reports/cucumber
* 2-Ejecutar la application test/java/report/ReportGenerator.java 
* 3-El reporte es generado en formato html en la carpeta build/reports/cucumber/Generated-ReportAPI/






