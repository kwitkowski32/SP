# SP 
LABOLATORIUM 1.
1. Używając linii poleceń stwórz strukturę katalogów:
KonradZ500:~/SP$ mkdir temp
KonradZ500:~/SP$ cd temp
KonradZ500:~/SP/temp$ mkdir dom
KonradZ500:~/SP/temp$ mkdir nauka
KonradZ500:~/SP/temp$ cd nauka
KonradZ500:~/SP/temp/nauka$ mkdir c
KonradZ500:~/SP/temp/nauka$ mkdir logo
KonradZ500:~/SP/temp/nauka$ mkdir pascal
KonradZ500:~/SP/temp/nauka$ cd ..
KonradZ500:~/SP/temp$ mkdir praca
KonradZ500:~/SP/temp$ cd praca
KonradZ500:~/SP/temp/praca$ mkdir dokumenty
KonradZ500:~/SP/temp/praca$ mkdir zlecenia
KonradZ500:~/SP/temp/praca$ cd zlecenia
KonradZ500:~/SP/temp/praca/zlecenia$ mkdir niezrealizowane
KonradZ500:~/SP/temp/praca/zlecenia$ mkdir zrealizowane
2. Przejdź do katalogu dom i utwórz katalog wazne-sprawy.
KonradZ500:~/SP/temp$ cd dom
KonradZ500:~/SP/temp/dom$ mkdir wazne-sprawy
3. Wejdź do katalogu wazne-sprawy i utwórz tam pusty plik rachunki.txt.
KonradZ500:~/SP/temp/dom$ cd wazne-sprawy
KonradZ500:~/SP/temp/dom/wazne-sprawy$ touch rachunki.txt
4. Będąc w katalogu wazne-sprawy skopiuj plik rachunki.txt do katalogu zrealizowane.
KonradZ500:~/SP/temp/dom/wazne-sprawy$ cp rachunki.txt ~/SP/temp/praca/zlecenia/zrealizowane
5. Przejdź do katalogu zrealizowane i zmień nazwę pliku rachunki.txt na wykonano.txt.
KonradZ500:~/SP/temp$ cd praca
KonradZ500:~/SP/temp/praca$ cd zrealizowan
KonradZ500:~/SP/temp/praca$ cd zlecenia
KonradZ500:~/SP/temp/praca/zlecenia$ cd zrealizowane
KonradZ500:~/SP/temp/praca/zlecenia/zrealizowane$ mv rachunki.txt wykonano.txt 
6. Utwórz plik wykonano.txt wielkości 11 bajtów, następnie podziel go pliki wielkości 5 bajtów. W ten sposób otrzymasz 3 pliki. (split)
niko@KonradZ500:~/SP/temp$ cd praca
niko@KonradZ500:~/SP/temp/praca$ cd zrealizowane
niko@KonradZ500:~/SP/temp/praca$ cd zlecenia
niko@KonradZ500:~/SP/temp/praca/zlecenia$ cd zrealizowane
niko@KonradZ500:~/SP/temp/praca/zlecenia/zrealizowane$ mv rachunki.txt wykonano.txt
niko@KonradZ500:~/SP/temp/praca/zlecenia/zrealizowane$ cat > wykonano.txt
1234567890
niko@KonradZ500:~/SP/temp/praca/zlecenia/zrealizowane$ split -b 5 wykonano.txt
niko@KonradZ500:~/SP/temp/praca/zlecenia/zrealizowane$ ls -la
razem 24
drwxrwxr-x 2 niko niko 4096 sty 31 00:45 .
drwxrwxr-x 4 niko niko 4096 sty 31 00:21 ..
-rw-rw-r-- 1 niko niko   11 sty 31 00:44 wykonano.txt
-rw-rw-r-- 1 niko niko    5 sty 31 00:45 xaa
-rw-rw-r-- 1 niko niko    5 sty 31 00:45 xab
-rw-rw-r-- 1 niko niko    1 sty 31 00:45 xac
7. Będąc w katalogu logo skopiuj powyżej otrzymane 3 pliki do katalogu dokumenty.
KonradZ500:~$ cd SP
KonradZ500:~/SP$ cd temp
KonradZ500:~/SP/temp$ cd nauka
KonradZ500:~/SP/temp/nauka$ cd logo
KonradZ500:~/SP/temp/nauka/logo$ cp ~/SP/temp/praca/zlecenia/zrealizowane/{xaa,xab,xac} ~/SP/temp/praca/dokumenty
8. Będąc w katalogu dokumenty połącz skopiowane 3 pliki w plik odtworzono.txt, tak aby otrzymać plik o zawartości identycznej z wykonano.txt. Następnie plik odtworzono.txt skopiuj do katalogu wazne-sprawy.
KonradZ500:~/SP/temp$ cd praca
KonradZ500:~/SP/temp/praca$ cd dokumenty
KonradZ500:~/SP/temp/praca/dokumenty$ cat xaa xab xac > odtworzono.txt
KonradZ500:~/SP/temp/praca/dokumenty$ cp odtworzono.txt ~/SP/temp/dom/wazne-sprawy 
9. Będąc w katalogu wazne-sprawy sprawdź, czy są jakieś różnice w zawartości plików wykonano.txt i odtworzono.txt.
KonradZ500:~/SP/temp/dom/wazne-sprawy$ diff odtworzono.txt ~/SP/temp/praca/zlecenia/zrealizowane/wykonano.txt
10. Wyświetl kalendarz na październik 2016 r. (cal) 
KonradZ500:~/SP/temp/dom/wazne-sprawy$ cal 10 2009
  Październik 2009    
