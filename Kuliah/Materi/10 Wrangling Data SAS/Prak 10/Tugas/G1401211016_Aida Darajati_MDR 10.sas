Tugas MDR Praktikum 10
Nama: Aida Darajati
NIM : G1401211016


/* Soal 1 */
Data data_sample1;
infile '/home/u62577167/sasuser.v94/Praktikum10/data_sample1.txt';
input ids bday Rank Major $ Gender Athlete Weight Height English Reading Math Writing State $ SleepTime StudyTime;
informat bday MMDDYY10.;
format bday YYMMDD10.;
run;

proc sort data=data_sample1 out=sample1;
by bday;
proc print data=sample1;
run;


/* Soal 2 */
data latihan (drop=English Reading Writing);
set sample1;
Bahasa=(English+Reading+Writing)/3;
Length Keterangan$11;
if (Math >= 70 and Bahasa >= 75) then Keterangan='Lulus';
else Keterangan='Tidak Lulus';
proc print data=latihan;
run;


/* Soal 3 */
data siswa_lulus siswa_tidak_lulus;
set latihan;
if (keterangan='Lulus') then output siswa_lulus;
else output siswa_tidak_lulus;
proc print data=siswa_lulus;
title 'Daftar Siswa Lulus';
proc print data=siswa_tidak_lulus;
title 'Daftar Siswa Tidak Lulus';
run;