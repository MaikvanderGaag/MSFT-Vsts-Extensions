[CmdletBinding()]
param()

#import powerbi module
Import-Module $PSScriptRoot\ps_modules\PowerBI

try {
    
    $userName = "nomulti@familie-vandergaag.nl"
    $filePattern = ""
    $passWord = ConvertTo-SecureString "Ch@rl0tte" -AsPlainText -Force
    $clientId = "7b878115-55e1-48c5-bfb8-848dc07f9d1e"
    $groupName = "PowerBI"
    $overwrite = $true
    $create = $true
    $users = ""
    $accesRight = ""
    $dataset = "powerbi"
    $action = "UpdateDatasource"
    $oldServer = "powerbisql55.database.windows.net"
    $newServer = "powerbisql55.database.windows.net"
    $oldDatabase = "sql01"
    $newDatabase = "sql02"
    $datasourceType = "Sql"
    $oldUrl = ""
    $newUrl =""
    $UpdateAll = $false

    .\run-task.ps1 -Username $userName -OldUrl $oldUrl -NewUrl $newUrl -OldServer $oldServer -DatasourceType $datasourceType -NewServer $newServer -OldDatabase $oldDatabase -NewDatabase $newDatabase -AccessRight $accesRight -Users $users -FilePattern $filePattern -Password $passWord -ClientId $clientId -WorkspaceName $groupName -Overwrite $overwrite -Create $create -Dataset $dataset -Action $action -UpdateAll $UpdateAll
}
finally {
    Write-Information "Done running the task"
}
