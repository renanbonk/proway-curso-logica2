/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.mavenproject1;

import javax.swing.JOptionPane;

/**
 *
 * @author 75220
 */
public class Mavenproject1 {

    public static void main(String[] args) {
        System.out.println("Hello World!");

        // JOptionPane.showMessageDialog é ultilizado para apresentar mensagem
        JOptionPane.showMessageDialog(null, "Olá mundo");

        // String é ultilizado para armazenar texto
        // JOptionPane.showMessageDialog é ultilizado para solicitar uma informção
        String nome = JOptionPane.showInputDialog("Digite o seu nome");

        // Integer.parseInt é um convensor de String(texto) para int(inteiro)
        int idade = Integer.parseInt(JOptionPane.showInputDialog("Digite a idade"));

        // double é ultilizado para numeros reais
        double peso = Double.parseDouble(JOptionPane.showInputDialog("Digite a Peso"));
        double altura = Double.parseDouble(JOptionPane.showInputDialog("Digite a altura"));
        double imc = peso / (altura * altura);
        String status = "";
        if (imc < 18.5) {
            status = "Abaixo do peso";
        } else if (imc < 25) {
            status = "Peso normal";
        } else {
            status = "Sobrepeso";
        }
        JOptionPane.showMessageDialog(null, "nome:" + nome
                + "\nIdade:" + idade
                + "\nPeso:" + peso
                + "\nAltura:" + altura
                + "\nImc:" + imc
                + "\nStatus:" + status);
    }

}