ni po wt śr cz pi so  
             1  2  3  
 4  5  6  7  8  9 10  
11 12 13 14 15 16 17  
18 19 20 21 22 23 24  
25 26 27 28 29 30 31  
                      
KonradZ500:~/SP/temp/dom/wazne-sprawy$ cal 10 2009 -3
   Wrzesień 2009        Październik 2009       Listopad 2009      
ni po wt śr cz pi so  ni po wt śr cz pi so  ni po wt śr cz pi so  
       1  2  3  4  5               1  2  3   1  2  3  4  5  6  7  
 6  7  8  9 10 11 12   4  5  6  7  8  9 10   8  9 10 11 12 13 14  
13 14 15 16 17 18 19  11 12 13 14 15 16 17  15 16 17 18 19 20 21  
20 21 22 23 24 25 26  18 19 20 21 22 23 24  22 23 24 25 26 27 28  
27 28 29 30           25 26 27 28 29 30 31  29 30                 
                                                                  
KonradZ500:~/SP/temp/dom/wazne-sprawy$ cal 11 2009 -3
                            2009
    Październik             Listopad              Grudzień        
ni po wt śr cz pi so  ni po wt śr cz pi so  ni po wt śr cz pi so  
             1  2  3   1  2  3  4  5  6  7         1  2  3  4  5  
 4  5  6  7  8  9 10   8  9 10 11 12 13 14   6  7  8  9 10 11 12  
11 12 13 14 15 16 17  15 16 17 18 19 20 21  13 14 15 16 17 18 19  
18 19 20 21 22 23 24  22 23 24 25 26 27 28  20 21 22 23 24 25 26  
25 26 27 28 29 30 31  29 30                 27 28 29 30 31        
                                                                  
 11. Jaki był dzień tygodnia 25 maja 1975 r. (cal i date) 
 
 KonradZ500:~$ date -d 1975-05-25
nie, 25 maj 1975, 00:00:00 CET 
LABOLATORIUM 2.
KonradZ500:~/SP/temp/nauka/c$ touch program.c
KonradZ500:~/SP/temp/nauka/c$ cat > program.c
#include <stdio.h>
int main () {
	int y, x=1, wynik=0;
	while(x<=10) {
		y=x*x;
		printf("%d\n", y);
		wynik +=y;
		++x; }
		printf("wynik=%d\n", wynik);
		return 0; }
1. Wyświetl na ekran 2 pierwsze wiersze pliku program.c. (head)
KonradZ500:~/SP/temp/nauka/c$ head -n 2 program.c
#include <stdio.h>
int main () {
2. Wyświetl na ekran 4 ostatnie wiersze pliku program.c. (head, tail)
KonradZ500:~/SP/temp/nauka/c$ tail -n 4 program.c
		wynik +=y;
		++x; }
		printf("wynik=%d\n", wynik);
		return 0; }
3. W pliku program.c znajdź wszystkie wiersze z wystąpieniem słowa „main”. (grep)
KonradZ500:~/SP/temp/nauka/c$ grep "main" program.c
int main () {
4. Plikowi program.c nadaj następujące uprawnienia: właściciel – czytanie, pisanie, grupa – czytanie, pozostali użytkownicy: brak uprawnień. (chmod)
KonradZ500:~/SP/temp/nauka/c$ chmod u+rw program.c
KonradZ500:~/SP/temp/nauka/c$ chmod g+r program.c
KonradZ500:~/SP/temp/nauka/c$ chmod o-rwx program.c
5. Będąc w katalogu temp przenieś katalog wazne-sprawy do katalogu praca.
KonradZ500:~/SP/temp$ mv dom/wazne-sprawy praca 
6. Zarchiwizuj cały katalog temp. (zip i tar)
niko@KonradZ500:~/SP$ tar -cf temp.tar temp
7. Usuń katalog temp. 
KonradZ500:~/SP$ rm -rf temp
8. Odtwórz z archiwum katalog temp. (unzip i tar)
niko@KonradZ500:~/SP$ tar -xf temp.tar
LABOLATORIUM 3.
1. Wyświetl plik /etc/passwd z podziałem na strony przyjmując, że strona na 5 linii tekstu. (raczej more niż less)
KonradZ500:~/SP$ cat /etc/passwd
KonradZ500:~/SP$ more -5 /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
--Więcej--(8%)
2. Korzystając z polecenia cat utwórz plik tekst3.txt, który będzie składał się z zawartości pliku tekst1.txt, ciągu znaków podanego ze standardowego wejścia (klawiatury) i pliku tekst2.txt.
4. Wyświetl linie o numerach 3, 4 i 5 z pliku /etc/passwd.
KonradZ500:~/SP$ head -n 5 /etc/passwd | tail -n 3
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
5. Wyświetl linie o numerach 7, 6 i 5 od końca pliku /etc/passwd.
KonradZ500:~/SP$ tail -n 7 /etc/passwd | head -n 3
hplip:x:115:7:HPLIP system user,,,:/var/run/hplip:/bin/false
kernoops:x:116:65534:Kernel Oops Tracking Daemon,,,:/:/bin/false
pulse:x:117:124:PulseAudio daemon,,,:/var/run/pulse:/bin/false 
6. Wyświetl zawartość pliku /etc/passwd w jednej linii. 
KonradZ500:~/SP$ cat /etc/passwd | tr "\n" " "
9. Napisać polecenie zliczające ilość znaków z pierwszych trzech linii pliku /etc/passwd.
KonradZ500:~/SP$ head -n 3 /etc/passwd | wc -c
117
