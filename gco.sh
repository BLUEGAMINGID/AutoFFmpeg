clear
sleep 2
echo "\033[31;1m\nGetting Device Info..... " 
sleep 3 

model=$(getprop ro.build.version.release 2>/dev/null)
if [ $(uname -s) = "Linux" ];  then
 echo ""
 if grep -q "Ubuntu" "/etc/lsb-release" 2>/dev/null; then
            echo "\033[1;32m [✓] Ubuntu Detected"
            sleep 5
        else
            if [ $model = "7" ] || [ $model = "8" ] || [ $model = "9" ] || [ $model = "10" ] || [ $model = "11" ] || [ $model = "12" ] || [ $model = "13" ] || [ $model = "14" ]; then
    echo "\033[1;32m [✓] Android Device Detected"
    sleep 5
    uvc='1'
 else
echo "\033[1;32m [√] Linux Detected"
sleep 5
fi
 fi
else
sleep 3
echo "\n [X] Only Android/Ubuntu Can Executed This script\n"
sleep 3
exit 1
fi

if [ "$0" = "gco.sh" ]; then
echo "\033[1;32m\n [✓] File Named gco.sh"
sleep 3
else
echo ""
  echo "[X] File Must be Named 'gco.sh'"
  sleep 3
  exit 1
fi

if [ $uvc = '1' ]; then
if [ $(pwd) = "/sdcard/AutoFFmpeg" ] || [ $(pwd) = "/sdcard/1DM" ]; then
    echo "\033[1;32m\n [✓] File Located in AutoFFmpeg"
    sleep 3
    else
    echo "\033[31;1m\n [X] File Must Be Executed in /sdcard/AutoFFmpeg "
    sleep 2
    mkdir /sdcard/AutoFFmpeg 2>/dev/null
    cp gco.sh /sdcard/AutoFFmpeg
    echo "\033[1;32m\n -------------------------------------------------------"
    echo "  Script Automatically Copied File To Folder AutoFFmpeg"
    echo "\033[1;32m -------------------------------------------------------\n\033[0m"
    sleep 5
    exit 1
  fi
fi

if [ -z "$(command -v ffmpeg)" ] || [ -z "$(command -v neofetch)" ] || [ -z "$(command -v lolcat)" ] 
then
echo "\nDevice Need To Setup!"
sleep 5
apt update && upgrade 
apt install ffmpeg 
apt install ruby -y
gem install lolcat
apt install lolcat
apt install neofetch
clear
fi


clear
A2='.ass'
neofetch
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "    CREDIT : @Dnzzxxxx"
echo "    CHANNEL : @DANZMOVIES"
echo "\033[38;1m -------------------------------------------------------"|lolcat
     echo "\033[1;32m PILIH NOMOR :"
     echo "   '(01)' HARDCODE SUBTITLE WITH x265 "
     echo "   '(02)' HARDCODE SUBTITLE WITH x264 "
     echo "   '(03)' HARDCODE WITH SPECIFIC AUDIO"
     echo "   '(04)' SRT TO ASS"
     echo "   '(05)' EXTRACT SUBTITLE"
     echo "   '(06)' COMPRESS VIDEO"
     echo "    (07) SETUP"
     echo "    (08) EXIT"
echo "NUMBER INPUT : "
read ezz

main_a() {
ffmpeg -i "${A1}"  -c:v libx265 -vtag hvc1 -color_range 1 -pix_fmt yuv420p10le  -profile:v main10 -b:v 1M -minrate 500k -maxrate 1.5M -color_primaries bt709 -color_trc bt709 -colorspace bt709 -x265-params level=4:high-tier=1:no-info=1 -filter_complex "scale=out_color_matrix=bt709,scale=${A3}:-1,ass='${A2}'" -c:a aac -preset veryslow "${A4} [EXPORTED].mkv"
}

