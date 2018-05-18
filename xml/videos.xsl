<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet"/>
                <link rel="stylesheet" href="../css/menu.css"/>
                <style>
                    * {
                        box-sizing: border-box;
                        font-family: 'Kaushan Script', cursive;
                    }
                    body{
                        background-color: black;
                        margin:10px 0px 0px 0px;
                    }
                    div.videos{
                        background-color: rgba(32, 32, 32,0.63);
                        width: 50%;
                        left:20%;
                        position:relative;
                        font-size: 22px;
                        color: rgb(204, 255, 0);
                    }
                    p{
                        color:white;
                        width:85%;
                    }
                </style>
            </head>
            <body>
            <header>
                    <div class="logo">
                        <img src="../img/LogoSinFondo.png" alt=""/>
                    </div>
        
                    <nav>
        
                        <ul class="menu">
                            <li>
                                <a href="../index.html">HOME</a>
                            </li>
                            <li class="submenu">
                                <a href="../html/Cursos.html">CURSOS</a>
                                <ul class="contenidosubmenu">
                                    <li>
                                        <a href="../html/Musica.html">MUSICA</a>
                                    </li>
                                    <li>
                                        <a href="../html/Musicologia.html">OTROS</a>
                                    </li>
                                    <li>
                                        <a href="../xml/xml.xml">VIDEOS</a>
                                    </li>

                                </ul>
                            </li>
                            <li>
                                <a href="../html/formulario.html">REGISTRO</a>
                            </li>
                        </ul>
        
                    </nav>
                </header>
                <xsl:for-each select="cursos/curso">
                    <div class="videos">
                    <iframe width="100%" height="250" frameborder="0">
                    <xsl:attribute name="src">
                            <xsl:value-of select="video/@ruta"/>
                        </xsl:attribute>
                    </iframe>
                        <xsl:value-of select="nombre"/>
                        <p>
                            <xsl:value-of select="descripcion"/>
                        </p>
                    </div>


                    <hr></hr>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>