# O365-Disable-Integrated-Apps

New ransomware variants, such as the Ransomcloud demo that Kevin Mitnick runs could potentially target public cloud environments such as Office 365.

This script will disable the ability for end users to grant or consent to access to these third party applications, potentially mitigating the risk of an attack happening.

Thanks to [Chris Gecks](https://github.com/chrisgecks) for pointing us in the right direction for the PowerShell Commands.

## Prerequisites and caveats

- This script will change the `UsersPermissionToUserConsentToAppEnabled` setting to false for every single tenant you have delegated admin access to. You can exclude tenants or select them using `Out-GridView` if needed - but as is the script will do it for ALL tenants.

- This script uses the MSOnline module, you can install it using `Install-Module MSOnline`.

- Make sure you thoroughly understand what the script does before running it, no responsibility or liability can be placed on answers IT.

- Ensure that your Execution Policy is correctly set to be able to run scripts.

- It is possible that your clients may need this feature enabled, so confirm with them first as it could potentially break some applications.


## References

- https://docs.microsoft.com/en-au/office365/admin/misc/integrated-apps?redirectSourcePath=%252farticle%252f7e453a40-66df-44ab-92a1-96786cb7fb34&view=o365-worldwide#more-info-on-integrated-apps

- https://blog.knowbe4.com/heads-up-new-ransomware-strain-encrypts-cloud-email-real-time-video

- https://www.datto.com/resources/ransomcloud-demo
