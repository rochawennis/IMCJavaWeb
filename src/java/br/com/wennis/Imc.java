/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.wennis;

/**
 *
 * @author WENNIS
 */
public class Imc {

    float peso, altura, imc;

    public float calculaIMC() {
        imc = peso / (altura * altura);
        return imc;

    }

    public String classificaIMC(float imc) {
        String classific = "";
        classific = imc <= 18.5 ? "Abaixo do peso"
                : imc <= 24.9 ? "Peso normal"
                        : imc <= 29.9 ? "Sobrepeso"
                                : imc <= 34.9 ? "Obesidade Grau I"
                                        : imc <= 39.9 ? "Obesidade Grau II"
                                                : "Obesidade Morbida";

        return classific;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }

    public float getImc() {
        return imc;
    }

    public void setImc(float imc) {
        this.imc = imc;
    }

}
