read -p "지정할 날짜(YYYY-MM-DD): " date
read -p "학습링크(ex. youtube): " youtube

gh create --title "[$date] 학습목표" --body "🔖 Start: [youtube]($youtube)"
