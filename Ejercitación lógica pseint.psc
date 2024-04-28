//3)Ejercitación lógica pseint
//Una empresa de reparto tiene x empleados y reparte en 5 zonas diferentes. ZONA ABCDE
//La empresa necesita un programa  que despligue un menú, que solamente salga al darle a la tercera opción.
//1) saber que empleado hizo más ventas y sobre que zona
//2) Ver las ventas de un representante ingresado por teclado
//3) salir

//test usamos una mastriz
//01234
//ABCDE

Proceso Reparto

	ingresarDatos();
	menu();
	
FinProceso

SubProceso ingresarDatos
	Definir zonas, ventaZona como cadena;
	Definir cantidadEmpleados Como Entero;
	
	
	
FinSubProceso


SubProceso menu
	Definir opcion Como Entero;
	Escribir "1) saber que empleado hizo más ventas y sobre que zona";
	Escribir "2) Ver las ventas de un representante ingresado por teclado";
	Escribir "3) salir";
	
	Segun opcion Hacer
		1:
			empleadoConMasVentas();
		2:
			mostrarVentasDeRepresentante();
		3:
			Adios();
		De Otro Modo:
			Escribir "Opcion no valida ingrese otra opcion";
	FinSegun
	
FinSubProceso
	