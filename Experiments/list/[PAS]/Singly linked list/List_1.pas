{Попытка сделать односвязный список
Программа читает их файла числа из файла, а затем выводит их на экран в обратном порядке}

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
	first, tmp: itemPtr;
	list :file of integer;
	x: integer;

begin
	assign(list, fileName);
	reset(list);

	first := nil;
	tmp := nil;

	while not Eof(list) do
  	begin
  		read(list,x);
  		write('[', x, '] ');

  		new(tmp);
  		tmp^.data := x;
  		tmp^.next := first;
  		first := tmp;
	end;

	writeln();

	while first <> nil do
	begin
		write('[', first^.data, '] ');
		first := first^.next;
	end;
	close(list);
	readln();
end.