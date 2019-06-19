$Credentials = Get-Credential

Connect-MsolService -Credential $credentials

$Customers = Get-MsolPartnerContract -All 

foreach ($Customer in $Customers) {
    Set-MsolCompanySettings -TenantId $ID.TenantID -UsersPermissionToUserConsentToAppEnabled $False
}