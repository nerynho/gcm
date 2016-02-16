Program Calculadora ;
uses crt;
var
	operador,a,b,c:longint;
	resultado,delta,raiz,x1,x2:real;

//Multiplicação
function multiplicacao(a,b:integer):real;
Begin
	multiplicacao:=a*b;
End;

//Soma
function adicao(a,b:integer): real;
Begin
     adicao:=a+b;
End;

//Divisão
function divisao(a:integer; b:integer):real;
begin
	  divisao:=a/b;
end;

//Subtração
function subtracao(a,b:integer):real;
Begin
	subtracao:=a-b;
end;

//Calcula Raizes da equação
Procedure CalculaRaizes(a,b,c:real);
Begin 
delta:= (b*b)-4*a*c;
If (delta)<0 then begin
                      Write(' possui delta igual a ',delta:0:1,', que eh um numero menor que 0. Entao a equacao nao possui raiz ou raizes');
                      readkey;
                  end
else if (delta)=0
		then begin
				raiz:=((-(b))/2*a);
				writeln(' possui delta igual a ',delta:0:1,', e por isso tem uma unica raiz que eh: ', raiz:0:1);
				readkey;
			end
	else begin
			x1:= (-(b) + sqrt(delta))/2*a;
            x2:= (-(b) - sqrt(delta))/2*a;
			writeln(' possui as raizes: X1= ',x1:0:1,', e X2= ', x2:0:1);
            readkey;
		end;
end;

Begin
  writeln(' --------------------------------------------------------------------------------------------');
  writeln(' |                                           MENU                                           |');
  writeln(' --------------------------------------------------------------------------------------------');
  writeln(' |                                                                                          |');
  writeln(' | * 1 ADICAO                                                                               |');
  writeln(' | * 2 SUBTRACAO                                                                            |');
  writeln(' | * 3 MULTIPLICACAO                                                                        |');
  writeln(' | * 4 DIVISAO                                                                              |');
  writeln(' | * 5 EQUACAO DO SEGUNDO GRAU                                                              |');
  writeln(' | * 0 SAIR                                                                                 |');
  writeln(' |                                                                                          |');
  writeln(' ____________________________________________________________________________________________');
  writeln;
  write(' Digite uma opcao do MENU: ');
  read(operador);
  
  while operador <>0 do
	begin			
		case operador of
			1: begin
					write('Informe o primeiro valor: ');
					read(a);
					write('Informe o segundo valor: ');
					read(b);
					resultado := adicao(a,b);
					write(resultado:0:1);
				end;
    
			2: begin
					write('Informe o primeiro valor: ');
					read(a);
					write('Informe o segundo valor: ');
					read(b);
					resultado := subtracao(a,b);
					write(resultado:0:1);
				end;
    
			3: begin
					write('Informe o primeiro valor: ');
					read(a);
					write('Informe o segundo valor: ');
					read(b);
					resultado := multiplicacao(a,b);
					write(resultado:0:1);
				end;
  
			4: begin
					write('Informe o primeiro valor: ');
					read(a);
					write('Informe o segundo valor: ');
					read(b);
					resultado:= divisao(a,b);
					write(resultado:0:1);
					readkey;
				end;

			5: begin
					write(' Informe os valores com seus respectivos sinais');
					writeln;
					write(' Informe o valor de a: ');
					read(a);
					write(' Informe o valor de b: ');
					read(b);
					write(' Informe o valor de c: ');
					read(c);
					write(' A equacao: ',a,'x2 + ',b,'x + ',c,' = 0,');
					CalculaRaizes(a,b,c);
					readkey;
				end;
		end;
       writeln;
       writeln;
       writeln;
       writeln(' --------------------------------------------------------------------------------------------');
       writeln(' |                                           MENU                                           |');
       writeln(' --------------------------------------------------------------------------------------------');
       writeln(' |                                                                                          |');
       writeln(' | * 1 ADICAO                                                                               |');
       writeln(' | * 2 SUBTRACAO                                                                            |');
       writeln(' | * 3 MULTIPLICACAO                                                                        |');
       writeln(' | * 4 DIVISAO                                                                              |');
       writeln(' | * 5 EQUACAO DO SEGUNDO GRAU                                                              |');
       writeln(' | * 0 SAIR                                                                                 |');
       writeln(' |                                                                                          |');
       writeln(' ____________________________________________________________________________________________');
       writeln;
       write(' Digite uma opcao do MENU: ');
       read(operador);
       clrscr;
    end;
    readln;
end.
















