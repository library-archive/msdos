#include <stdio.h>
#include <stdlib.h>
#include "navegador.h"

void cargarPagina(const char* url) {
    printf("Cargando la página: %s\n", url);
    
    // Simulación de carga de página
    printf("Contenido de la página '%s':\n", url);
    printf("[Este es un contenido simulado para la URL]\n\n");
}
