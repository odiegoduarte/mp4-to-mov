<br><br>

<p align="center">
  <img width="860" height="" src="assets/mp4-para-mov.png">
</p>

<br>

<h4 align="center">Shell script que converte vídeos MP4 para MOV em lotes. </h4>

<br>

<p>Para o shell script funcionar será necessário ter o FFmpeg instalado em seu sistema.<br>
Para alterar as opções de exportação basta modificar de copy para prores ou qualquer outra configuração.</p>

<br>

Exemplo:

~~~javascript
ffmpeg -i "$vid" -acodec pcm_s16le -vcodec copy  "${noext// /_}.mov"
                                            
                                            ├── prores
                                            └── prores -profile:v 0
                                                │ 
                                                │       
ffmpeg -i "$vid" -acodec pcm_s16le -vcodec prores -profile:v 0  "${noext// /_}.mov"

~~~                                        

<br><br>

#### Aquivos e pastas contidos no repositorio

Nome do Shell | Descrição
:------ | :------
assets | Imagens do arquivo README.md
mp4-para-mov-copy.sh | Usado parâmetro copy
mp4-para-mov-prores.sh | Usado parâmetro prores
mp4-para-mov-prores-profile-0.sh | Usado parâmetro -vcodec prores -profile:v 0 
mp4-para-mov-xvid.sh | Usado parâmetro -vcodec libxvid -q:v 1
mp4-para-mov-dnxhd.sh | Usado parâmetro -vcodec dnxhd
avi-para-mov.sh | Usado parâmetro .avi para -vcodec prores
<br><br><br>

### Referências

- [FFMpeg](https://ffmpeg.org/ffmpeg.html)
- [FFMpeg Video Options](https://ffmpeg.org/ffmpeg.html#Video-Options)
- [Eevnos Linux YT](https://www.youtube.com/watch?v=IHf0mUZVw-g)
- [Operações básicas de gestão de pacotes.](https://www.debian.org/doc/manuals/debian-reference/ch02.pt.html#_basic_package_management_operations)
- [Ubuntu Manpage apt command-line interface.](https://manpages.ubuntu.com/manpages/focal/man8/apt.8.html)
- [Ubuntu Beginners/BashScripting](https://help.ubuntu.com/community/Beginners/BashScripting)
- [Introdução à programação Shell](http://www.faqs.org/docs/air/tsshell.html)
- [Programando em shell script](http://www.devin.com.br/shell_script/)

<br><br><br>