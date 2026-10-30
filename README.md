# stm32f407_framework

## Gravar com ST-LINK/V2

Instale `stlink-tools` no host com `sudo apt install stlink-tools` e conecte SWDIO, SWCLK, GND e alimentação de referência do ST-LINK/V2 à placa. Depois de compilar, execute no host:

```sh
./scripts/upload.sh
```

O script grava `build/Debug/stm32f407_framework.bin` em `0x08000000` e reinicia o microcontrolador. Use `-B build/Release` para Release. O ST-LINK/V2 (`0483:3748`) não fornece porta serial; para monitorar a USART2, conecte um adaptador USB-UART separado e use `--monitor --port /dev/ttyUSB0`. Se preferir STM32CubeProgrammer, use `--tool cube`.

Se aparecer `libusb requires write access to USB device nodes`, execute `sudo udevadm control --reload-rules`, desconecte e reconecte o ST-LINK/V2 e tente novamente. A regra `49-stlinkv2.rules` instalada por `stlink-tools` cobre o ID `0483:3748`.
