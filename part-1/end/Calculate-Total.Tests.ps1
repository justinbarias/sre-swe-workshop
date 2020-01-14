$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Calculate-Total" {
    It "calculates the total sum" {
        $input = @(1,1,1) #Arrange
        Calculate-Total($input) | Should -Be 3 #Act & Assert
    }
}
