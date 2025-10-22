package com.sist.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.*;
import java.util.*;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		// config => web.xml
		try
		{
			URL url=this.getClass().getClassLoader().getResource(".");
			// RealPath
			File file=new File(url.toURI());
			System.out.println(file.getPath());
			// C:\webDev\webStudy\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\JSPFrontProject_4\WEB-INF\classes
			String path=file.getPath();
			path=path.replace("\\", File.separator);
			path=path.substring(0,path.lastIndexOf(File.separator));
			// WEB-INF/  WEB-INF\\
			path=path+File.separator+"config"+File.separator+"application.xml";
			System.out.println(path);
			//XML 읽기
			DocumentBuilderFactory dbf=
					DocumentBuilderFactory.newInstance();
			// => xml데이터 읽기 : 파서 
			// => 자바 == xml == 자바스크립트 (json)
			// XML / WML / VML / HDML ....
			DocumentBuilder db=dbf.newDocumentBuilder();
			// XML읽기 
			Document doc=db.parse(new File(path));
			// 문서 저장 공간 
			// root 태그 => root (XML에서는 문서형 데이터베이스:root가 테이블)
			/*
			 *   <beans> 
			 *     <bean id="aaa">Test</bean>
			 *     <bean id="aaa">Test</bean>
			 *           --------- Attribute
			 *   <beans>
			 *   
			 *       beans  : root태그 
			 *         |
			 *    ---------------
			 *    |             |
			 *   bean          bean => Element
			 *    |             |
			 *   Test           Test => TextNode 
			 */
			Element beans=doc.getDocumentElement();
			System.out.println("태그명:"+beans.getTagName());
			// 같은 이름의 태그를 모아서 반복 수행
			NodeList list=beans.getElementsByTagName("context:component-scan");
			for(int i=0;i<list.getLength();i++)
			{
				Element ccs=(Element)list.item(i);
				String pack=ccs.getAttribute("basePackage");
				System.out.println(pack);
			}
		}catch(Exception ex) {}
		
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
