unit boxTone;

interface

type

SINEWAVE = packed record
	dblFrequency: Double;
	dblDataSlice: Double;
	dblAmplitudeL: Double;
dblVolumeF: Double;
end;

procedure toneGenerate(lngSampleRate: integer; intBits: byte; dblVolume: array of double; var Freq: array of Smallint; Seconds: Double; var FreqBuffer: variant);

implementation

// -------------------------------------------------------------------------------------
// ExtractByte - Extracts the high or low byte from a short (16 bit) integer.
//
// intWord     - Integer from which to extract byte.
// intByte     - Returned high or low byte.
// intPosition - |                    Word                   |
// | Byte = 3 | Byte = 2 | Byte = 1 | Byte = 0 |
// -------------------------------------------------------------------------------------
function ExtractByte(lngWord: Longint; intPosition: Smallint): byte;
var
	   lngTemp: Longint;
	   intByte: byte;
begin
	if intPosition=3 then begin
		// Byte 2
		lngTemp := lngWord;

		// Mask off byte and shift right 24 bits.
		// Mask  -> 2130706432 = &H7F000000
		// Shift -> Divide by 16777216
		lngTemp := Round((lngTemp and 2130706432)/16777216);

		// Cast back to integer.
		intByte := lngTemp;

	end else if intPosition=2 then begin
		// Byte 2
		lngTemp := lngWord;

		// Mask off byte and shift right 16 bits.
		// Mask  -> 16711680 = &HFF0000
		// Shift -> Divide by 65536
		lngTemp := Round((lngTemp and 16711680)/65536);

		// Cast back to integer.
		intByte := lngTemp;

	end else if intPosition=1 then begin
		// Byte 1
		lngTemp := lngWord;

		// Mask off high byte and shift right 8 bits.
		// Mask  -> 65290 = &HFF00
		// Shift -> Divide by 256
		lngTemp := Round((lngTemp and 65290)/256);

		// Cast back to integer.
		intByte := lngTemp;
	end else begin
		// Byte 0
		intByte := lngWord and $FF;
	end;

	result := intByte;
end;

procedure toneGenerate(lngSampleRate: integer; intBits: byte; dblVolume: array of double; var Freq: array of Smallint; Seconds: Double; var FreqBuffer: variant);
var
	  i, j: integer;
  lngLimit, lngData: longint;
  lngSamples, lngDataSize: integer;
	dblDataPtL, dblWaveTime, dblSampleTime, dblFrequency: Double;
   tmpBuf: array of byte;
   intSineCount: Smallint;
   SineWaves: array of SINEWAVE;
begin
   setLength(SineWaves, length(freq));

   for i:=0 to length(freq) - 1 do begin
	with SineWaves[i] do begin
   dblAmplitudeL := 0.25;
   dblFrequency := freq[i];
   dblVolumeF := dblVolume[i];
   end;
   end;

	intSineCount := length(SineWaves)-1;

for i:=0 to intSineCount do begin
dblWaveTime := 1 / SineWaves[i].dblFrequency;
dblSampleTime := 1 / lngSampleRate;
 SineWaves[i].dblDataSlice := (2*Pi)/(dblWaveTime/dblSampleTime);
	end;

	lngSamples := round(Seconds/dblSampleTime);
	lngDataSize :=  Round(lngSamples*(intBits/8));

	SetLength(tmpBuf, lngDataSize);

	if intBits=8 then begin
		lngLimit := 127;
	end else begin
		lngLimit := 32767;
	end;

 	for i:=0 to lngSamples-1 do begin
		if intBits=8 then begin
			// -----------------------------------------------------------------------
			// 8 Bit Data
			// -----------------------------------------------------------------------
			dblDataPtL := 0;
			for j:=0 to intSineCount do begin
				dblDataPtL := dblDataPtL + (sin(i*SineWaves[j].dblDataSlice)*SineWaves[j].dblAmplitudeL*SineWaves[j].dblVolumeF);
end;

			lngData := round(dblDataPtL*lngLimit)+lngLimit;

   			tmpBuf[i] := ExtractByte(lngData, 0);
		end else begin
			// -----------------------------------------------------------------------
			// 16 Bit Data
			// -----------------------------------------------------------------------
			dblDataPtL := 0;
			for j:=0 to intSineCount do begin
				dblDataPtL := dblDataPtL+( sin(i*SineWaves[j].dblDataSlice)*SineWaves[j].dblAmplitudeL*SineWaves[j].dblVolumeF);
			end;

			lngData := Round(dblDataPtL*lngLimit);

 			tmpbuf[2*i] :=  ExtractByte(lngData, 0);
 			tmpbuf[(2*i)+1] := ExtractByte(lngData, 1);
		end;

	end;

FreqBuffer:=tmpBuf;
end;

end.