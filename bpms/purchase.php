<?php
session_start();
include('includes/dbconnection.php');

if (isset($_POST['productId']) && isset($_POST['productCost'])) {
    $productId = intval($_POST['productId']); // Cast to integer
    $productCost = floatval($_POST['productCost']); // Cast to float
    $sid = $_SESSION['bpmsuid'];

    // Fetch the user's balance
    $balanceQuery = mysqli_prepare($con, "SELECT balance FROM tbluser WHERE ID = ?");
    mysqli_stmt_bind_param($balanceQuery, "i", $sid);
    mysqli_stmt_execute($balanceQuery);
    $balanceResult = mysqli_stmt_get_result($balanceQuery);
    $userBalance = mysqli_fetch_assoc($balanceResult)['balance'];

    // Check if the user has enough balance
    if ($userBalance >= $productCost) {
        // Deduct product cost from user's balance
        $newBalance = $userBalance - $productCost;
        $updateBalanceQuery = mysqli_prepare($con, "UPDATE tbluser SET balance = ? WHERE ID = ?");
        mysqli_stmt_bind_param($updateBalanceQuery, "di", $newBalance, $sid);
        mysqli_stmt_execute($updateBalanceQuery);

        // Store purchase details in the database
        $insertPurchaseQuery = mysqli_prepare($con, "INSERT INTO tblpurchases (UserID, ProductID, Cost, PurchaseDate) VALUES (?, ?, ?, NOW())");
        mysqli_stmt_bind_param($insertPurchaseQuery, "iid", $sid, $productId, $productCost);
        mysqli_stmt_execute($insertPurchaseQuery);

        // Return success response
        echo json_encode(['status' => 'success', 'newBalance' => $newBalance]);
    } else {
        // Return failure response if not enough balance
        echo json_encode(['status' => 'fail']);
    }
} else {
    echo json_encode(['status' => 'error', 'message' => 'Invalid request']);
}
?>
