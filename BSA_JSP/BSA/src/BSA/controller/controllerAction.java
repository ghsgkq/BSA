package BSA.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.action.CommandAction;

public class controllerAction extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	//명령어와 명령어 처리 클래스를 쌍으로 저장해두는 MAP
	private Map<String, Object> commandMap = new HashMap<String, Object>();
	
	/*
	 * 명령어와 처리클래스가 매핑되어 있는
	 * properties파일(CommandPro.properties)을 읽어
	 * Map객체인 commandMap에 저장한다.
	 * 
	 */
	
	//web.xml에서 propertyConfig에 해당하는 init-param의 값을 읽어온다.
	public void init(ServletConfig config) throws ServletException{
		String props = config.getInitParameter("propertyConfig");
		
		//명령어와 커리클래스의 매핑 정보를 저장할 Properties객체 생성
		Properties pr = new Properties();
		FileInputStream f = null;
		String path = config.getServletContext().getRealPath("/WEB-INF");
		try {
			f = new FileInputStream(new File(path,props));
			
			//Command.properties파일의 정보를 Properties객체에 저장
			pr.load(f);
		}catch(IOException e) {
			throw new ServletException(e);
		}finally {
			if(f!=null) try { f.close();}catch(IOException e) {}
		}
		//Iterator 객체사용
		Iterator<Object> keyIter = pr.keySet().iterator();
		
		while(keyIter.hasNext()) {
			String command = (String)keyIter.next();
			String ClassName = pr.getProperty(command);
			try {
				//가져온 문자열을 클래스로 만듬
				Class<?> commandClass = Class.forName(ClassName);
				
				//만들어진 해당 클래스 객체 생성
				Object commandInstance = commandClass.newInstance();
				
				//생성된 객체를 commandMap에 저장
				commandMap.put(command, commandInstance);
			}catch(ClassNotFoundException e) {
				throw new ServletException(e);
			}catch(InstantiationException e) {
				throw new ServletException(e);
			}catch(IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		requestPro(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		requestPro(req, resp);
	}
	
	private void requestPro(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		String view = null;
		CommandAction com = null;
		try {
			String command = req.getRequestURI();
			if(command.indexOf(req.getContextPath()) == 0) {
				command = command.substring(req.getContextPath().length());
			}
			com = (CommandAction)commandMap.get(command);
			view = com.requestPro(req, resp);
			
		}catch(Throwable e) {
			throw new ServletException(e);
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher(view);
		dispatcher.forward(req, resp);
	}
	
}
