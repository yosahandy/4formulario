/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objeto;

/**
 *
 * @author handy
 */
public class Alumno 
        {
    
    private String matricula;
    private String nombre;
    private String apellido; 
    private int cjv;
    private int dwi;
    private int ecbd;
    private double prom;
    
    public Alumno()
    {
        matricula =" ";
           nombre =" ";
         apellido =" ";
              cjv = 0;
              dwi = 0;
             ecbd = 0;
            prom = 0.0;
    }
    public Alumno(
            String matricula,
            String nombre, 
            String apellido, 
            int cjv, 
            int dwi, 
            int ecbd)
    {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellido = apellido;
        this.cjv  =  cjv;
        this.dwi  =  dwi;
        this.ecbd =  ecbd;
    }
    
    
                public String getMatricula()
                {
                    return matricula;
                }
                public String getNombre()
                {
                    return nombre;
                }
                 public String getApellido()
                {
                    return apellido;
                }
                public int getCjv()
                {
                    return cjv;
                }
                public int getDwi()
                {
                    return dwi;
                }
                public int getEcbd()
                {
                    return ecbd;
                }

    
    
    public void setMatricula(String matricula)
    {
        this.matricula = matricula;
    }
       
    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }
   
    public void setApellido(String apellido)
    {
        this.apellido = apellido;
    }
    
    public void setCjv(int cjv)
    {
        this.cjv = cjv;
    }
    
    public void setDwi(int dwi)
    {
        this.dwi = dwi;
    }
     
    public void setEcbd(int ecbd)
    {
        this.ecbd = ecbd;
    }
    
    
    
    public double Prom()
    {
        return (cjv+dwi+ecbd)/3.0;
    }
}
    

