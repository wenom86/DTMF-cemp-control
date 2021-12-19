
#include <avr/pgmspace.h> // добавление библиотек
#include <TMRpcm.h>
#include <SPI.h>
#include <DHT.h>

#define DHTPIN 6
#define DHTTYPE DHT22
DHT dht(DHTPIN, DHTTYPE);

TMRpcm wav;               // инициализация TMRpcm и присвоение переменной wav

#include <SD.h>             
#define SD_ChipSelectPin 4  // контакт CS шилда сд-карты на 4 пине ардуино уно

static const char wav_0[] PROGMEM = "0.wav";
static const char wav_1[] PROGMEM = "1.wav";
static const char wav_2[] PROGMEM = "2.wav";
static const char wav_3[] PROGMEM = "3.wav";
static const char wav_4[] PROGMEM = "4.wav";
static const char wav_5[] PROGMEM = "5.wav";
static const char wav_6[] PROGMEM = "6.wav";
static const char wav_7[] PROGMEM = "7.wav";
static const char wav_8[] PROGMEM = "8.wav";
static const char wav_9[] PROGMEM = "9.wav";
static const char wav_10[] PROGMEM = "10.wav";
static const char wav_11[] PROGMEM = "11.wav";
static const char wav_12[] PROGMEM = "12.wav";
static const char wav_13[] PROGMEM = "13.wav";
static const char wav_14[] PROGMEM = "14.wav";
static const char wav_15[] PROGMEM = "15.wav";
static const char wav_16[] PROGMEM = "16.wav";
static const char wav_17[] PROGMEM = "17.wav";
static const char wav_18[] PROGMEM = "18.wav";
static const char wav_19[] PROGMEM = "19.wav";
static const char wav_20[] PROGMEM = "20.wav";
static const char wav_21[] PROGMEM = "21.wav";
static const char wav_22[] PROGMEM = "22.wav";
static const char wav_23[] PROGMEM = "23.wav";
static const char wav_24[] PROGMEM = "24.wav";
static const char wav_25[] PROGMEM = "25.wav";
static const char wav_26[] PROGMEM = "26.wav";
static const char wav_27[] PROGMEM = "27.wav";
static const char wav_28[] PROGMEM = "28.wav";
static const char wav_29[] PROGMEM = "29.wav";
static const char wav_30[] PROGMEM = "30.wav";
static const char wav_31[] PROGMEM = "31.wav";
static const char wav_32[] PROGMEM = "32.wav";
static const char wav_33[] PROGMEM = "33.wav";
static const char wav_34[] PROGMEM = "34.wav";
static const char wav_35[] PROGMEM = "35.wav";
static const char wav_36[] PROGMEM = "36.wav";
static const char wav_37[] PROGMEM = "37.wav";
static const char wav_38[] PROGMEM = "38.wav";
static const char wav_39[] PROGMEM = "39.wav";
static const char wav_40[] PROGMEM = "40.wav";
static const char wav_41[] PROGMEM = "41.wav";
static const char wav_42[] PROGMEM = "42.wav";
static const char wav_43[] PROGMEM = "43.wav";
static const char wav_44[] PROGMEM = "44.wav";
static const char wav_45[] PROGMEM = "45.wav";
static const char wav_46[] PROGMEM = "46.wav";
static const char wav_47[] PROGMEM = "47.wav";
static const char wav_48[] PROGMEM = "48.wav";
static const char wav_49[] PROGMEM = "49.wav";
static const char wav_50[] PROGMEM = "50.wav";
static const char wav_51[] PROGMEM = "51.wav";
static const char wav_52[] PROGMEM = "52.wav";
static const char wav_53[] PROGMEM = "53.wav";
static const char wav_54[] PROGMEM = "54.wav";
static const char wav_55[] PROGMEM = "55.wav";
static const char wav_56[] PROGMEM = "56.wav";
static const char wav_57[] PROGMEM = "57.wav";
static const char wav_58[] PROGMEM = "58.wav";
static const char wav_59[] PROGMEM = "59.wav";
static const char wav_60[] PROGMEM = "60.wav";
static const char wav_61[] PROGMEM = "61.wav";
static const char wav_62[] PROGMEM = "62.wav";
static const char wav_63[] PROGMEM = "63.wav";
static const char wav_64[] PROGMEM = "64.wav";
static const char wav_65[] PROGMEM = "65.wav";
static const char wav_66[] PROGMEM = "66.wav";
static const char wav_67[] PROGMEM = "67.wav";
static const char wav_68[] PROGMEM = "68.wav";
static const char wav_69[] PROGMEM = "69.wav";
static const char wav_70[] PROGMEM = "70.wav";
static const char wav_71[] PROGMEM = "71.wav";
static const char wav_72[] PROGMEM = "72.wav";
static const char wav_73[] PROGMEM = "73.wav";
static const char wav_74[] PROGMEM = "74.wav";
static const char wav_75[] PROGMEM = "75.wav";
static const char wav_76[] PROGMEM = "76.wav";
static const char wav_77[] PROGMEM = "77.wav";
static const char wav_78[] PROGMEM = "78.wav";
static const char wav_79[] PROGMEM = "79.wav";
static const char wav_80[] PROGMEM = "80.wav";
static const char wav_81[] PROGMEM = "81.wav";
static const char wav_82[] PROGMEM = "82.wav";
static const char wav_83[] PROGMEM = "83.wav";
static const char wav_84[] PROGMEM = "84.wav";
static const char wav_85[] PROGMEM = "85.wav";
static const char wav_86[] PROGMEM = "86.wav";
static const char wav_87[] PROGMEM = "87.wav";
static const char wav_88[] PROGMEM = "88.wav";
static const char wav_89[] PROGMEM = "89.wav";
static const char wav_90[] PROGMEM = "90.wav";
static const char wav_91[] PROGMEM = "91.wav";
static const char wav_92[] PROGMEM = "92.wav";
static const char wav_93[] PROGMEM = "93.wav";
static const char wav_94[] PROGMEM = "94.wav";
static const char wav_95[] PROGMEM = "95.wav";
static const char wav_96[] PROGMEM = "96.wav";
static const char wav_97[] PROGMEM = "97.wav";
static const char wav_98[] PROGMEM = "98.wav";
static const char wav_99[] PROGMEM = "99.wav";
static const char wav_100[] PROGMEM = "100.wav";

