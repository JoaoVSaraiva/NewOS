# 🚀 NewOS

![GitHub stars](https://img.shields.io/github/stars/JoaoVSaraiva/NewOS?style=social)
![GitHub forks](https://img.shields.io/github/forks/JoaoVSaraiva/NewOS?style=social)
![GitHub issues](https://img.shields.io/github/issues/JoaoVSaraiva/NewOS)
![GitHub license](https://img.shields.io/github/license/JoaoVSaraiva/NewOS)
![GitHub last commit](https://img.shields.io/github/last-commit/JoaoVSaraiva/NewOS)

**NewOS** é um projeto de sistema operacional moderno, confiável e de alto desempenho, desenvolvido para fins educacionais. Este projeto é open-source e construído com paixão pela inovação e excelência técnica.

---

## ✨ Funcionalidades

- **Leve e Rápido:** Otimizado para desempenho máximo, mesmo em hardware modesto.
- **Seguro:** Arquitetura robusta com foco em segurança e privacidade.
- **Modular:** Facilmente extensível com módulos e drivers personalizados.
- **Compatível:** Suporte a uma ampla variedade de hardware e dispositivos.
- **Open Source:** Código aberto para transparência e colaboração da comunidade.

---

## 🛠️ Como Usar

### Pré-requisitos
- Um ambiente de desenvolvimento configurado (compilador, linker, etc.), preferencialmente em um ambiente de desenvolvimento Ubuntu, caso no Windows, utilize WSL.
- Conhecimento básico de sistemas operacionais e programação em baixo nível (NASM).

### Explicação
- Use o Makefile para automatizar os comandos shell
- A maioria das linhas do código são comentadas para melhor compreensão
- Os arquivos *run.sh* e *debug.sh* são comandos automáticos do shell para debugar ou rodar o SO.
- O *debug.sh*, ao abrir o debugger, utilize o comando `target remote :1234` seguido por `layout regs`