function Confirm-SysID {
    param(
        [Parameter(Mandatory,ValueFromPipeline)]
        [alias('SysID')]
        [string]
        $sys_id,
        [Parameter()]
        [switch]
        $ValidateScript
    )

    process {
        $IsSysID = $sys_id -match "^[0-9a-f]{32}$"

        if($ValidateScript.IsPresent -and -not $IsSysID){
            Throw "A valid sys_id was not provided"
        }else{
            $IsSysID
        }
    }
}