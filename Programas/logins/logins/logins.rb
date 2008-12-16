require "classes/classeLogin.rb"

$logins={}
system("cls")

def menu
	system("cls")	
	puts "1.Cadastra novo login"
	puts "2.Pesquisa um login ja cadastrado"
	puts "3.Apaga um login existente"
	puts "4.Valida senha de um login"
	puts "5.Alterar a senha de um login"
	puts "6.Lista Logins cadastrados"
	puts "0.Sair"
	puts ""
	puts "Escolha uma das opções a seguir"
	puts ""
	
	opcao=gets
	if opcao.chomp == "1" 
		add_new_login
	end
	if opcao.chomp == "2" 
		search_login
	end
	if opcao.chomp == "3" 
		delete_login
	end
	if opcao.chomp == "4" 
		verify_password
	end
	if opcao.chomp == "6" 
		list_logins
	end
	
	if opcao.chomp < "0" or opcao.chomp > "6"
		menu
	end
end

def add_new_login	
	puts "Entre com o email do login"
	email_account=gets
	puts "Forneca uma senha"
	password_typed=gets
	puts "Redigite a senha"
	password_retyped=gets
	
	if (password_typed == password_retyped)
		if user=Login.new(email_account, password_typed)
			$logins[email_account]=user
		else
			puts "Erro ao adicionar um login" 
			puts ""
			add_new_login
		end
	else
		puts "A conferencia da Senha nao esta valida"
		puts ""
		add_new_login
	end
	menu
end

def search_login
	puts "Entre com o email do login para pesquisar"
	email_account=gets
	if email_account.chomp.size == 0
		menu
	end
	
	user=$logins.select{|x,y| x == email_account}
	if user.size == 0
		puts "Login nao localizado!"
	else
		puts "Email localizado: " + email_account
	end
	puts ""
	search_login
end

def delete_login
	puts "Entre com o email do login para apagar"
	email_account=gets
	if email_account.chomp.size == 0
		menu
	end
	
	if $logins.delete(email_account)
		puts "Usuario apagado: " + email_account
	else
		puts "Login nao localizado!"
	end
	puts ""
	delete_login
end	

def verify_password
	puts "Entre com o email do login"
	email_account=gets
	if email_account.chomp.size == 0
		menu
	end
	
	puts "Forneca uma senha"
	password_typed=gets
	if password_typed.chomp.size == 0
		menu
	end
	
	user=$logins.select{|x,y| x == email_account}
	if user.size == 0
		puts "Login nao localizado!"
	else
		user.check_password(password_typed)
	end
	puts "" 
	verify_password
end

def list_logins
	$logins.each {|x,y| puts x}
	opcao=gets
	menu
end	

menu
