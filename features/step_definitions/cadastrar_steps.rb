Dado("que estou/estive na tela de início") do                                        
  wait_true(5){ exists {find_element(:id,'action_bar_container')}}
end                                                                           
                                                                          
Quando("tocar/toquei no botão cadastrar") do                                         
  button = find_element(:id,'cadastrar')
  button.click 
end                                                                           
                                                                          
Então("devo ver a tela de Cadastro") do                                       
  wait_true(5){ exists { find_element(:id,'content')}}
end    

Dado("que estou na tela Cadastrar") do
  wait_true(5){ exists { find_element(:id,'action_bar_container')}}
end

Então("possuo os seguintes dados para cadastro:") do |table|
  @cadastro = table.rows_hash
end

Quando("faço o cadastro de um novo carro") do
  modelo = $driver.find_element(:id,'modelo')
  modelo.send_keys(@cadastro['modelo'])

  ano = $driver.find_element(:id,'ano')
  ano.send_keys(@cadastro['ano'])

  placa = $driver.find_element(:id,'placa')
  placa.send_keys(@cadastro['placa'])

  km = $driver.find_element(:id,'km')
  km.send_keys(@cadastro['km'])

  valor = $driver.find_element(:id,'valor')
  valor.send_keys(@cadastro['valor'])

  cadastrar = find_element(:id,'cadastrar')
  cadastrar.click 
end