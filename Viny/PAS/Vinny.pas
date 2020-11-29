program Vinny_puh;

Function ReadInteger(text :String) :integer;
var
	integerVar :integer;
begin
	Write(text);
	Readln(integerVar);
	ReadInteger := integerVar
end;
var
	viHomeX, viHomeY :integer;
	pyHomeX, pyHomeY :integer;
	ravineX, ravineY, ravineRadius :Integer;
begin 
	viHomeX := ReadInteger('Введи координату X дома Винни:');
	viHomeY := ReadInteger('Введи координату Y дома Винни:');
	pyHomeX := ReadInteger('Введи координату X дома Пяточка:');
	pyHomeY := ReadInteger('Введи координату Y дома Пяточка:');
	ravineX := ReadInteger('Введи координату X Оврага:');
	ravineY := ReadInteger('Введи координату Y Оврага:');
	ravineRadius := ReadInteger('Введи радиус Оврага:');

end.
