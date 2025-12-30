function buyProduct(ProductID, Cost) {
    if (confirm("Are you sure you want to buy this product for $" + Cost + "?")) {
        $.ajax({
            url: 'purchase.php',
            type: 'POST',
            data: {
                productId: ProductID,
                productCost: Cost
            },
            dataType: 'json',  // Ensure you're expecting JSON data from server
            success: function(response) {
                if (response.status === 'success') {
                    alert("Purchase successful! Your new balance is $" + response.newBalance);
                } else {
                    alert("Not enough balance. Please add more funds.");
                }
            },
            error: function() {
                alert("An error occurred while processing your request.");
            }
        });
    }
}

$(document).ready(function() {
    $('.buy-button').click(function() {
        var ProductID = $(this).attr('data-product-id'); // Use 'attr' to get data attribute value
        var Cost = $(this).attr('data-product-cost'); // Use 'attr' to get data attribute value
        buyProduct(ProductID, Cost);
    });
});
