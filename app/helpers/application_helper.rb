module ApplicationHelper
	html =""
	def pegar_sexo(sex)
		if sex == 'M'
			html = "Masculino"
		elsif sex =='F' 
			html = "Feminino"
		end

		html
	end
end
