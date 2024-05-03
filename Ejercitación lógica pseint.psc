//3)Ejercitación lógica pseint
//Una empresa de reparto tiene x empleados y reparte en 5 zonas diferentes. ZONA ABCDE
//La empresa necesita un programa  que despligue un menú, que solamente salga al darle a la tercera opción.
//1) saber que empleado hizo más ventas y sobre que zona
//2) Ver las ventas de un representante ingresado por teclado
//3) salir


Proceso RegistroVentas // Proceso principal a donde llamaremos los sub Procesos
    Definir opcionMenu como Entero;
	
    Repetir
        Escribir  "Menú:";
        Escribir "1. Cargar datos de ventas";
        Escribir "2. Estadísticas de ventas";
        Escribir "3. Salir";
        Escribir "Ingrese la opción deseada:";
        Leer opcionMenu;
		
        Segun opcionMenu Hacer
            1:
                cargaDeDatos();
            2:
                estadisticasDeVentas();
            3:
                Escribir  "Saliendo del programa...";
            OtroCaso:
                Escribir "Opción no válida. Intente de nuevo.";
        FinSegun
    Hasta Que opcionMenu = 3
FinAlgoritmo

SubProceso cargaDeDatos
    Definir cantidadEmpleados, i, zona, ventas como Entero;
    Definir cantidadZonas como Entero;
    Definir zonasTrabajo Como Caracter;
	Definir ventasEmpleados Como Entero;
    Dimension ventasEmpleados[100, 5];
    Dimension zonasTrabajo[100, 5];
	
    Escribir  "Ingrese la cantidad de empleados:";
    Leer cantidadEmpleados;
	
    Para i <- 1 Hasta cantidadEmpleados Hacer
        Escribir "Empleado ", i;
        Escribir  "Ingrese la cantidad de zonas en que trabajó el empleado ", i, ":";
        Leer cantidadZonas;
        Para zona <- 1 Hasta cantidadZonas Hacer
            Escribir "Las opciones de zona son A, B, C, D, E";
            Escribir  "Ingrese la zona en que trabajó el empleado ", i, ":";
            Leer zonasTrabajo[i, zona];
            Escribir "Ingrese la cantidad de ventas que realizó en la zona ", zonasTrabajo[i, zona], " el empleado ", i, ":";
            Leer ventasEmpleados[i, zona];
        FinPara
    FinPara
FinSubProceso

SubProceso estadisticasDeVentas
    Definir opcionMenuEstadisticas como Entero;
	
    Repetir
        Escribir "Menú de Estadísticas:";
        Escribir "1. Ver estadísticas generales";
        Escribir "2. Ver estadísticas por empleado";
        Escribir "3. Volver al menú principal";
        Escribir "Ingrese la opción deseada:";
        Leer opcionMenuEstadisticas;
		
        Segun opcionMenuEstadisticas Hacer
            1: // Calcular la cantidad total de ventas por zona
				Definir totalVentasPorZona Como Entero;
				Dimension totalVentasPorZona[5];
				totalVentasPorZona <- totalVentasPorZona[i];
				Dimension ventasEmpleados[100,5];
				
				Para i <- 1 hasta cantidadEmpleados Hacer
					Para zona <- 1 hasta cantidadZonas Hacer
						totalVentasPorZona[zona] <- totalVentasPorZona[zona] + ventasEmpleados[i, zona];
					FinPara
				FinPara
				
				// Mostrar la cantidad de ventas por zona
				Escribir "Cantidad de ventas por zona:";
				Para zona <- 1 hasta cantidadZonas Hacer
					Escribir "Zona ", zona, ": ", totalVentasPorZona[zona], " ventas";
				FinPara
				
				// Encontrar al empleado que realizó más ventas
				Definir maxVentas como Entero;
				Definir empleadoMaxVentas como Entero;
				maxVentas <- 0;
				
				Para empleado <- 1 hasta cantidadEmpleados Hacer
					Definir totalVentasEmpleado como Entero;
					totalVentasEmpleado <- 0;
					
					Para zona <- 1 hasta cantidadZonas Hacer
						totalVentasEmpleado <- totalVentasEmpleado + ventasEmpleados[empleado, zona];
					FinPara
					
					Si totalVentasEmpleado > maxVentas Entonces
						maxVentas <- totalVentasEmpleado;
						empleadoMaxVentas <- empleado;
					FinSi
				FinPara
				
				// Mostrar al empleado que realizó más ventas
				Escribir "El empleado ", empleadoMaxVentas, " realizó el mayor número de ventas con un total de ", maxVentas, " ventas.";
            2:
            3: Escribir "Volviendo al Menú Principal";
            OtroCaso:
                Escribir "Opción no válida. Intente de nuevo.";   
        FinSegun
		
    Hasta Que opcionMenuEstadisticas = 3;  
FinSubProceso

