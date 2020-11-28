program Vinny_puh;

Function ReadPosition(Person,K :String) :integer;
var
	Position :integer;
begin
	Write('Координата ',K,' ',Person,' :');
	Readln(Position);
	ReadPosition := Position
end;
var
	ViHomeX, ViHomeY :integer;
	PyHomeX, PyHomeY :integer;
	RavineX, RavineY, RavineRadius :Integer;
begin 
	ViHomeX := ReadPosition('дома Винни','X');
	ViHomeY := ReadPosition('дома Винни','Y');
	PyHomeX := ReadPosition('дома Пяточка','X');
	PyHomeY := ReadPosition('дома Пяточка','Y');
	RavineX := ReadPosition('Оврага','X');
	RavineY := ReadPosition('Оврага','Y');

	Write('Радиус Оврага:');
	readln(RavineRadius);

end.
