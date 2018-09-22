param(
    [Int32]$agents = 1,
    [switch]$d= $false
)

$env:COMPOSE_CONVERT_WINDOWS_PATHS=1
$env:BUILDSWARM_CLUSTER=$env:computername.ToLower()

docker-compose -f docker-compose.windows.yml down
# docker-compose build --no-cache

If ($d -eq $true) {
    docker-compose -f docker-compose.windows.yml up -d --scale agent=$agents
} Else {
    docker-compose -f docker-compose.windows.yml up --scale agent=$agents
}
