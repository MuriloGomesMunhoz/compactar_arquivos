echo "Nome do script: $0"

VARTAR="tar"

case "$1" in
	"command")
		echo "1°: extensão"
		echo "2°: arquivo que deseja compactar"
		echo "3°: como deve ser o nome do arquivo compactado"
		;;
	"tar")
		tar -czf "$3".tar.gz "$2"
		echo "compactado para tar $2"
                ;;
	"zip")
		zip "$3".zip "$2" adding: "$2" (stored 0%)
		echo "compactado para zip $2"
		;;
esac


