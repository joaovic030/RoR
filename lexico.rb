# - identificadores (padrão descrito no slide 06)
# - palavra reservada: if
# - comentários (padrão descrito no slide 11)
#                        - operador de atribuição: =
#                            - operadores aritméticos:  +, -, *, /
# - parêntes: (  )
# - chaves: { }
# - operadores relacionais (padrão descrito no slide 12)
# - números inteiros e de ponto flutuante (padrão descrito no slide 13)
#
# if (a9 < b)              /
# * operacao relacional *
# /
# {
#     soma = 4.9 + 0.5     // atribuicao
#     i = i * 1
#  }
# E a saída deve ser uma lista contendo o token (cadeia, classificação)
# if,palavra reservada
# (, abre parênteses
# a9, identificador
# <, operador relacional
# b, identificador
# ), fecha parêntese
# /
# * operacao relacional *
# /, comentário
# {, abre chaves
# soma, identificador
# =, atribuição
# 4.9, número real
# +, operador aritimético
# 0.5, número real
# //atribuicao, comentário
# i, identificador
# =, atribuição
# i, identificador
# *, operador aritmético
# 1, número inteiro
# }, fecha chaves

class Lexico
  def arquivo(file_path)
    output = []
    file = File.open(file_path)
    file.map { |v| v.chomp("\n"); puts v }
    # file.each do |f|
    #   output.push(f)
    #   puts f
    # end
    file.close
    puts "--------------------------#################-----------------##############"
    puts file
  end
end

out = Lexico.new
out.arquivo("/home/joaorocha/Documents/UFMT/COMPILADORES1/lex.txt")
