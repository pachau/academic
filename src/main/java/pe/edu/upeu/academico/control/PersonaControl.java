/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.academico.control;

import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.academico.modelo.Persona;
import pe.edu.upeu.academico.servicio.PersonaServicioI;

/**
 *
 * @author LAB_SOFTWARE-DTI
 */
@Controller
public class PersonaControl {

    @Autowired
    private MessageSource messageSource;
    
    @Autowired
    PersonaServicioI personaServicioI;
    
    @RequestMapping(value = "/locate", method = RequestMethod.GET)
    public String getLocatePage(){
    return "my-locale";
    }
    
    
@RequestMapping(value = {"/" }, method = RequestMethod.GET)    
public ModelAndView inicio(){
   
    return new ModelAndView("index");
}


@RequestMapping(value = {"/alun" }, method = RequestMethod.GET)    
public ModelAndView inicioUno(Locale locale, Map<String,Object> model){
     String welcome=messageSource.getMessage("welcome.message", new Object[]{"José Raúl"}, locale);
    List<Persona> lista=personaServicioI.listarEntidad();
        for(Persona persona : lista){
                System.out.println("Nombres:"+persona.getNombre()+ ""+persona.getApellidos());
        }
        
    model.put("ListaPersona", lista);
    model.put("message", welcome);
    model.put("startMeeting", "09:10");
    
    return new ModelAndView("alumnos");
}
@RequestMapping(value = {"/cont" }, method = RequestMethod.GET)    
public ModelAndView inicioDos(){
    
    return new ModelAndView("contactenos");
}
@RequestMapping(value = {"/not" }, method = RequestMethod.GET)    
public ModelAndView inicioTres(){
    
    return new ModelAndView("noticias");
}
    
}
