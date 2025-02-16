SNAKEASM=./src/Bootloader.asm		#Definindo variavel SNAKEASM
SNAKEIMG=./build/Bootloader.img		#Definindo variavel SNAKEIMG
SNAKEBIN=./build/Bootloader.bin		#Definindo variavel SNAKEBIN

make_img:
	nasm $(SNAKEASM) -f bin -o $(SNAKEBIN)			#Criando o binario
	dd if=$(SNAKEBIN) of=$(SNAKEIMG) conv=notrunc	#Convertendo binario em img
	rm $(SNAKEBIN)									#Removendo ./build/Bootloader.bin para liberar espaco