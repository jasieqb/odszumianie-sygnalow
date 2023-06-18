# Odszumianie sygnału

## Treść zadania

5. Usuwanie szumu z sygnałów zapisanych w formie plików tekstowych (.csv) + wizualizacja
* Wczytanie pliku sygnału
* Wskazanie parametrów sygnału (liczba próbek, próbkowanie)
* Wyświetlenie sygnału w postaci oscylogramu
* Możliwość wyboru 2 sposobów odszumiania
* Wykonanie odszumiania całego sygnału
* Wyświetlenie sygnału odszumionego w postaci oscylogramu
* Zapisanie wynikowego sygnału do pliku .csv

## Wymagania

* Python 3.*
* pip
* virtualenv

## Uruchomienie

```bash
chmod +x install_and_run.sh
./install_and_run.sh
```

Zostanie utworzone środowisko wirtualne, zainstalowane wymagane pakiety i uruchomiony program w przeglądarce.

Program został przygotowany w środowisku Linux, ale powinien działać również na Windowsie.

Program używa [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/) jako interfejsu graficznego w celu przejrzystego przedstawienia wyników.

### Procesowanie nowego sygnału

1. Dodaj nową komórkę na końcu notatnika
2. Wpisz w niej `process_signal('path/to/file.csv'. sample_rate)`
3. Uruchom komórkę
4. Powinny wyświetlić się wykresy sygnału i jego odszumienia
5. Pojawi się nowy plik `path/to/file_filtered_method.csv`
