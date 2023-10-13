## CHALLENGE 1 ##

# Descrição(PT):

# Para esse desafio, considere que você foi contratado por uma empresa bancária para auxiliar
# nas implementações e melhorias do sistema empresarial. Em uma análise inicial, foi identificado
# pela equipe financeira a necessidade de desenvolver uma solução que permita ao cliente equilibrar
# seu saldo bancário. Dessa forma, o programa deve solicitar uma entrada que representa o saldo
# atual do funcionário, e após, seja informado o valor de duas transações, sendo elas: um depósito
# e um saque. O programa deve atualizar o saldo com base nas transações e exibir o saldo final.
# A sua solução pode ser simples, o importante é treinar o conteúdo aprendido no módulo.


# Description(EN):

# For this initial challenge, consider that you were hired by a banking company to assist in the
# implementations and improvements of the business system. In an initial analysis, the financial
# team identified the need to develop a solution that allows the customer to balance their bank
# balance. Therefore, the program must request an entry that represents the employee's current
# balance, and then inform the value of two transactions, namely: a deposit and a withdrawal.
# The program should update the balance based on the transactions and display the ending balance.
# Your solution can be simple, the important thing is to train the content learned in the module.

from colorama import Fore, init

init(autoreset=True)

input(Fore.YELLOW + "Hi! Welcome to the program that will help you calculate your bank balance.\
\nLet's start?\nPlease press any key to continue:")

current_balance = input("Enter your current balance, please:")
while not current_balance.isdigit():
	current_balance = input(Fore.RED + "Your current balance should be a non-negative \
						number!\nTry again:")
current_balance = float(current_balance)

deposit_amount = input(Fore.YELLOW + "Now, enter the deposit amount:")
while not deposit_amount.isdigit():
	deposit_amount = input(Fore.RED + "Your deposit amount should be a non-negative \
						number!\nTry again:")
deposit_amount = float(deposit_amount)

withdrawal_amount = input(Fore.YELLOW + "Finally, enter the withdrawal amount:")
while not withdrawal_amount.isdigit():
	withdrawal_amount = input(Fore.RED + "Your withdrawal amount should be a non-negative \
						number!\nTry again:")
withdrawal_amount = float(withdrawal_amount)


updated_balance = float(current_balance + deposit_amount - withdrawal_amount)

if updated_balance <= 0:
	print(Fore.RED + "Current account balance: ", Fore.RED + "%.2f" % updated_balance)
else:
	print(Fore.GREEN + "Current account balance: ", Fore.GREEN + "%.2f" % updated_balance)
