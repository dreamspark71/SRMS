package com.yubaraj.srms.web.action;

import com.yubaraj.srms.web.DTO.SubjectDTO;
import com.yubaraj.srms.web.dbManagers.DatabaseManager;
import com.yubaraj.srms.web.dbManagers.Manager;
import com.yubaraj.srms.web.entities.ApplicationUser;
import com.yubaraj.srms.web.entities.Subject;
import com.yubaraj.srms.web.utilities.ActionUtils;
import com.yubaraj.srms.web.utilities.SessionUtils;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Yuba Raj Kalathoki
 */
@WebServlet(name = "EditSubjectAction", urlPatterns = {"/editSubjectAction"})
public class EditSubjectAction extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Long id = new Long(request.getParameter("id"));
        
        System.out.println("id----" + id);
        
        ApplicationUser applicationUser = SessionUtils.getApplicationUserFromSession(request);
        Manager manager = new DatabaseManager(applicationUser);
        
        SubjectDTO subjectDto = new SubjectDTO();
        
//        try {
//            BeanUtils.populate(subjectDto, request.getParameterMap());
//        } catch (IllegalAccessException ex) {
//            Logger.getLogger(EditStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (InvocationTargetException ex) {
//            Logger.getLogger(EditStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
        
        Subject subject = manager.getSubjectById(id);
        subjectDto.setId(subject.getId());
        subjectDto.setCourseName(subject.getCourseName());
        subjectDto.setFullMarks(subject.getFullMarks());
        subjectDto.setPassMarks(subject.getPassMarks());
        subjectDto.setSubjectName(subject.getSubjectName());
        
        request.setAttribute("subjectDto", subjectDto);
        ActionUtils.sendRequest(request, response, "editSubject.jsp");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}