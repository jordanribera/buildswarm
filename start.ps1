param(
    [Int32]$agents = 1,
    [switch]$daemon= $false
)

$env:COMPOSE_CONVERT_WINDOWS_PATHS=1
$env:HOSTNAME=$env:computername.ToLower()

docker-compose down
docker-compose build --no-cache

If ($daemon -eq $true) {
    docker-compose up -d --scale agent=$agents
} Else {
    docker-compose up --scale agent=$agents
}
