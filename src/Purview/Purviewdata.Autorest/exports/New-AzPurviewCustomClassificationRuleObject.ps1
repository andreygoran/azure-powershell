
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create an in-memory object for CustomClassificationRule.
.Description
Create an in-memory object for CustomClassificationRule.
.Example
PS C:\> $reg1 = New-AzPurviewRegexClassificationRulePatternObject -Pattern '^col1$'
$reg2 = New-AzPurviewRegexClassificationRulePatternObject -Pattern '^col2$'
$regexarr = @($reg1, $reg2)
New-AzPurviewCustomClassificationRuleObject -Kind 'Custom' -ClassificationName ClassificationRule4 -MinimumPercentageMatch 60 -RuleStatus 'Enabled' -Description 'This is a rule2' -ColumnPattern $regexarr

ClassificationAction   :
ClassificationName     : ClassificationRule4
ColumnPattern          : {{
                           "kind": "Regex",
                           "pattern": "^col1$"
                         }, {
                           "kind": "Regex",
                           "pattern": "^col2$"
                         }}
CreatedAt              :
DataPattern            :
Description            : This is a rule2
Id                     :
Kind                   : Custom
LastModifiedAt         :
MinimumPercentageMatch : 60
Name                   :
RuleStatus             : Enabled
Version                :

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.Api20211001Preview.CustomClassificationRule
.Link
https://learn.microsoft.com/powershell/module/az.Purview/new-AzPurviewCustomClassificationRuleObject
#>
function New-AzPurviewCustomClassificationRuleObject {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.Api20211001Preview.CustomClassificationRule])]
[CmdletBinding(PositionalBinding=$false)]
param(
    [Parameter(Mandatory)]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Support.ClassificationRuleType])]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Support.ClassificationRuleType]
    ${Kind},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Body')]
    [System.String]
    ${ClassificationName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.Api20211001Preview.IClassificationRulePattern[]]
    ${ColumnPattern},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.Api20211001Preview.IClassificationRulePattern[]]
    ${DataPattern},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Body')]
    [System.String]
    ${Description},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Body')]
    [System.Double]
    ${MinimumPercentageMatch},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Support.ClassificationRuleStatus])]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Support.ClassificationRuleStatus]
    ${RuleStatus}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            __AllParameterSets = 'Az.Purviewdata.custom\New-AzPurviewCustomClassificationRuleObject';
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
