{Попытка сделать односвязный список
Программа читает их файла числа из файла, а затем выводит их на экран}

program List_1;

type
	itemPtr = ^item;
	item = record
		data: integer;
		next, previous: itemPtr;
	end;

const
	fileName = 'numbers.bin';

var
	number: itemPtr;
	first, last: pointer;
	list :file of integer;
	x: integer;

begin
	assign(list, fileName);
	reset(list);

	while not Eof(list) do
  	begin




  		{Проверка}
		{read(list,x);
		writeln(x);}
	end;

	close(list);
end.