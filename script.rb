#!/usr/bin/env ruby

require 'appium_lib'

#1- Saber quais caps queremos na nossa sessao (appium.txt)
caps_path = File.join(File.dirname(__FILE__), 'appium.txt')
caps = Appium.load_appium_txt  file: caps_path, verbose: true

#2- Criar um cliente e usar as caps
Appium::Driver.new caps, true

#3- Iniciar a sessao 
$driver.start_driver

#Estando na tela Intro
$driver.wait_true(5){ $driver.exists {$driver.find_element(:id,'action_bar_container')}}

# Acao
button = $driver.find_element(:id,'cadastrar')
button.click

# (quero ir para|estando) na tela cadastrar
$driver.wait_true(5){ $driver.exists {$driver.find_element(:id,'content')}}

# quero preencher o modelo/marca
modelo = $driver.find_element(:id,'modelo')
modelo.send_keys("Nissan March")
$driver.back

# quero preencher o ano
ano = $driver.find_element(:id,'ano')
ano.send_keys("2017")
$driver.back

# quero preencher a placa
placa = $driver.find_element(:id,'placa')
placa.send_keys("ABC1234")
$driver.back

# quero preencher a kilometragem
km = $driver.find_element(:id,'km')
km.send_keys("18.000")
$driver.back

# quero preencher o valor
valor = $driver.find_element(:id,'valor')
valor.send_keys("28.000,00")
$driver.back

# quero cadastrar - cadastrar
buttonCadastrar = $driver.find_element(:id,'cadastrar')
buttonCadastrar.click

#4- Fechar a sessao
$driver.driver_quit