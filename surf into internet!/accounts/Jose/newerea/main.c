#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "navegador.h"

int main() {
    char url[256];
    printf("Bienvenido a Surf Into The Internet! (SITI!)\n");

    while (1) {
        printf("Ingresa una URL (o 'salir' para cerrar): ");
        scanf("%s", url);

        if (strcmp(url, "salir") == 0) {
            break;
        }

        cargarPagina(url);
    }

    return 0;
}
