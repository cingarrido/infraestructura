foreach($nombre in $(Get-Content -Path .\lista_nombres.txt)) {
    # Write-Output "El nombre es $nombre"

    if ($nombre -eq "Juan") {
        Write-Output "Encontre a $nombre"
    } else {
        $otrosNombres++
    }
}

Write-Output "$otrosNombres no son Juan"