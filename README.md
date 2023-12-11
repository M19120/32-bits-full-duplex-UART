![image](https://github.com/M19120/32-bits-full-duplex-UART/assets/77844733/7c17adf3-e495-4205-931c-944b1c5c64b4)

Comunicación serial UART full duplex para enviar y transmitir 32 bits mediante protocolo RS232, se divide mediante bloques, esto para mejorar el procesamiento paralelo.
Dentro del bloque RX, se realizaron algunas modificaciones para realizar la recepción de 32 bits, al manejar comunicación UART, solamente podemos recibir y transmitir tramas de 8 bits. 

EL divisor de reloj está formado por un contador, el cuál se ajustó para una frecuencia de 80 kHz, teniendo el reloj de la placa de 50 MHz. Dentro de ambos bloques de recepción y transmisión
se tiene un contador para los bits por segundo(bps) o baudios. El cual al llegar a la cuenta necesaria reinicia los bloques, todo se hace por medio de máquinas de estado finito (FSM).

    generic( tick_bit: integer := 267);-- baudrate = CLK_FPGA/Baudrate deseado
En el bloque RX, se tiene una muestra a medio bit, esto se logra mediante la división de los bps entre dos. 

      generic(
  		bit_time : integer := 267;
  			half_bit_time : integer := 133); --half_bit_time = CLK_FPGA/Baudrate/2
La salida se muestra en displays de 7 segmentos en formato Hexadecimal, se multiplexan a una frecuencia de modo que engañamos al ojo humano para poder observar los numeros. 
Dentro del bloque -com_32bit- se tiene una memoria de solo lectura(ROM) en la cual se van guardando los 8 bits que se transmitirán a la terminal. 

![image](https://github.com/M19120/32-bits-full-duplex-UART/assets/77844733/10f96647-3bda-420b-8df0-90d041844ace)

En la imagen de arriba se observan los elementos lógicos utilizados dentro del reporte de área. 

![image](https://github.com/M19120/32-bits-full-duplex-UART/assets/77844733/d6b74d90-8383-4d9e-91f5-a4b9bfc4cb86)

También se observan los reportes de tiempo, el peor de los casos, es para un tiempo de 5.070 ns, no podremos trabajar nuestro circuito a una velocidad mayor. 
 
