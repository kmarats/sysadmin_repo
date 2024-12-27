#!/bin/bash

# Указываем путь к приватному ключу SSH
PRIVATE_KEY_PATH="/root/key/git.ppk"

# Список папок и файлов для добавления
files_and_dirs=(
    "github.bash"
    "sysadmin_repo/"
)

# Функция для добавления файлов и папок
add_to_git() {
    for item in "${files_and_dirs[@]}"; do
        echo "Adding $item..."
        git add "$item"
    done
}

# Основная часть скрипта
echo "Starting script..."

# Проверяем наличие репозитория
if [ ! -d ".git" ]; then
    echo "Initializing Git repository..."
    git init
else
    echo "Git repository already exists."
fi

# Удаляем существующий удаленный репозиторий origin
git remote remove origin

# Добавляем все файлы и папки
add_to_git

# Делаем коммит
read -p "Enter commit message: " commit_message
git commit -m "$commit_message"

# Настраиваем удаленный репозиторий по SSH
git remote add origin git@github.com:kmarats/sysadmin_repo.git

# Устанавливаем переменную окружения для использования указанного приватного ключа
export GIT_SSH_COMMAND="ssh -i ${PRIVATE_KEY_PATH}"

# Отправляем изменения на удаленный репозиторий
git push -u origin master

echo "Script completed."
