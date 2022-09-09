echo "Nome do script: $0"

VARTAR="tar"

case "$1" in
	"command")
		echo "1°: compactar(c) | descompactar(d)"
		echo "2°: extensão"
		echo "3°: arquivo que deseja compactar"
		echo "4°: como deve ser o nome do arquivo compactado"
		;;

	"c")
		case "$2" in
			"tar")
				tar -czf "$3".tar.gz "$3"
				echo "compactado para tar $3"
                		;;
			"zip")
				zip "$4".zip "$3" 
				echo "compactado para zip $3"
				;;
			esac
		;;


	"d")
		case "$2" in
			"tar")
				tar -vzxf "$3".tar.g
				echo "descompactado para tar $3"
                		;;
			"zip")
				unzip "$3".zip 
				echo "descompactado para zip $3"
				;;
			esac
		;;



esac
