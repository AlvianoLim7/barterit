class Orders {
  String? orderId;
  String? buyerId;
  String? sellerId;
  String? buyerItemId;
  String? sellerItemId;
  String? orderStatus;
  String? buyerName;
  String? sellerName;

  Orders({
    this.orderId,
    this.buyerId,
    this.sellerId,
    this.buyerItemId,
    this.sellerItemId,
    this.orderStatus,
    this.buyerName,
    this.sellerName,
  });

  Orders.fromJson(Map<String, dynamic> json) {
    buyerId = json['order_id'];
    buyerId = json['buyer_id'];
    sellerId = json['seller_id'];
    buyerItemId = json['buyer_item_id'];
    sellerItemId = json['seller_item_id'];
    orderStatus = json['order_status'];
    buyerName = json['buyer_name'];
    sellerName = json['seller_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order_id'] = orderId;
    data['buyer_id'] = buyerId;
    data['seller_id'] = sellerId;
    data['buyer_item_id'] = buyerItemId;
    data['seller_item_id'] = sellerItemId;
    data['order_status'] = orderStatus;
    data['buyer_name'] = buyerName;
    data['seller_name'] = sellerName;
    return data;
  }
}
