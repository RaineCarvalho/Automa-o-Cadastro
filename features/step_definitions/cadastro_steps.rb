Dado("que o usuário acesse a página de informações básicas do Cadastro") do
  visit "cadastro/basic-information"
end

Quando("começar o Cadastro") do
  #informações básicas
  find("#full_name").set(Faker::Name.name)
  find("#cpf_cnpj").set(CPF.generate)
  find("#phone_number").set("#{"11"}#{"9"}#{Faker::Number.number(digits: 8)}")
  find("#email_address").set(Faker::Internet.email)
  find("#hash_person").set "123456"
  find("#begin").click
  #escolha assessor
  find("#advisor_choose").click
  find("#advisor_name").click
  sleep 2
  find("#advisor_name").double_click
  first(".mat-option").click
  find("#next").click
  #informações pessoais
  fill_in "Data de nascimento *", with: "21031980"
  find("#md-radio-1").click
  find("#personal_nationality").click
  first(".mat-option").click
  fill_in "Estado *", with: "SP"
  find("#personal_birth_city").set "SÃO PA"
  find("#persoanl_education_level").click
  first(".mat-option").click
  find("#personal_marital_status").click
  first(".mat-option").click
  find("#personal_name_mother").set(Faker::Name.name)
  find("#next").click
  find("#previous").click
  find("#next").click
  #documento de identificação
  first(".mat-radio-outer-circle").click
  find("#identification_register_number").set(Faker::Number.number(digits: 9))
  find("#identification_register_issuing_state").set "SÃO"
  find("#identification_register_issuing_body").click
  first(".mat-option").click
  find("#identificaton_register_issue_date").click
  fill_in "Data de emissão *", with: "01012015"
  find("#next").click
  #Endereço
  find("#postal_code").set "02976140"
  find("#address_no_number").click
  find("#next").click
  #nformações fincanceiras e profissionais
  find("#professonal_occupation").click
  first(".mat-option").click
  find("#professional_company_name").set(Faker::Company.name)
  find("#professional_mensal_income").set "1000,00"
  find("#next").click
  #Dados bancários
  find("#bank_name").click
  first(".mat-option").click
  find("#bank_agency").set(Faker::Number.number(digits: 4))
  find("#bank_account").set(Faker::Number.number(digits: 5))
  find("#bank_digit").set(Faker::Number.number(digits: 1))
  find("#bank_account_type").click
  first(".mat-option").click
  find("#next").click
  #Declarações
  find("#next").click
  #Termos
  find("#terms_accepted").click
  find("#next").click
  # Perfil do Investidor - Questionário
  first(".mat-radio-outer-circle").click
  page.all(".mat-radio-outer-circle")[3].click
  page.all(".mat-radio-outer-circle")[6].click
  page.all(".mat-radio-outer-circle")[9].click
  find("#investor_answers_select-0").click
  first(".option_description.mat-option").click
  find("#investor_answers_select-1").click
  find("#md-option-1329").click
  find("#investor_answers_select-2").click
  find("#md-option-1333").click
  find("#investor_answers_select-3").click
  find("#md-option-1338").click
  find("#investor_answers_select_option-0").click
  find("#md-option-1357").click
  find("#investor_answers_select_option-1").click
  find("#md-option-1361").click
  find("#investor_answers_select_option-2").click
  find("#md-option-1365").click
  find("#investor_answers_select_option-3").click
  find("#md-option-1369").click
  find("#next").click
  find(".mat-button-wrapper").click
  find(".button-style-yellow.finish-button.changing-button").click
  find(".row.full-width").click
  byebug
end

Então("o usuario devera estar cadastrado no sistema") do
  pending # Write code here that turns the phrase above into concrete actions
end
