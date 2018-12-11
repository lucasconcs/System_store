/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.web;

import javax.inject.Named;
import javax.enterprise.context.RequestScoped;


@Named(value = "jsfTelaPrincipal")
@RequestScoped
public class JsfTelaPrincipal {

    public JsfTelaPrincipal() {

    }

     public String redirectEstoque(){
        return "estoque.xhtml?faces-redirect=true";
    }
    
    public String redirectFornecedor(){
        return "fornecedor.xhtml?faces-redirect=true";
    }
    

}
