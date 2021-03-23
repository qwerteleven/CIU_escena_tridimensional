# CIU_escena_tridimensional
 
```

Componer una escena con objetos tridimensionales que incluya texturas, luces y movimiento
de cámara.

```

![](./CIU_escena_tridimensional/animation.gif)

```
Autor Leopoldo lopez reveron 
Escuela de ingeniería informática
Universidad de las palmas de Gran Canaria

```
  
# Trabajo realizado

```
  Se ha desarrollado un simulador de un espacio donde se permite el movimiento del observador por una escena,
  en la cual se han tenido en cuenta las siguientes características:
  
    - Control de la camara
    - Disposicon de la figuras de la escena
    - Luces ambiente y focalizadas
    - Textura de los objetos
    - Etiqueta informativa de la escena


  El sistema representado se corresponde con la representacion de una estructura cristalina
    
 ```   
 
# Dependencias necesarias

```
 Para el control de la camara se ha utilizado queasycam, 
 para su instalacion en processing solo es necesario importa librerias y instalarla,
 pues esta dentro de las que proporciona processing.
 
```

# Controles

```

El rator permite realizar rotaciones del pundo de vista (Frustrum)

eje x  teclas -a   +d

eje y  teclas -s   +w

eje z  teclas -q   +e 

```
 
    
# Decisiones adoptadas para la solución propuesta

```
  
  Se ha optado por usar una libreria para el control de la camara
 
  La disposicion de la estructura se presupone perfecta, es decir sin deformacion
  
  Se ha redifinido la escala de tamaño para poder representar los electrones
  
  Se ve una instancia estatica de la estructura cristalina
  

```

# Referencias y herramientas utilizadas

  - ## Libreria camara
  - * [queasycam](https://github.com/jrc03c/queasycam)
  
  - ## Funcionamiento Processing
  - * [Documentacion dibujar texto](https://processing.org/reference/text_.html)
  
  - ## Definición de especificación del proyecto
  - [Guion practica](https://ncvt-aep.ulpgc.es/cv/ulpgctp21/pluginfile.php/412240/mod_resource/content/37/CIU_Pr_cticas.pdf)



