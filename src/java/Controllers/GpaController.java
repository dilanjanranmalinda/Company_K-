package Controllers;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "GpaController", urlPatterns = {"/GpaController"})
public class GpaController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final List<CourseResult> gpArray = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null && !action.isEmpty()) {
            if (action.equals("add")) {
                String courseCode = request.getParameter("course-code");
                int unitLoad = Integer.parseInt(request.getParameter("unit-load"));
                String grade = request.getParameter("grade");

                if (courseCode != null && !courseCode.isEmpty() && unitLoad > 0 && grade != null && !grade.isEmpty()) {
                    CourseResult result = new CourseResult(courseCode, unitLoad, grade);
                    gpArray.add(result);
                }
            } else if (action.equals("calculate")) {
                int unitLoads = 0;
                int sumOfProductOfUnitLoadsAndGrades = 0;

                for (CourseResult result : gpArray) {
                    unitLoads += result.getUnitLoad();
                    int product = result.getUnitLoad() * result.getGradeAsNumber();
                    sumOfProductOfUnitLoadsAndGrades += product;
                }

                DecimalFormat df = new DecimalFormat("0.00");
                double gpa = (double) sumOfProductOfUnitLoadsAndGrades / unitLoads;
                String formattedGPA = df.format(gpa);

                request.setAttribute("unitLoads", unitLoads);
                request.setAttribute("gpa", formattedGPA);
            } else if (action.equals("clear")) {
                gpArray.clear();
            }
        }

        request.setAttribute("gpArray", gpArray);
        request.getRequestDispatcher("gpacal.jsp").forward(request, response);
    }
}
