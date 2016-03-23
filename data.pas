Program Datas ;

type vetor1 = array[1..3] of integer;
var
	componente, casa: vetor1;
	separador: char;
	n: integer;


function bissexto(ano: integer):boolean;
begin
	if (ano mod 4 = 0) and (ano mod 100 <> 0) or (ano mod 400 = 0) then
		bissexto:=true
	else
		bissexto:=false;
end;


function verifica(dia, mes, ano: integer):boolean;
var
	ok: boolean;
begin
	ok:= false;
	if (mes = 1) or (mes = 3) or (mes = 5) or (mes = 7) or (mes = 8) or (mes = 10) or (mes = 12) then
	begin
		if (dia >= 1) and (dia <= 31) then
			ok:=true;
	end
	else
	if (mes = 4) or (mes = 6) or (mes = 9) or (mes = 11) then
	begin
		if (dia >= 1) and (dia <= 30) then
			ok:= true;
	end
	else
	if mes = 2 then
	begin
		if bissexto(ano)= false then
			if (dia >= 1) and (dia <= 28) then
				ok:= true;
	end
		else
		begin
			if bissexto(ano)= true then
				if (dia >= 1) and (dia <= 29) then
					ok:= true;
		end;
	verifica:= ok
end;

procedure formato(opcao: integer);
begin
	if opcao = 1 then
	begin
		writeln ('Você selecionou a opção britânica');
		separador:= '/';
		casa[1]:= componente[1];
		casa[2]:= componente[2];
		casa[3]:= componente[3];
	end;
	if opcao = 2 then
	begin
		writeln('Você selecionou a opção americana');
		separador:= '/';
		casa[1]:= componente[2];
		casa[2]:= componente[1];
		casa[3]:= componente[3];
		writeln (casa[1], separador, casa[2], separador, casa[3]);
	end;
	if opcao = 3 then
	begin
		writeln('Você selecionou a opção italiana');
		separador:= '-';
		casa[1]:= componente[1];
		casa[2]:= componente[2];
		casa[3]:= componente[3];
	end;
	if opcao = 4 then
	begin
		writeln('Você selecionou a opção germânico');
		separador:= '.';
		casa[1]:= componente[1];
		casa[2]:= componente[2];
		casa[3]:= componente[3];
	end;
	if opcao = 5 then
	begin
		writeln('Você selecionou a opção ANSI');
		separador:= '.';
		casa[1]:= componente[3];
		casa[2]:= componente[2];
		casa[3]:= componente[1];
		writeln (casa[1], separador, casa[2], separador, casa[3]);
	end;
end;

procedure amanha (dia, mes, ano: integer);
begin
	if (mes=1) or (mes=3) or (mes=5) or (mes=7) or (mes=8)or (mes=10) or (mes=12) then
	begin	
		if (dia >= 1) and ( dia <= 31) then
			if dia <> 31 then
				dia:= dia + 1
			else
			begin
				dia:= 1;
				mes:= mes + 1
			end
		else
		begin
			dia:= 1;
			if mes <> 12 then
				mes:= mes + 1					
			else
			begin
				dia:= 1;
				mes:= 1;
				ano:= ano + 1;
			end;
		end;
	end				
	else
	begin
		if (mes=4) or (mes=6) or (mes=9) or ( mes=11) then
		begin
			if(dia >= 1) and (dia <= 30) then
				if dia <> 30 then
					dia:= dia + 1
				else
				begin
					dia:= 1;
					mes:= mes + 1
				end
		end
		else
		begin
			if (mes=2) and bissexto (ano)= true then
				if(dia >= 1) and (dia <= 29) then
					if dia <> 29 then
						dia:= dia + 1
					else
					begin
						dia:= 1;
						mes:= mes + 1
					end
			else
			if (mes=2) and bissexto (ano)= false then
				if (dia >= 1) and (dia <= 28) then
					if dia <> 28 then
						dia:= dia + 1
					else
					begin
						dia:= 1;
						mes:= mes + 1;
					end;
		end;
	end;
		if (n=1) or (n=3) or (n=4) then
			writeln('Dia seguinte: ', dia, separador, mes, separador, ano);
		if n=2 then
			writeln('Dia seguinte: ', mes, separador, dia, separador, ano);
		if n=5 then
			writeln('Dia seguinte: ', ano, separador, mes, separador, dia);
