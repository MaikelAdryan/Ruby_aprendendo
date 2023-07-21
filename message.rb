class Message
  def initialize informado, 
      quem_informou, tabela,
      linha, horario, sentido,
      carro, tipo_ocor, 
      local_ou_atraso, ocorrencia

    @informado = informado
    @quem_informou = quem_informou
    @tabela = tabela
    @linha = linha
    @horario = horario
    @sentido = sentido
    @carro = carro.to_s
    @tipo_ocorrencia = tipo_ocor
    @local_ou_atraso = local_ou_atraso
    @ocorrencia = ocorrencia
    text_end = ""
    new_carro = nil
  end

  def message_whatz
    text_end = "*CCO INFORMA:*\n"
    if @informado == true
      text_end = text_end + "Conforme informado ao CCO pelo "
    else 
      text_end = text_end + "Conforme contato feito pelo CCO ao "
    end
      
    text_end = text_end + "largador da "

 		if @quem_informou == 4
      text_end = text_end + "Navegantes\n"
    elsif @quem_informou == 3
      text_end = text_end + "Nortran\n"
    elsif @quem_informou == 1
      text_end = text_end + "Sopal\n"
    else 
      text_end = text_end + "fiscal " + @quem_informou +"\n"
    end
    
    text_end = text_end + "- " + @tabela + "\n"#carro #{@carro}\n"
    text_end = text_end + "- #{@linha} das #{@horario} #{@sentido}\n"

    text_end = text_end + "- Viagem "

    if @tipo_ocorrencia == "interrompida"
      text_end = text_end + "interrompida na #{@local_ou_atraso}\n"
    elsif @tipo_ocorrencia == "atraso"
      text_end = text_end + "realizada com #{@local_ou_atraso} minutos de atraso\n"
    elsif @tipo_ocorrencia == "afrente"
      text_end = text_end + "realizada a partir da #{@local_ou_atraso}\n"
    end

    text_end = text_end + "- Motivo: devido a "

    if @ocorrencia == "congestionamento"
      text_end = text_end + "congestionamento"
    elsif @ocorrencia == "apd"
      text_end = text_end + "problemas no apd do #{@carro}"
    else
      text_end = text_end + ""
    end
    
    
      
  end
end


message = Message.new false, #informado
3, #empresa ou fiscal "" -> nome fiscal
"652/013", #tabela
"654", #linha
"14:20", #horario
"BC",#sentido
6414,
"atraso", #ocorrencia
"8", #local ou tempo de atraso
"apd" #ocorrencia


puts message.message_whatz

# CCO INFORMA:
# Conforme contato feito pelo CCO ao largador Navegantes
# - 704/009
# - 704 das 19:10 BC 
# - Viagem realizada com 17 minutos de atraso 
# - Motivo: devido ao carro 6140 ter apresentado pane elétrico, trocado pelo carro 6162