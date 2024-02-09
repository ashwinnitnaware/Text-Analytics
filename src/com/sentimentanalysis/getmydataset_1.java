package com.sentimentanalysis;

import java.util.Iterator;

import com.sentimentanalysis.DocumentData.SentimentWordAttr;
import com.util.Configuration;
import com.util.SpellCheckHandler;
import java.sql.*;


import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import java.io.File;

public class GetMyDataset {
        
    /**
     * Creates a new instance of <code>DSAXMLDataSet</code>.
     */
    public GetMyDataset() {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
         try {

    File fXmlFile = new File("G:\\Senti Raw Files\\electronics\\Unlabeled2.xml");
    DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
    DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
    
    Document doc = dBuilder.parse(fXmlFile);
    doc.getDocumentElement().normalize();

    System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
            
        
    NodeList nList = doc.getElementsByTagName("review");
            
    System.out.println("----------------------------" + nList.getLength());

    for (int temp = 0; temp < nList.getLength(); temp++) {

        
        Node nNode = nList.item(temp);
                
        System.out.println("\nCurrent Element :" + nNode.getNodeName());
                
        if (nNode.getNodeType() == Node.ELEMENT_NODE) {

            Element eElement = (Element) nNode;

    
            System.out.println("product Name : " + eElement.getElementsByTagName("product_name").item(0).getTextContent());
            System.out.println("Review Text : " + eElement.getElementsByTagName("review_text").item(0).getTextContent());
                
            
            }
    }
    
    
   } 
        catch (Exception e) {
    e.printStackTrace();
    }
  }

   
}