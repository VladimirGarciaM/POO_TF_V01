class ValidaCodigoVisita < StandardError
    def message
        "El código de visita ya existe : "
    end 
end 