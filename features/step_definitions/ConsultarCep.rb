# frozen_string_literal: true

#consultarCepValido

Dado('que o {string} foi inserido') do |cep|
  @cep = cep
end

Quando('a requisição for efetuada') do
  @result = Req_https.get("/#{@cep}/json/")
end

Então('as informações do endereço serão exibidas') do
  @rescep = @cep
  @Req_http = @result.parsed_response
  log(@Req_http['ibge'])
  expect(@Req_http['cep']).to eq(@rescep)
end

#consultarCepInvalido

Dado('que insira o {string}') do |CepInvalido|
  @consultarcCepInvalido = cepinvalido
end

Quando('a requisição for efetuada') do
  @resultCepInvalido = Req_http.get("/#{@CepInvalido}/json/")
end

Então('exibirá o {int}') do |response_code|
  expect(@resultCepInvalido.code).to eq(response_code)
end