main_b() {
ffmpeg -i "${A1}"  -c:v libx265 -vtag hvc1 -color_range 1 -pix_fmt yuv420p10le  -profile:v main10 -b:v 1M -minrate 500k -maxrate 1.5M -color_primaries bt709 -color_trc bt709 -colorspace bt709 -x265-params level=4:high-tier=1:no-info=1 -filter_complex "scale=out_color_matrix=bt709,scale=${A3}:-1,ass='${A2}'" -c:a aac -preset slow "${A4} [EXPORTED].mkv"
}

main_c() {
ffmpeg -i "${A1}"  -c:v libx265 -vtag hvc1 -color_range 1 -pix_fmt yuv420p10le  -profile:v main10 -b:v 1M -minrate 500k -maxrate 1500k -color_primaries bt709 -color_trc bt709 -colorspace bt709 -x265-params level=4:high-tier=1:no-info=1 -filter_complex "scale=out_color_matrix=bt709,scale=${A3}:-1,ass='${A2}'" -c:a aac -preset fast "${A4} [EXPORTED].mkv"
}

main_d() { 
ffmpeg -i "${A1}"  -c:v libx265 -vtag hvc1 -color_range 1 -pix_fmt yuv420p10le  -profile:v main10 -b:v 1M -minrate 500k -maxrate 1.5M -color_primaries bt709 -color_trc bt709 -colorspace bt709 -x265-params level=4:high-tier=1:no-info=1 -filter_complex "scale=out_color_matrix=bt709,scale=${A3}:-1,ass='${A2}'" -c:a aac -preset veryfast "${A4} [EXPORTED].mkv"
}

if [ $ezz = 1 ] || [ $ezz = 01 ]
then
clear
     neofetch
     echo "\033[38;1m -------------------------------------------------------"|lolcat
     echo "    CREDIT : @Dnzzxxxx"
     echo "    CHANNEL : @DANZMOVIES"
     echo "\033[38;1m -------------------------------------------------------"|lolcat
     echo "\033[31;1m"
     echo "TULISKAN NAMA FILE VIDEO (.mp4/.mkv) :"
     read A1
     echo ""
      if [ $A2 = 'A5678910ZX' ] 
     then
     echo "TULISKAN NAMA FILE SUBTITLE :"
     read A2
     echo ""
     echo "TULISKAN RESOLUSI :"
     read A3
     echo ""
     echo "TULISKAN NAMA OUTPUT!"
     read A4
     echo "\nPRESET SPEED :"
     echo "\033[1;32m \n (1) Very Slow\t\t\t(3) Fast\n (2) Slow\t\t\t(4) Very Fast\n"
     read P1
     A2=${A2}.ass
     sleep 3
     echo "\033[31;1m\nRunning..... "
     sed -i "/^A2/s/^A2.*/A2="A5678910ZX"/g" gco.sh
     sleep 3
     if [ $P1 = 1 ] || [ $P1 = 01 ]
     then
          main_a
     fi
     if [ $P1 = 2 ] || [ $P1 = 02 ]
     then
          main_b
     fi
     if [ $P1 = 3 ] || [ $P1 = 03 ]
     then
          main_c
     fi
     if [ $P1 = 4 ] || [ $P1 = 04 ]
     then
          main_d
     fi
    else
    echo "SUBTITLE BERNAMA '${A2}' Y/N?"
    read T1
    echo ""
    if [ $T1 = Y ] || [ $T1 = y ]
    then
     echo "TULISKAN RESOLUSI :"
     read A3
     echo ""
     echo "TULISKAN NAMA OUTPUT!"
     read A4
     echo "\nPRESET SPEED :"
     echo "\033[1;32m \n (1) Very Slow\t\t\t(3) Fast\n (2) Slow\t\t\t(4) Very Fast\n"
     read P1
     sleep 3
     sed -i "/^A2/s/^A2.*/A2="A5678910ZX"/g" gco.sh
     echo "\033[31;1m\nRunning..... "
     sleep 3
    if [ $P1 = 1 ] || [ $P1 = 01 ]
     then
          main_a
     fi
     if [ $P1 = 2 ] || [ $P1 = 02 ]
     then
          main_b
     fi
     if [ $P1 = 3 ] || [ $P1 = 03 ]
     then
          main_c
     fi
     if [ $P1 = 4 ] || [ $P1 = 04 ]
     then
          main_d
     fi
     else
     echo "TULISKAN NAMA FILE SUBTITLE :"
     read A2
     echo ""
     echo "TULISKAN RESOLUSI :"
     read A3
     echo ""
     echo "TULISKAN NAMA OUTPUT!"
     read A4
     echo "\nPRESET SPEED :"
     echo "\033[1;32m \n (1) Very Slow\t\t\t(3) Fast\n (2) Slow\t\t\t(4) Very Fast\n"
     read P1
    A2=${A2}.ass
     sed -i "/^A2/s/^A2.*/A2="A5678910ZX"/g" gco.sh
     sleep 3
     echo "\033[31;1m\nRunning..... "
     sleep 3
     if [ $P1 = 1 ] || [ $P1 = 01 ]
     then
          main_a
     fi
     if [ $P1 = 2 ] || [ $P1 = 02 ]
     then
          main_b
     fi
     if [ $P1 = 3 ] || [ $P1 = 03 ]
     then
          main_c
     fi
     if [ $P1 = 4 ] || [ $P1 = 04 ]
     then
          main_d
     fi
     fi
   fi
