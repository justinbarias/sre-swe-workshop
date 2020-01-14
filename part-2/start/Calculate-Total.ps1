function Calculate-Total([array] $prices) {
    $sum = 0
    $prices | ForEach-Object { 
        $discount = Get-Discount
        $sum += $_ * $discount 
    } # Running this will fail, as Get-Discount isn't defined anywhere. We will provide mocks for this
    return [float]$sum
}

function Get-Discount() {
}