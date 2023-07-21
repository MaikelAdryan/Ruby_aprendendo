class Message
  def initialize informado, 
      quem_informou, tabela,
      linha, horario, sentido,
      carro, tipo_ocor, 
      local_ou_atraso, ocorrencia,
      new_carro = ""

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
    @new_carro =  new_carro.to_s
    text_end = ""
   
  end

  def whatz
    text_end = "*CCO INFORMA:*\n"
    case @informado
    when true
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
    
    text_end = text_end + "- " + @tabela + " carro #{@carro}\n"#carro #{@carro}\n"
    text_end = text_end + "- #{@linha} das #{@horario} #{@sentido}\n"

    text_end = text_end + "- Viagem "

    if @tipo_ocorrencia == "int"
      text_end = text_end + "interrompida na #{@local_ou_atraso}\n"
    elsif @tipo_ocorrencia == "atr"
      text_end = text_end + "realizada com #{@local_ou_atraso} minutos de atraso\n"
    elsif @tipo_ocorrencia == "afr"
      text_end = text_end + "realizada a partir da "+@local_ou_atraso+"\n"
    end

    text_end = text_end + "- Motivo: devido a "

    # if @ocorrencia == "congestionamento"
    #   text_end = text_end + "congestionamento, "
    # elsif @ocorrencia == "pneu"
    #   text_end = text_end + "pneu furado do carro #{carro}"
    # else
      
    # end
    case @ocorrencia
    when "congestionamento"
      text_end = text_end + "congestionamento"
    when "tempo"
      text_end = text_end + "tempo insuficiente"
    when "pneu"
      text_end = text_end + "pneu furado do #{carro}"
    when "apd"
      text_end = text_end + "problemas no #{@ocorrencia} do carro #{@carro}"
    when "motor"
      text_end = text_end + "problemas no #{@ocorrencia} do carro #{@carro}"
    when "suspensão"
      text_end = text_end + "problemas na #{@ocorrencia} do carro #{@carro}"
    when "embreagem"
      text_end = text_end + "problemas na #{@ocorrencia} do carro #{@carro}"
    when "mot"
      text_end = text_end + "problemas com o motorista"
    else
        text_end = text_end + ""
    end
    
    if @new_carro != "" then
      text_end = text_end + ", trocado pelo carro #{@new_carro}"
    else
      text_end
    end
  end
end


message = Message.new true, #informado?
3, #empresa ou fiscal "" -> nome fiscal
"659/012", #tabela
"861", #linha
"15:33", #horario
"BC",#sentido
"6418",#carro
"atr", #ocorrencia
"Av. Baltazar de Oliveira Garcia, após a Av. Sertório", #local ou tempo de atraso
"mot" #ocorrencia
 #trocado pelo?


puts message.whatz

# CCO INFORMA:
# Conforme contato feito pelo CCO ao largador Navegantes
# - 704/009
# - 704 das 19:10 BC 
# - Viagem realizada com 17 minutos de atraso 
# - Motivo: devido ao carro 6140 ter apresentado pane elétrico, trocado pelo carro 6162