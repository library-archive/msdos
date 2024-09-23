#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void loadPage(const char* url) {
    printf("Cargando página: %s\n", url);
    // Aquí iría la lógica para obtener y mostrar el contenido de la URL.
    // Nota: En un entorno MS-DOS, esto puede ser bastante limitado.
}

int main() {
    char url[256];

    printf("Bienvenido a Surf Into The Internet! (SITI!)\n");
    while (1) {
        printf("Ingresa una URL (o 'salir' para cerrar): ");
        scanf("%s", url);

        if (strcmp(url, "salir") == 0) {
            break;
        }

        loadPage(url);
    }

    return 0;
}
