defmodule NextEngine.Schema.OrderDetail do
  @behaviour NextEngine.Schema

  def path, do: "/api_v1_receiveorder_row/search"

  def schema do
    %{
      "receive_order_row_receive_order_id" => :integer,
      "receive_order_row_shop_cut_form_id" => :string,
      "receive_order_row_no" => :integer,
      "receive_order_row_shop_row_no" => :string,
      "receive_order_row_goods_id" => :string,
      "receive_order_row_goods_name" => :string,
      "receive_order_row_quantity" => :integer,
      "receive_order_row_unit_price" => :integer,
      "receive_order_row_received_time_first_cost" => :integer,
      "receive_order_row_tax_rate" => :integer,
      "receive_order_row_wholesale_retail_ratio" => :integer,
      "receive_order_row_sub_total_price" => :integer,
      "receive_order_row_goods_option" => :string,
      "receive_order_row_cancel_flag" => :string,
      "receive_order_row_received_time_goods_type_id" => :string,
      "receive_order_row_received_time_goods_type_name" => :string,
      "receive_order_row_returned_good_quantity" => :integer,
      "receive_order_row_returned_bad_quantity" => :integer,
      "receive_order_row_returned_reason_id" => :string,
      "receive_order_row_returned_reason_name" => :string,
      "receive_order_row_deleted_flag" => :string,
      "receive_order_row_creation_date" => :datetime,
      "receive_order_row_last_modified_date" => :datetime,
      "receive_order_row_last_modified_null_safe_date" => :datetime,
      "receive_order_row_last_modified_newest_date" => :datetime
    }
  end
end
