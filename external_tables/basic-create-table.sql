create table daniele_kono.temp_end_sem_coord (
	    
	    Logradouro VARCHAR2(4000),
	    Numero VARCHAR2(4000),
	    Complemento VARCHAR2(4000),
	    Bairro VARCHAR2(4000),
	    Cidade VARCHAR2(4000),
	    Estado VARCHAR2(4000),
	    CEP VARCHAR2(4000), 
	    Precisao_mapeamento VARCHAR2(4000),
	    Processo_Geocodificacao VARCHAR2(4000),
	    Latitude VARCHAR2(4000),
	    Longitude VARCHAR2(4000),
	    Microarea VARCHAR2(4000),
	    Microrregiao VARCHAR2(4000),
	    Mesorregiao VARCHAR2(4000),
	    Regiao_Geografica VARCHAR2(4000)
)
ORGANIZATION EXTERNAL
  (TYPE ORACLE_LOADER
	  DEFAULT DIRECTORY DIR_BACKUP
	  ACCESS PARAMETERS
	    (
		    RECORDS DELIMITED BY NEWLINE
		    SKIP 1
		    FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
		    )
		  LOCATION ('ENDERECOS_SEM_COORDENADAS.csv')
		 )
		 REJECT LIMIT UNLIMITED;

