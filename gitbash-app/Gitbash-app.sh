#!/bin/bash

color() {
  local text="$1"
  local color_code="$2"

  case $color_code in
    "1") echo -e "\e[32m$text\e[0m" ;;  # Hijau
    "2") echo -e "\e[33m$text\e[0m" ;;  # Kuning
    "3") echo -e "\e[34m$text\e[0m" ;;  # Biru
    "4") echo -e "\e[35m$text\e[0m" ;;  # Ungu
    "5") echo -e "\e[36m$text\e[0m" ;;  # Cyan
    "6") echo -e "\e[31m$text\e[0m" ;;  # Merah
    "7") echo -e "\e[31;43m$text\e[0m" ;;  # Merah dengan latar belakang kuning
    "8") echo -e "\e[1;34m$text\e[0m" ;;  # Biru terang
    "9") echo -e "\e[1;37m$text\e[0m" ;;  # Putih terang
    "10") echo -e "\e[1;30m$text\e[0m" ;; # Abu-abu terang
    "11") echo -e "\e[41m$text\e[0m" ;;   # Latar belakang merah
    "0") echo -e "\e[36m$text\e[0m" ;;   # Cyan
    *) echo "$text" ;;
  esac
}


menu_item="Compare local & remote repo (git fetch)"
colorized_menu_item=$(color "$menu_item" 2)
echo -e "Menu Item: $colorized_menu_item"

echo "$(color 'Hello World' 1)"

## ========== endfor function color ==========

## untuk pesan commit dengan waktu dinamis
commit_with_dynamic_comment() {
  local current_time=$(date +"%H:%M:%S-%m-%d-%Y")
  git commit -m "Commit on: $current_time"
}

while true; do
  clear

  echo -e "\nTarget yang Tersedia:"
  echo "  $(color 1 '1')  : View status (git status)"
  echo "  $(color 2 '2')  : Stage changes (git add)"
  echo "  $(color 3 '3')  : View commit log (git log)"
  echo "  $(color 4 '4')  : Compare local & remote repo (git fetch)"
  echo "  $(color 5 '5')  :  Merge branches (git merge)"
  echo "  $(color 6 '6')  : Create a new branch (git branch)"
  echo "  $(color 7 '7')  : Switch to a branch (git checkout)"
  echo "  $(color 8 '8')  : Finishing - Add, commit, and push"
  echo "  $(color 9 '9')  : Discard changes in working directory (git restore)"
  echo "  $(color 10 '10') : Create and apply patches (git diff and git apply)"
  echo "  $(color 11 '11') : Undo last commit (git reset)"
  echo "  $(color 0 '0')  : Exit"


    read -p "Masukkan nomor target: " choice

    case $choice in
        1) git status ;;
        2)
            echo -e "\nStaging changes..."
            git add .
            echo -e "Changes staged. Ready for commit.\n" ;;
        3) git log ;;
        4) git fetch ;;
        5) git merge ;;
        6) git branch ;;
        7) git checkout ;;
        8)
          git add .
          commit_with_dynamic_comment
          git push -u origin Master
            echo -e "\nFinishing - Add, commit, and push..."
            # Tambahkan perintah sesuai kebutuhan
            echo -e "Finishing complete.\n" ;;
        9) git restore ;;
       10)
            echo -e "\nCreating and applying patches..."
            # Tambahkan perintah sesuai kebutuhan
            echo -e "Patches applied.\n" ;;
       11) git reset ;;
        0)
            clear
            echo -e "Terima kasih! Program berakhir.\n"
            break ;;
        *) echo -e "Pilihan tidak valid. Silakan masukkan nomor yang benar.\n" ;;
    esac
done