fi

if [ $ezz = 02 ] || [ $ezz = 2 ]
then
clear
neofetch
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "    CREDIT : @Dnzzxxxx"
echo "    CHANNEL : @DANZMOVIES"
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "\033[31;1m"
echo "TULISKAN NAMA FILE VIDEO (.mp4/.mkv) :"
read B1
echo ""
echo "TULISKAN NAMA FILE SUBTITLE :"
read B2
echo ""
echo "TULISKAN NAMA OUTPUT!"
read B3
echo ""
sleep 3
echo "Running..... "
sleep 3
ffmpeg -i ${B1} -vf ass=${B2}.ass -preset veryfast ${B3}.mkv
clear
fi

if [ $ezz = 03 ] || [ $ezz = 3 ]
then
clear
neofetch
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "    CREDIT : @Dnzzxxxx"
echo "    CHANNEL : @DANZMOVIES"
echo "\033[38;1m -------------------------------------------------------"|lolcat 
echo "\033[31;1m"
echo "TULISKAN NAMA FILE VIDEO (.mp4/.mkv) :"
read C1
echo ""
echo "TULISKAN NAMA FILE SUBTITLE :"
read C2
echo ""
echo "TULISKAN URUTAN AUDIO OUTPUT! "
read C3
echo ""
echo "TULISKAN NAMA OUTPUT! "
read C4
y=$((C3-1)) 
echo ""
sleep 3
echo "Running..... "
sleep 3
ffmpeg -i ${C1} -vf ass=${C2}.ass -c:v libx265 -map 0:a:${y} -map 0:v -b:v 1M -c:a aac -preset veryfast ${C4}.mkv
fi

if [ $ezz = 04 ] || [ $ezz = 4 ]
then
clear
neofetch
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "    CREDIT : @Dnzzxxxx"
echo "    CHANNEL : @DANZMOVIES"
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "\033[31;1m"
echo "TULISKAN NAMA FILE"
read D1
echo ""
echo "TULISKAN NAMA OUTPUT :"
read D2
echo ""
echo "TENTUKAN RESOLUSI FILM/SERIES :"
echo "\033[1;32m \n (1) 16:9\t\t\t(2) 21:9 Movie\n"
read D3
echo "\033[31;1m"
sleep 3
echo "Running..... "
sleep 3
ffmpeg -i "${D1}".srt "${D2}".ass
if [ $D3 = 1 ] || [ $D3 = 01 ]
     then
         sed -i 's/Arial,16/Arial,40/g' "${D2}".ass
         sed -i 's/10,10,10,0/10,10,23,0/g' "${D2}".ass
         sed -i 's/PlayResX: 384/PlayResX: 1280/g' "${D2}".ass
         sed -i 's/PlayResY: 288/PlayResY: 720/g' "${D2}".ass
         sed -i 's/Effect, Text/Effect, Text\nDialogue: 0,0:00:05.00,0:00:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES/g' "${D2}".ass
         echo -n "Dialogue: 0,0:22:05.00,0:22:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES\n" >> "${D2}".ass
         echo -n "Dialogue: 0,0:50:05.00,0:50:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES\n" >> "${D2}".ass
         echo -n "Dialogue: 0,1:22:05.00,1:22:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES\n" >> "${D2}".ass
         echo -n "Dialogue: 0,1:52:05.00,1:52:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES\n" >> "${D2}".ass
  else
 sed -i 's/10,10,10,0/10,10,40,0/g' "${D2}".ass
