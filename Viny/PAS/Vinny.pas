program Vinny_puh;

Function ReadInteger(text :String) :integer;
var
	integerVar :integer;
begin
	Write(text);
	Readln(integerVar);
	ReadInteger := integerVar
end;

Function СalculationDistans(pointOneX,pointOneY,pointTwoX,pointTwoY :integer) :real;
begin
	СalculationDistans := sqrt((pointTwoX - pointOneX) * (pointTwoX - pointOneX) + (pointTwoY - pointOneY) * (pointTwoY - pointOneY))
end;


var
	viHomeX, viHomeY :integer;
	pyHomeX, pyHomeY :integer;
	ravineX, ravineY, ravineRadius :Integer;
	viHomeRavineDistance, pyHomeRavineDistance :real;
begin 
	viHomeX := ReadInteger('Введи координату X дома Винни:');
	viHomeY := ReadInteger('Введи координату Y дома Винни:');
	pyHomeX := ReadInteger('Введи координату X дома Пяточка:');
	pyHomeY := ReadInteger('Введи координату Y дома Пяточка:');
	ravineX := ReadInteger('Введи координату X Оврага:');
	ravineY := ReadInteger('Введи координату Y Оврага:');
	ravineRadius := ReadInteger('Введи радиус Оврага:');

	viHomeRavineDistance := СalculationDistans(viHomeX,viHomeY,ravineX,ravineY);
	writeln('Растояние от дома Винни до центра оврага:', viHomeRavineDistance);

	pyHomeRavineDistance := СalculationDistans(viHomeX,viHomeY,ravineX,ravineY);
	writeln('Растояние от дома Пяточка до центра оврага:', pyHomeRavineDistance);
end.