end;	
	
	
procedure hoje ( dia, mes, ano: integer);
begin
	if (n=1) or (n=3) or (n=4) then
			writeln('Dia digitado: ', dia, separador, mes, separador, ano);
		if n=2 then
			writeln('Dia digitado: ', mes, separador, dia, separador, ano);
		if n=5 then
			writeln('Dia digitado: ', ano, separador, mes, separador, dia);
end;
	
	
procedure ontem ( dia, mes, ano: integer);
begin
	if (mes=1) or (mes=2) or (mes=4) or (mes=6) or (mes=8) or (mes=9) or (mes=11) then
	begin
		if dia > 1 then
			dia:= dia-1
		else
			if mes <>1 then
			begin	
				if dia=1 then
					dia:=31;
			end
			else
			begin	
				dia:= 31;
				mes:=12;
				ano:= ano-1;
			end;
	end
	else
	begin
		if (mes=5) or (mes=7) or (mes=10) or (mes=12)  then
		begin
			if dia >1 then 
			begin
				dia:= dia-1;
			end
			else
			begin
				dia:=30;
				mes:= mes-1;
			end;
		end
		else
			if bissexto(ano)=true then
			begin
			if dia >1 then
					dia:= dia-1
				else
				begin
					dia:=29;
					mes:=2;
				end;
			end
			else
			begin
				dia:=28;
				mes:=2;
			end;			
		
	end;
		if (n=1) or (n=3) or (n=4) then
			writeln('Dia anterior: ', dia, separador, mes, separador, ano);
		if n=2 then
			writeln('Dia anterior: ', mes, separador, dia, separador, ano);
		if n=5 then
			writeln('Dia anterior: ', ano, separador, mes, separador, dia);
end;

var
 	ano, mes, dia, opcao: integer;
 	pad: string;
Begin
	writeln ('O formato padrão é o britânico (DD/MM/AAAA). Deseja mudar o formato? [sim/nao]');
	readln (pad);
	if pad= 'nao' then
	begin
		writeln ('Digite uma data para saber o dia anterior e o posterior: ');
		readln(componente[1], componente[2], componente[3]);
		n:= 1;
		formato(n);
		if verifica(casa[1], casa[2], casa[3])=true then
		begin 
			hoje(casa[1], casa[2], casa[3]); 
			amanha(casa[1], casa[2], casa[3]);
			ontem(casa[1], casa[2], casa[3]);
			writeln ('A data é válida');
		end
		else
			writeln ('A data é inválida');
	end;
	if pad= 'sim' then
	begin
		writeln('Digite 1: manter no formato britanico(DD/MM/AAAA)');
		writeln('Digite 2: mudar para formato americano(MM/DD/AAAA)');
		writeln('Digite 3: mudar para formato italiano(DD-MM-AAAA)');
		writeln('Difite 4: mudar para formato germânico(DD.MM.AAAA)');
		writeln('Digite 5: mudar para formato ANSI(AAAA.MM.DD)');
		readln (n);
		writeln ('Digite uma data para saber o dia anterior e o posterior: ');
		readln(componente[1], componente[2], componente[3]);
		formato(n);
		if verifica(casa[1], casa[2], casa[3])=true then
		begin
			hoje(casa[1], casa[2], casa[3]); 
			amanha(casa[1], casa[2], casa[3]);
			ontem(casa[1], casa[2], casa[3]);
			writeln ('A data é válida');
		end	
		else
			writeln ('A data é inválida');
	end;
 End.
