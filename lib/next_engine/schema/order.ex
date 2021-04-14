defmodule NextEngine.Schema.Order do
  @behaviour NextEngine.Schema

  def path, do: "/api_v1_receiveorder_base/search"

  def schema do
    %{
      "receive_order_purchaser_zip_code" => :string,
      "receive_order_payment_method_id" => :string,
      "receive_order_delivery_fee_amount" => :integer,
      "receive_order_hope_delivery_time_slot_name" => :string,
      "receive_order_last_modified_null_safe_date" => :datetime,
      "receive_order_other_amount" => :integer,
      "receive_order_purchaser_mail_address" => :string,
      "receive_order_purchaser_kana" => :string,
      "receive_order_order_status_id" => :string,
      "receive_order_send_date" => :datetime,
      "receive_order_charge_amount" => :integer,
      "receive_order_purchaser_fax" => :string,
      "receive_order_customer_type_name" => :string,
      "receive_order_order_status_name" => :string,
      "receive_order_delivery_cut_form_note" => :string,
      "receive_order_hope_delivery_date" => :datetime,
      "receive_order_cancel_type_name" => :string,
      "receive_order_purchaser_address2" => :string,
      "receive_order_purchaser_tel" => :string,
      "receive_order_date" => :datetime,
      "receive_order_tax_amount" => :integer,
      "receive_order_purchaser_address1" => :string,
      "receive_order_delivery_cut_form_id" => :string,
      "receive_order_payment_method_name" => :string,
      "receive_order_delivery_method_name" => :string,
      "receive_order_cancel_type_id" => :string,
      "receive_order_shop_cut_form_id" => :string,
      "receive_order_point_amount" => :integer,
      "receive_order_customer_id" => :string,
      "receive_order_delivery_name" => :string,
      "receive_order_last_modified_date" => :datetime,
      "receive_order_customer_type_id" => :string,
      "receive_order_id" => :integer,
      "receive_order_delivery_id" => :string,
      "receive_order_total_amount" => :integer,
      "receive_order_delivery_method_id" => :string,
      "receive_order_creation_date" => :datetime,
      "receive_order_gift_flag" => :string,
      "receive_order_goods_amount" => :integer,
      "receive_order_cancel_date" => :datetime,
      "receive_order_hope_delivery_time_slot_id" => :string,
      "receive_order_shop_id" => :integer,
      "receive_order_purchaser_name" => :string
    }
  end
end
