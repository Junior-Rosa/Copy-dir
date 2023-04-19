# Defina o caminho do diret�rio alvo e o caminho da pasta que ser� copiada
$diretorioAlvo = "C:\para\onde\vai"
$pastaOrigem = "\\pasta\aqui\*"

# Verifica se a estrutura de pastas foi alterada
if ((Get-ChildItem $diretorioAlvo -Recurse | Get-FileHash).Hash -eq (Get-ChildItem $pastaOrigem -Recurse | Get-FileHash).Hash) {
    Write-Host "A estrutura de pastas não foi alterada. Nenhuma ação será executada."
} else {
    # Copia a pasta de origem para o diret�rio alvo
    Write-Host "Copiando arquivos..."
    Copy-Item $pastaOrigem $diretorioAlvo -Recurse -Force
    Write-Host "A pasta foi copiada para o diretório alvo com sucesso!"
}
