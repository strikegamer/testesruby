class Login
	attr_writer :email_account
	attr_reader :email_account

	def initialize(email_account, password)
		if email_account.chomp.size == 0
			puts "Conta de email nao pode ser vazio"
			return false
		end
		if password.chomp.size == 0
			puts "Senha nao pode estar vazia"
			return false
		end
		
		@email_account = email_account
		@password = password.crypt("planobe")
	end
	def check_password(password_typed)
		if @password == password_typed.crypt("planobe")
			return true
		else
			return false
		end
	end
	def update_password(old_password, new_password, reply_password)
		if @password == old_password.crypt("planobe")
			if new_password == reply_password
				@password = new_password.crypt("planobe")
				puts "Senha alterada com sucesso!"
				return true
			else 
				puts "nova senha nao confere com senha redigitada"
				return false
			end
		else
			puts "Senha atual nao confere!"
			return false
		end
	end
end
