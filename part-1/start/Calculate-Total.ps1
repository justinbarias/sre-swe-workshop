function Calculate-Total([array] $prices) {
    $sum = 0
    $prices | ForEach-Object { $sum += $_}
    return $sum
}
