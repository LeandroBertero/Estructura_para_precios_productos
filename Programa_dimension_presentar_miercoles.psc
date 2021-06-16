Proceso productos_lista
	
	definir producto como caracter;
	definir precio como real;
	dimension producto[3];
	dimension precio[3];
	definir contador como entero;
	definir clave_acceso como entero;

	escribir "Bienvenido - A continuación ingrese clave para acceder:";
	escribir "";
	escribir "Ingrese clave";
	leer clave_acceso;
	
	escribir "La clave ingresada es", " " , clave_acceso;
	si clave_acceso <> 1234 entonces
		Repetir
			escribir " clave incorrecta - Ingrese nuevamente";
			leer clave_acceso;
		Hasta Que clave_acceso = 1234;
		Borrar Pantalla;
		escribir "La clave", " " , clave_acceso, " ", "es correcta";
		escribir "Presione una tecla";
		esperar tecla;
	SiNo
		escribir " ##### La clave", " " , clave_acceso, " ", "es correcta ##### ";
		escribir "";
		escribir "Presione una tecla para iniciar";
		esperar tecla;
	FinSi
	
	Borrar Pantalla;
	
	escribir "Bienvenido al programa de carga de productos ";
	escribir "";
	escribir "Puede cargar sus productos con sus precios y tener la lista detallada al final de los mismos";
	escribir "";
	escribir "Presione una tecla para comenzar";
	esperar tecla;
	
	Para contador <- 0 Hasta 2 Con Paso 1 Hacer
		
		Borrar Pantalla;
		
		escribir "Ingrese productos", " " , contador + 1;
		leer producto[contador];
	FinPara
	
	Borrar Pantalla;
	
	escribir "Lista de productos cargados";
	escribir "";
	
	Para contador <- 0 Hasta 2 Con Paso 1 Hacer
		escribir contador + 1, " == " , producto[contador];
	FinPara
	
	escribir "";
	escribir "Fin de carga de productos, presione una tecla para cargar los precios";
	
	esperar tecla;
	Borrar Pantalla;
	
	Para contador <- 0 Hasta 2 Con Paso 1 Hacer
		
		Borrar Pantalla;
		
		escribir "Ingrese precios", " == " , contador + 1;
		leer precio[contador];
	FinPara
	
	escribir "";
	
	escribir "Fin de carga de Precios, presione una tecla para ver lista detallada";
	
	esperar tecla;
	Borrar Pantalla;
	
	Escribir "";
	
	Para contador <- 0 Hasta 2 Con Paso 1 Hacer
		
		escribir contador + 1, " precio producto " ,precio[contador] ;
		
	FinPara
	
	escribir "";
	escribir "Presione una tecla para salir";
	
	esperar tecla;
	
FinProceso
