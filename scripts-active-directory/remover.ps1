# ********** LEITURA OBRIGATÓRIA **********
# ********** REQUIRED READING **********

# Atencção, este script remove os grupos de todos os usuários dentro da OU. Calcule o risco antes de executar.
# Realize testes num ambiente de desenvolvimento ou QA antes de realizar em produção (PRD).
# Você poderá remover acesso de todos na empresa caso execute errado.
# Dê preferência aos SysAdmin para execução deste script caso tenha dúvidas.
# Caso não tenha backup do Active Directory, não é recomendável a utilização deste script.

# Attention, this script removes the groups of all users inside the OU. Calculate risk before running.
# Perform tests in a development or QA environment before performing in production (PRD).
# You can remove access from everyone in the company if you do it wrong.
# Give preference to SysAdmin to run this script if you have doubts.
# If you do not have an Active Directory backup, it is not recommended to use this script.


$SearchBase = "OU=XXXXX,DC=XXXXX,DC=XXXXX" #Modifique o XXXXX pelo pelo dominio e OU
$Users = Get-ADUser -filter * -SearchBase $SearchBase -Properties MemberOf
ForEach($User in $Users){$User.MemberOf | Remove-ADGroupMember -Member $User -Confirm:$false}

#Finished!
