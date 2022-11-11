from random import choice
import string

tamanho_da_senha = int(input("Quantos dígitos você quer na sua senha? ")) #Enter the number of digits
caracteres = string.hexdigits + string.punctuation + string.ascii_uppercase + string.ascii_lowercase
senha_segura = ''
for i in range(tamanho_da_senha):
  senha_segura += choice(caracteres)

print("A senha é: ",senha_segura)