sed -i 's/Arial,16/Arial,40/g' "${D2}".ass
sed -i 's/PlayResX: 384/PlayResX: 1280/g' "${D2}".ass
sed -i 's/PlayResY: 288/PlayResY: 720/g' "${D2}".ass
sed -i 's/Effect, Text/Effect, Text\nDialogue: 0,0:00:05.00,0:00:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES/g' "${D2}".ass
echo -n "Dialogue: 0,0:22:05.00,0:22:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES\n" >> "${D2}".ass
         echo -n "Dialogue: 0,0:50:05.00,0:50:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES\n" >> "${D2}".ass
         echo -n "Dialogue: 0,1:22:05.00,1:22:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES\n" >> "${D2}".ass
         echo -n "Dialogue: 0,1:52:05.00,1:52:20.00,Default,,0,0,0,,TELEGRAM™ @DANZMOVIES\n" >> "${D2}".ass
 fi
TUV="${D2}.ass"
sed -i "/^A2/s/^A2.*/A2='${TUV}'/g" gco.sh
sh gco.sh
fi

if [ $ezz = 05 ] || [ $ezz = 5 ]
then
clear
neofetch
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "    CREDIT : @Dnzzxxxx"
echo "    CHANNEL : @DANZMOVIES"
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "\033[31;1m"
echo "TULISKAN NAMA FILE VIDEO (.mp4/.mkv) :"
read E1
echo ""
echo "TULISKAN URUTAN SUBTITLE!"
read E2
echo ""
echo "TULISKAN NAMA OUTPUT :"
read E3
z=$((E2-1)) 
echo ""
sleep 3
echo "Running..... "
sleep 3
ffmpeg -i ${D1}.srt -map 0:s:${z} ${D3}.ass
fi

if [ $ezz = 06 ] || [ $ezz = 6 ]
then
clear
neofetch
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "    CREDIT : @Dnzzxxxx"
echo "    CHANNEL : @DANZMOVIES"
echo "\033[38;1m -------------------------------------------------------"|lolcat
echo "\033[31;1m"
echo "TULISKAN NAMA FILE VIDEO (.mp4/.mkv) :"
read F1
echo ""
echo "TULISKAN NAMA OUTPUT :"
read F2
echo ""
sleep 3
echo "Running..... "
sleep 3
ffmpeg -i "${F1}"  -c:v libx265 -vtag hvc1 -color_range 1 -pix_fmt yuv420p10le  -profile:v main10 -color_primaries bt709 -color_trc bt709 -colorspace bt709 -x265-params level=5.1:high-tier=1:crf=26:no-info=1 -filter_complex "scale=out_color_matrix=bt709" -c:a aac ${F2}.mkv
fi

if [ $ezz = 07 ] || [ $ezz = 7 ]
then
clear
echo "\033[39;1m"
apt update && upgrade 
apt install ffmpeg 
apt install ruby -y
gem install lolcat
apt install lolcat
apt install neofetch
sh gco.sh
fi

if [ $ezz = 08 ] || [ $ezz = 8 ]
then
clear
echo "\033[39;1m"
toilet -f mono12 -F metal "KELUAR"
echo "semoga hari mu menyenangkan"
exit 1
fi
