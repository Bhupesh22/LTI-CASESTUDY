package com.lti.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userController")
public class userController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public userController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String submit = request.getParameter("submit");
		String filepath = "C:\\Users\\Bhupesh\\Desktop\\JSP Course\\LTI-WEB\\src\\com\\lti\\controller\\students.csv";
		File file = new File(filepath);
		HashSet<String> hset = new HashSet<>();
		
		if(submit.equals("Insert")) {
			
			String id = request.getParameter("studentid");
			String name = request.getParameter("studentname");
			String gender = request.getParameter("gender");
			String date = request.getParameter("date");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String email = request.getParameter("email");
			String qualification = request.getParameter("qualification");
			String stream = request.getParameter("stream");
			
			if(!file.exists()) {
				
				file.createNewFile();
				FileWriter fw = new FileWriter(filepath, true);
				fw.append("Student ID");
				fw.append(",");
				fw.append("Name");
				fw.append(",");
				fw.append("Gender");
				fw.append(",");
				fw.append("Date");
				fw.append(",");
				fw.append("City");
				fw.append(",");
				fw.append("State");
				fw.append(",");
				fw.append("E-mail");
				fw.append(",");
				fw.append("Qualification");
				fw.append(",");
				fw.append("Stream");
				fw.append("\n");
				fw.flush();
				fw.close();
			
			}else {
				
				String line ="";
				try {
					
					BufferedReader br = new BufferedReader(new FileReader(filepath));
					while((line = br.readLine()) != null) {
						String[] values = line.split(",");
						hset.add(values[0]);
					}
					br.close();
					
				} catch(Exception e) {
					e.printStackTrace();
				}
				
			}
			
			if(!hset.contains(id)) {
				try{
				
					FileWriter fw = new FileWriter(filepath, true);
					fw.append(id);
					fw.append(",");
					fw.append(name);
					fw.append(",");
					fw.append(gender);
					fw.append(",");
					fw.append(date);
					fw.append(",");
					fw.append(city);
					fw.append(",");
					fw.append(state);
					fw.append(",");
					fw.append(email);
					fw.append(",");
					fw.append(qualification);
					fw.append(",");
					fw.append(stream);
					fw.append("\n");
					fw.flush();
					fw.close();
					
				}catch( Exception e) {
					e.printStackTrace();
				}
			}else {
				String error = "Student ID already exist !!";
				request.setAttribute("message", error);
			}
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}
		else if (submit.equals("Search")) {
			
			String id = request.getParameter("sid");
			String line = "";
			
			List<String> row = new ArrayList<>();
			
			try {
				BufferedReader br = new BufferedReader(new FileReader(filepath));
				while((line = br.readLine()) != null) {
					String[] values = line.split(",");
					if(values[0].equals(id)) {
						for(String f : values) {
							row.add(String.valueOf(f));
						}
					}
				}
				br.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			request.setAttribute("studentList", row);
			request.getRequestDispatcher("search-student.jsp").forward(request, response);
			
		}else if (submit.equals("Display Students")){
			
			List<List<String>> details = new ArrayList<>();
			List<String> rows = new ArrayList<>();
	
			PrintWriter out = response.getWriter();
			String line = "";
			
			try {
				BufferedReader br = new BufferedReader(new FileReader(filepath));
				while((line = br.readLine()) != null) {
					String[] values = line.split(",");
					for(String f : values) {
						rows.add(String.valueOf(f));
						out.println(rows);
					}
					details.add(new ArrayList<>(rows));
					rows.clear();
				}
				out.println(details);
				br.close();
			}catch (Exception e){
				e.printStackTrace();
			}
			
			request.setAttribute("allstudents", details);
			request.getRequestDispatcher("display-student.jsp").forward(request, response);
		}
	}

}
