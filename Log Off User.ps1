Write-Host "###################################################"
Write-Host "#                                                 #"
Write-Host "#                                                 #"
Write-Host "#    THIS SCRIPT WILL LOG OFF A USER REMOTLEY     #"
Write-Host "#                                                 #"
Write-Host "#                                                 #"
Write-Host "#              Script Created By                  # "
Write-Host "#             Mason Johnson-Cooper                #"
Write-Host "#                                                 #"
Write-Host "###################################################"
pause
write-host "`n"
$comname = Read-Host -Prompt 'Please Input Computer Name' 
$variable = QUser /server $comname  
write-host "`n"



if ($variable -like '*id*') {

    QUser /server $comname
    write-host "`n"

    $sessionID = Read-Host -Prompt 'Please Input Session ID';
    

} else {
   
    Write-Host "PLEASE RETRY, program will now close "
    Start-Sleep -s 4
    EXIT
    
}


write-host "`n"
if ($sessionID) {
    Logoff $sessionID /server CONTROL-PC-2
    
    Write-Host "User Has Been Logged OF, program will now close"
    Start-Sleep -s 4
    EXIT
} else {

    Write-Warning -Message "ERROR PLEASE RETRY, program will now close"
    Start-Sleep -s 4
    EXIT
}
