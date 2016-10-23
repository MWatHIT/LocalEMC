# Basic build components
## the basic GNU build and archive tools:
- gcc, g++, gmake, gnu tar, gunzip, bunzip2 and patch

## System Python
- Version5 require Python 2.7

## System Libraries
- libssl: libssl is the portion of OpenSSL which supports TLS ( SSL and TLS Protocols ), and depends on libcrypto.This is a C api. To use it you need to include (at least) openssl/ssl.h and to link your program with libssl library.
- libz: 提供压缩函数
- libjpeg： JPEG编解码
- readline： 命令行交互
- libxml2/libxslt： XML和Xpath相关库函数
- build-essential (gcc/make tools)
- python-dev
- pillow： （PIL fork）图片处理
### Optional Libraries
- poppler-utils (PDFs)
- wv (office docs)
