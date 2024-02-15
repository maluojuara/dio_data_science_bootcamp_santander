## CHALLENGE 2 ##

# Descrição(PT):

# Após uma análise cuidadosa realizada pela equipe de desenvolvimento de uma empresa bancária, 
# foi identificado a necessidade de uma nova funcionalidade para otimizar os processos e melhorias 
# da experiência dos usuários. Agora, sua tarefa é implementar uma solução que organize em ordem 
# alfabética uma lista de ativos que será informada pelos usuários. Os ativos são representados 
# por strings que representam seus tipos, como por exemplo: Reservas de liquidez, Ativos intangiveis 
# e dentre outros. A primeira entrada consiste em um número inteiro que representa a  quantidade de 
# ativos que o usuário possui. Em seguida, o usuário deverá  informar, em linhas separadas, os tipos 
# (strings) dos respectivos ativos.


# Description(EN):

# After a careful analysis carried out by the development team of a banking company, the need for a new 
# functionality was identified to optimize processes and improve the user experience. Now, your task is 
# to implement a solution that alphabetizes a list of assets that will be reported by users. Assets are 
# represented by strings that represent their types, such as: Liquidity reserves, Intangible assets 
# and others. The first input consists of an integer that represents the amount of assets the user owns. 
# Next, the user must enter, on separate lines, the types (strings) of the respective assets.


amount = input("Hello! Welcome to our program. To start, please input the amount of assets you own.\
\nIt must be a number: ")

while not amount.isdigit():
	amount = input("You need to input a number! Please, try again: ")
amount = int(amount)

assets = []

for i in range(amount):
    asset = input("Enter your asset name, please: ")
    assets.append(asset)

assets = sorted(assets)

print("Those are your alphabetic sorted assets:", ", ".join(assets))
