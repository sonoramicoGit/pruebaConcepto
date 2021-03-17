package mx.prueba.concepto.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import mx.prueba.concepto.buro.model.Usuario;
import mx.prueba.concepto.service.UsuarioServiceI;

@RequestMapping("/principal")
@Controller
public class PruebaController {
	
	@Autowired
    MessageSource messageSource;
	UsuarioServiceI usuarioService;
	
	@Value("${titulo}") 
	String mensaje;
	
	
	
	//http://localhost:8080/prueba-concepto-buromvn/principal/prueba
    @RequestMapping(value = "/prueba")
    public ModelAndView pruebaMenu(@RequestParam(value = "page", required=false,defaultValue = "0") int miPage) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("titulo", "Spring MVC");
        mv.addObject("mensaje", "Aplicacion Web Spring MVC valor request="+miPage);
        mv.setViewName("principal.prueba");//llamada mediante tiles
        
        return mv;
    }
  
  //http://localhost:8080/prueba-concepto-buromvc/principal/frame
    @RequestMapping(value = "/frame")
    public ModelAndView frame() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("frame");
        
        return mv;
    }
  //http://localhost:8080/prueba-concepto-buromvc/principal/editaAlta
    @RequestMapping(value = "/editaAlta")
    public ModelAndView editAltaUsuario(@ModelAttribute("otrouser") Usuario usuario,HttpServletRequest req) {
    	System.out.println(usuario.getNombre());
        ModelAndView mv = new ModelAndView();
        mv.setViewName("principal.alta");
        
        return mv;
    }

    
  //http://localhost:8080/pruebaconcepto-buro/principal/alta
    @RequestMapping(value = "/alta")
    public ModelAndView altaUsuario(@ModelAttribute("usuario") Usuario usuario,HttpServletRequest request) {
    	System.out.println(usuario);
        ModelAndView mv = new ModelAndView();
        WebApplicationContext webApplicationContext =   WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
        usuarioService = (UsuarioServiceI) webApplicationContext.getBean("usuarioService");
        usuarioService.altaUsuario(usuario);
        mv.addObject("usuario",usuario);
        mv.setViewName("principal.presenta");
        
        return mv;
    }

	
    
    
}
