package autoplus.secure.controller;

import autoplus.secure.constants.Constants;
import autoplus.secure.entity.Client;
import autoplus.secure.entity.Tyres;
import autoplus.secure.entity.User;
import autoplus.secure.service.TyresService;
import autoplus.secure.service.impl.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.*;

@Controller
public class MainController {
    @Autowired
    TyresService tyresService;
    @Autowired
    EmailService sender;
    @RequestMapping(value="/", method = RequestMethod.GET)
    public String start(@RequestParam(value = "error", required = false) String error, Model model){
        Page<Tyres> tyresList=tyresService.getAllTyres(0);
        User user= new User();
        model.addAttribute("tyresList", tyresList);
        model.addAttribute("user", user);
        model.addAttribute("error", error);
        model.addAttribute("currentPage", "/pages/home.jsp");
        model.addAttribute("datadir", System.getenv("OPENSHIFT_DATA_DIR"));
        return "index";
    }
    @RequestMapping(value="/freeConsulting", method=RequestMethod.POST)
    public String requestStar(HttpServletRequest req, HttpServletResponse resp, Model model){
        String name = req.getParameter("NameFree");
        String phone = req.getParameter("PhoneFree");
        String email = req.getParameter("EmailFree");
        Client client=new Client();
        client.setEmail(email);
        client.setName(name);
        client.setPhone(phone);
        try {
            sender.sendMail(Constants.ADMIN_EMAIL, client, System.getenv("OPENSHIFT_DATA_DIR")+"/freeConsulting.html");
            model.addAttribute("status", "successFreeCons");
        } catch (IOException e) {
            model.addAttribute("status", "failToFreeCons");
        }
        return "validationMessage";
    }
    @RequestMapping(value="/pay-tyres", method=RequestMethod.POST)
    public String payTyres(HttpServletRequest req, HttpServletResponse resp, Model model){
        String name = req.getParameter("Name");
        String phone = req.getParameter("Phone");
        String email = req.getParameter("Email");
        Client client=new Client();
        client.setEmail(email);
        client.setName(name);
        client.setPhone(phone);
        Tyres tyres = tyresService.getTyresById(Integer.parseInt(req.getParameter("id")));
        try {
            sender.sendMailTyres(Constants.ADMIN_EMAIL, client, tyres, System.getenv("OPENSHIFT_DATA_DIR")+"/email-tyres.html");
            model.addAttribute("status", "successFreeCons");
        } catch (IOException e) {
            model.addAttribute("status", "failToFreeCons");
        }
        return "validationMessage";
    }
    @RequestMapping(value="ordermodal", method=RequestMethod.POST)
    public String ordermodal(HttpServletRequest req, Model model){
        EmailService emailService = new EmailService();
        HttpSession session = req.getSession();
        String name = req.getParameter("NameModal");
        String phone = req.getParameter("PhoneModal");
        String email = req.getParameter("EmailModal");
        String nameorder=req.getParameter("nameZ");
        Client client=new Client();
        client.setEmail(email);
        client.setName(name);
        client.setPhone(phone);
        try {
            sender.sendMailOrder(Constants.ADMIN_EMAIL, client, nameorder, System.getenv("OPENSHIFT_DATA_DIR")+"/order-with-name.html");
            model.addAttribute("status", "successFreeCons");
        } catch (IOException e) {
            model.addAttribute("status", "failToFreeCons");
        }
        return "validationMessage";
    }
    @RequestMapping(value="/orderBy", method=RequestMethod.POST)
    public String order(HttpServletRequest req, HttpServletResponse resp, Model model){
        String name = req.getParameter("Name");
        String phone = req.getParameter("Phone");
        String email = req.getParameter("Email");
        Client client=new Client();
        client.setEmail(email);
        client.setName(name);
        client.setPhone(phone);
        try {
            sender.sendMail(Constants.ADMIN_EMAIL, client, System.getenv("OPENSHIFT_DATA_DIR")+"/passed-test.html");
            model.addAttribute("status", "successFreeCons");
        } catch (IOException e) {
            model.addAttribute("status", "failToFreeCons");
        }
        return "validationMessage";
    }
    @RequestMapping(value="/add-content", method= RequestMethod.POST)
    public String uploadImage(@RequestParam("file") MultipartFile file, Model model, HttpServletRequest req) throws IOException {
        String root = req.getServletContext().getRealPath("/");
        Tyres tyres=new Tyres();
        System.out.println(req.getParameter("Name"));
        System.out.println(req.getParameter("Price"));
        System.out.println(req.getParameter("Name"));
        tyres.setName(req.getParameter("Name"));
        tyres.setPrice(req.getParameter("Price"));
        tyres.setSize(req.getParameter("Size"));
        tyres=tyresService.addTyres(tyres);
        File path=new File(System.getenv("OPENSHIFT_DATA_DIR")+"/tyres/"+tyres.getId());
        if (!path.exists()) {
            boolean status = path.mkdir();
        }
        model.addAttribute("status","tyresid");
        model.addAttribute("id", tyres.getId());
        String end=file.getContentType().split("/")[1];
        String status = tyresService.fileUpload(file, path+"/image."+end);
        System.out.print(status);
        tyres.setImage("/tyres/"+tyres.getId()+"/image."+end);
        tyres=tyresService.addTyres(tyres);
        System.out.print("ok");
        return "validationMessage";
    }
    @RequestMapping(value="/tyresimage", method= RequestMethod.GET)
    @ResponseBody
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filePath = request.getRequestURI();
        File file = new File(System.getenv("OPENSHIFT_DATA_DIR") + request.getParameter("image"));
        InputStream input = new FileInputStream(file);
        response.setContentLength((int) file.length());
        response.setContentType(new MimetypesFileTypeMap().getContentType(file));
        OutputStream output = response.getOutputStream();
        byte[] bytes = new byte[4096];
        int read = 0;
        while ((read = input.read(bytes, 0, 4096)) != -1) {
            output.write(bytes, 0, read);
            output.flush();
        }
        input.close();
        output.close();
    }
    private String getFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf('=') + 1).trim()
                        .replace("\"", "");
            }
        }
        return null;
    }
}
