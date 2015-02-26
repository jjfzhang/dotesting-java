package com.jjfzhang.rose.world.service;

import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.xhtmlrenderer.pdf.ITextFontResolver;
import org.xhtmlrenderer.pdf.ITextRenderer;

import com.lowagie.text.pdf.BaseFont;

public class PdfTest {

    public static void main(String[] args) throws IOException {
        String outputFile = "d:/demo_3.pdf";       
        OutputStream os = new FileOutputStream(outputFile);       
  
        try {
            ITextRenderer renderer = new ITextRenderer();
            ITextFontResolver fontResolver = renderer.getFontResolver(); 

            fontResolver.addFont("C:/Windows/fonts/simsun.ttc", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
//            fontResolver.addFont("/usr/share/fonts/TTF/ARIALUNI.TTF", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
            
//            BaseFont bfChinese = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
//            fontResolver.addFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
            StringBuffer html = new StringBuffer();       
            html.append("<!DOCTYPE HTML>");
            html.append("<html>"). 
                 append("<head>")       
                .append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />")     
                .append("<style type=\"text/css\">body {font-family: SimSun;}</style>")      
                .append("</head>")       
                .append("<body>");       
            html.append("<div>支持中文！</div>");       
            html.append("</body></html>");

            renderer.setDocumentFromString(html.toString());     
            renderer.layout();
            renderer.createPDF(os);
            os.close();
        } catch (Exception e) {
            // TODO: handle exception
        }
        System.out.println("======转换成功!");    
    }
}
