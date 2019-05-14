## Pré requisitos - Ambiente Windows[*](https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html)
- Windows 7 SP1 (ou superior);

- PowerShell 3.0 (ou superior);

- .NET 4.0 (ou superior);

- WinRM;

- win_chocolatey[**](https://chocolatey.org/install) (não obrigatório).

## Configuração e instalação dos pré requisitos
- Firewall: Configurar o firewall do Windows para permitir acesso as portas de comunicação 5985 e 5986. Embora não seja recomendado, você também pode desabilitar o firewall do Windows executando o comando a seguir como Administrador no Power Shell: **Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False**

- Permitir a execução de scripts no PowerShell: **Set-ExecutionPolicy Unrestricted -Force**

- Verificar a versão do PowerShell: **get-host** ou **$PSVersionTable**
  - Se necessário executar o script: **01_Upgrade-PowerShell.ps1**

- Instalar a ultima versão do .NET Framework (NetFramework-472-KB4054530-x86-x64-AllOS-ENU.exe)

- WinRM: Executar os scripts **02_Install-WMF3Hotfix.ps1** e **03_ConfigureRemotingForAnsible.ps1**

- Validar se o WinRM está sendo executado: **winrm enumerate winrm/config/Listener**

- win_chocolatey: Executar o script **install_chocolatey.ps1**

- Validar se o chocolatey foi instalado: **choco /?**
