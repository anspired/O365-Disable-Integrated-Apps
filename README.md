# O365-Disable-Integrated-Apps

New ransomware variants, such as the Ransomcloud demo that Kevin Mitnick runs could potentially target public cloud environments such as Office 365.

This script will disable the ability for end users to grant or consent to access to these third party applications, potentially mitigating the risk of an attack happening.

## Prerequisites and caveats

- This script will change the `UsersPermissionToUserConsentToAppEnabled` setting to false for every single tenant you have delegated admin access to. You can exclude tenants or select them using `Out-GridView` if needed - but as is the script will do it for ALL tenants.

- This script uses the MSOnline module, you can install it using `Install-Module MSOnline`.

- Make sure you thoroughly understand what the script does before running it, no responsibility or liability can be placed on answers IT.

- Ensure that your Execution Policy is correctly set to be able to run scripts.

- It is possible that your clients may need this feature enabled, so confirm with them first as it could potentially break some applications.
