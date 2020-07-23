param($Request, $TriggerMetadata)

$method = Invoke-RestMethod -Uri 'https://www.clouddev.engineering'

if (-not($method)) {
    Write-Warning 'Website Not Availabile'
}

else {
    Push-OutputBinding -Name response -Value ([HttpResponseContext]@{
        StatusCode = [System.Net.HttpStatusCode]::OK
        Body = "Website Reachable"
    })
}