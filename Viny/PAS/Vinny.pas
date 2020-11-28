program Vinny_puh;

Function ReadPosition(person,k :String) :integer;
var
	position :integer;
begin
	Write('Координата ',k,' ',person,' :');
	Readln(position);
	ReadPosition := position
end;
var
	viHomeX, viHomeY :integer;
	pyHomeX, pyHomeY :integer;
	ravineX, ravineY, ravineRadius :Integer;
begin 
	viHomeX := ReadPosition('дома Винни','X');
	viHomeY := ReadPosition('дома Винни','Y');
	pyHomeX := ReadPosition('дома Пяточка','X');
	pyHomeY := ReadPosition('дома Пяточка','Y');
	ravineX := ReadPosition('Оврага','X');
	ravineY := ReadPosition('Оврага','Y');

	Write('Радиус Оврага:');
	readln(ravineRadius);

end.
