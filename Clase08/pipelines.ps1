$nombre = "Emilio"

# Traer la información de la API de nombres "Genderize"
$respuestaAPI = Invoke-RestMethod -Method Get -Uri https://api.genderize.io/?name=$nombre
Write-Output "Resultado de la request a la URL: $respuestaAPI"

$extraerPropiedad = $respuestaAPI | Select-Object -ExpandProperty Gender
Write-Output "Resultado de extraer la propiedad genero: $extraerPropiedad"

# Traer la información de la API de nacionalidades "Nationalize"
Write-Output ""

$respuestaAPI2 = Invoke-RestMethod -Method Get -Uri https://api.nationalize.io/?name=$nombre 
Write-Output "Resultado de la request a la URL de nacionalidad: $respuestaAPI2"

$extraerCountry = $respuestaAPI2 | Select-Object -ExpandProperty Country
Write-Output "Resultado de extraer la propiedad Country: $extraerCountry"

$extrerPrimerCountry = $extraerCountry | Select-Object -First 1 -Property country_id
Write-Output "Primera posicion de Country: $($extrerPrimerCountry.country_id)"


#Imprimir las variables necesarias
Write-Output ""
Write-Output "**********"
Write-Output ""
Write-Output "El genero de $nombre es: $extraerPropiedad"
Write-Output "El pais de $nombre es: $($extrerPrimerCountry.country_id)"
Write-Output ""
Write-Output "**********"
Write-Output ""

foreach($nombre in $(Get-Content -Path .\lista_nombres.txt)) {

    $gender = Invoke-RestMethod -Method Get -Uri https://api.genderize.io/?name=$nombre | 
    Select-Object -ExpandProperty Gender 

    $country = Invoke-RestMethod -Method Get -Uri https://api.nationalize.io/?name=$nombre |
    Select-Object -ExpandProperty Country | 
    Select-Object -First 1 -Property country_id

    Write-Output "El genero de $nombre es: $gender"
    Write-Output "El pais de $nombre es: $($country.country_id)"
    Write-Output ""
}