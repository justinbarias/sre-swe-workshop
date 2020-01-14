$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Calculate-Total" {
    Context "When discount returns a correct value" {
        Mock Get-Discount { return 0.8 }

        It "calculates the total sum" {
            $input = @(1,1,1) #Arrange
            $expected = [float]2.4
            $result = Calculate-Total($input)
            $result | Should -Be $expected
        }

        It "returns float type" {
            $input = @(1,1,1) #Arrange
            Calculate-Total($input)  | Should -BeOfType float
        }
    }
}
