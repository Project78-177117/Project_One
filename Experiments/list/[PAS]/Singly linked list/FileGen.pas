{Программа генерирует файл с заданным количеством чисел типа Intager.}
program FileGen;

const
	fileName = 'numbers.bin';
Var
	list :file of integer;
	numberX, amount, step :integer;


begin
	write('Введи количество чисел:');
	readln(amount);

	assign(list, fileName);
	rewrite(list);
	
	for step := 1 to amount do
	begin
		numberX := random(200) - 100;
		write(list, numberX);
	end;

	close(list);
	write('В файл ', fileName, ' внесено ', amount, ' чисел от -100 до 100');
end.