int x=0;

const char *wav_table[] = 
{
  wav_0,wav_1,wav_2,wav_3,wav_4,wav_5,wav_6,wav_7,wav_8,wav_9,wav_10,wav_11,wav_12,wav_13,wav_14,wav_15,wav_16,wav_17,wav_18,wav_19,wav_20,
  wav_21,wav_22,wav_23,wav_24,wav_25,wav_26,wav_27,wav_28,wav_29,wav_30,wav_31,wav_32,wav_33,wav_34,wav_35,wav_36,wav_37,wav_38,wav_39,wav_40,
  wav_41,wav_42,wav_43,wav_44,wav_45,wav_46,wav_47,wav_48,wav_49,wav_50,wav_51,wav_52,wav_53,wav_54,wav_55,wav_56,wav_57,wav_58,wav_59,wav_60,
  wav_61,wav_62,wav_63,wav_64,wav_65,wav_66,wav_67,wav_68,wav_69,wav_70,wav_71,wav_72,wav_73,wav_74,wav_75,wav_76,wav_77,wav_78,wav_79,wav_80,
  wav_81,wav_82,wav_83,wav_84,wav_85,wav_86,wav_87,wav_88,wav_89,wav_90,wav_91,wav_92,wav_93,wav_94,wav_95,wav_96,wav_97,wav_98,wav_99,wav_100
};

void setup(){
  
  Serial.begin(115200);
  dht.begin();
  
  wav.speakerPin = 9;        //5,6,11,46 для Mega, 9 для Uno, Nano.
  //Complimentary Output or Dual Speakers:
  //pinMode(10,OUTPUT); Pin pairs: 9,10.  Mega: 5-2,6-7,11-12,46-45 

  Serial.println("DHTxx test!");
  
  if (!SD.begin(SD_ChipSelectPin)) { 
    Serial.println("SD fail");  
    return;
  }else{   Serial.println("SD ok"); }



wav.play("pass.wav");        //звуковой файл "hello.wav" будет воспроизводиться при включении ардуино или её перезагрузке
}


void loop(){
  
  if(Serial.available()){ char wavFile[33];    
    switch(Serial.read()){
    case 'd': strcpy_P(wavFile, wav_table[x]); wav.play(wavFile); x++; break;    
    case 'P': strcpy_P(wavFile, wav_table[1]); wav.play(wavFile); break;
    case 't': strcpy_P(wavFile, wav_table[2]); wav.play(wavFile); break;
    }
  }

float h = dht.readHumidity();
float t = dht.readTemperature();
if (isnan(t) || isnan(h)) { Serial.println("Failed to read from DHT"); }
else {
Serial.print("Humidity: ");
Serial.print(h);
Serial.print(" %\t");
Serial.print("Temperature: ");
Serial.print(t);
Serial.println(" *C");
}

}
  
