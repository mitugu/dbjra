require 'test_helper'

class KyisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kyi = kyis(:one)
  end

  test "should get index" do
    get kyis_url
    assert_response :success
  end

  test "should get new" do
    get new_kyi_url
    assert_response :success
  end

  test "should create kyi" do
    assert_difference('Kyi.count') do
      post kyis_url, params: { kyi: { a100: @kyi.a100, a101: @kyi.a101, a102: @kyi.a102, a103: @kyi.a103, a104: @kyi.a104, a105: @kyi.a105, a106: @kyi.a106, a107: @kyi.a107, a108: @kyi.a108, a109: @kyi.a109, a10: @kyi.a10, a110: @kyi.a110, a111: @kyi.a111, a112: @kyi.a112, a113: @kyi.a113, a114: @kyi.a114, a115: @kyi.a115, a116: @kyi.a116, a117: @kyi.a117, a118: @kyi.a118, a119: @kyi.a119, a11: @kyi.a11, a120: @kyi.a120, a121: @kyi.a121, a122: @kyi.a122, a123: @kyi.a123, a124: @kyi.a124, a125: @kyi.a125, a126: @kyi.a126, a127: @kyi.a127, a128: @kyi.a128, a129: @kyi.a129, a12: @kyi.a12, a130: @kyi.a130, a131: @kyi.a131, a132: @kyi.a132, a133: @kyi.a133, a134: @kyi.a134, a135: @kyi.a135, a136: @kyi.a136, a13: @kyi.a13, a14: @kyi.a14, a15: @kyi.a15, a16: @kyi.a16, a17: @kyi.a17, a18: @kyi.a18, a19: @kyi.a19, a1: @kyi.a1, a20: @kyi.a20, a21: @kyi.a21, a22: @kyi.a22, a23: @kyi.a23, a24: @kyi.a24, a25: @kyi.a25, a26: @kyi.a26, a27: @kyi.a27, a28: @kyi.a28, a29: @kyi.a29, a2: @kyi.a2, a30: @kyi.a30, a31: @kyi.a31, a32: @kyi.a32, a33: @kyi.a33, a34: @kyi.a34, a35: @kyi.a35, a36: @kyi.a36, a37: @kyi.a37, a38: @kyi.a38, a39: @kyi.a39, a3: @kyi.a3, a40: @kyi.a40, a41: @kyi.a41, a42: @kyi.a42, a43: @kyi.a43, a44: @kyi.a44, a45: @kyi.a45, a46: @kyi.a46, a47: @kyi.a47, a48: @kyi.a48, a49: @kyi.a49, a4: @kyi.a4, a50: @kyi.a50, a51: @kyi.a51, a52: @kyi.a52, a53: @kyi.a53, a54: @kyi.a54, a55: @kyi.a55, a56: @kyi.a56, a57: @kyi.a57, a58: @kyi.a58, a59: @kyi.a59, a5: @kyi.a5, a60: @kyi.a60, a61: @kyi.a61, a62: @kyi.a62, a63: @kyi.a63, a64: @kyi.a64, a65: @kyi.a65, a66: @kyi.a66, a67: @kyi.a67, a68: @kyi.a68, a69: @kyi.a69, a6: @kyi.a6, a70: @kyi.a70, a71: @kyi.a71, a72: @kyi.a72, a73: @kyi.a73, a74: @kyi.a74, a75: @kyi.a75, a76: @kyi.a76, a77: @kyi.a77, a78: @kyi.a78, a79: @kyi.a79, a7: @kyi.a7, a80: @kyi.a80, a81: @kyi.a81, a82: @kyi.a82, a83: @kyi.a83, a84: @kyi.a84, a85: @kyi.a85, a86: @kyi.a86, a87: @kyi.a87, a88: @kyi.a88, a89: @kyi.a89, a8: @kyi.a8, a90: @kyi.a90, a91: @kyi.a91, a92: @kyi.a92, a93: @kyi.a93, a94: @kyi.a94, a95: @kyi.a95, a96: @kyi.a96, a97: @kyi.a97, a98: @kyi.a98, a99: @kyi.a99, a9: @kyi.a9 } }
    end

    assert_redirected_to kyi_url(Kyi.last)
  end

  test "should show kyi" do
    get kyi_url(@kyi)
    assert_response :success
  end

  test "should get edit" do
    get edit_kyi_url(@kyi)
    assert_response :success
  end

  test "should update kyi" do
    patch kyi_url(@kyi), params: { kyi: { a100: @kyi.a100, a101: @kyi.a101, a102: @kyi.a102, a103: @kyi.a103, a104: @kyi.a104, a105: @kyi.a105, a106: @kyi.a106, a107: @kyi.a107, a108: @kyi.a108, a109: @kyi.a109, a10: @kyi.a10, a110: @kyi.a110, a111: @kyi.a111, a112: @kyi.a112, a113: @kyi.a113, a114: @kyi.a114, a115: @kyi.a115, a116: @kyi.a116, a117: @kyi.a117, a118: @kyi.a118, a119: @kyi.a119, a11: @kyi.a11, a120: @kyi.a120, a121: @kyi.a121, a122: @kyi.a122, a123: @kyi.a123, a124: @kyi.a124, a125: @kyi.a125, a126: @kyi.a126, a127: @kyi.a127, a128: @kyi.a128, a129: @kyi.a129, a12: @kyi.a12, a130: @kyi.a130, a131: @kyi.a131, a132: @kyi.a132, a133: @kyi.a133, a134: @kyi.a134, a135: @kyi.a135, a136: @kyi.a136, a13: @kyi.a13, a14: @kyi.a14, a15: @kyi.a15, a16: @kyi.a16, a17: @kyi.a17, a18: @kyi.a18, a19: @kyi.a19, a1: @kyi.a1, a20: @kyi.a20, a21: @kyi.a21, a22: @kyi.a22, a23: @kyi.a23, a24: @kyi.a24, a25: @kyi.a25, a26: @kyi.a26, a27: @kyi.a27, a28: @kyi.a28, a29: @kyi.a29, a2: @kyi.a2, a30: @kyi.a30, a31: @kyi.a31, a32: @kyi.a32, a33: @kyi.a33, a34: @kyi.a34, a35: @kyi.a35, a36: @kyi.a36, a37: @kyi.a37, a38: @kyi.a38, a39: @kyi.a39, a3: @kyi.a3, a40: @kyi.a40, a41: @kyi.a41, a42: @kyi.a42, a43: @kyi.a43, a44: @kyi.a44, a45: @kyi.a45, a46: @kyi.a46, a47: @kyi.a47, a48: @kyi.a48, a49: @kyi.a49, a4: @kyi.a4, a50: @kyi.a50, a51: @kyi.a51, a52: @kyi.a52, a53: @kyi.a53, a54: @kyi.a54, a55: @kyi.a55, a56: @kyi.a56, a57: @kyi.a57, a58: @kyi.a58, a59: @kyi.a59, a5: @kyi.a5, a60: @kyi.a60, a61: @kyi.a61, a62: @kyi.a62, a63: @kyi.a63, a64: @kyi.a64, a65: @kyi.a65, a66: @kyi.a66, a67: @kyi.a67, a68: @kyi.a68, a69: @kyi.a69, a6: @kyi.a6, a70: @kyi.a70, a71: @kyi.a71, a72: @kyi.a72, a73: @kyi.a73, a74: @kyi.a74, a75: @kyi.a75, a76: @kyi.a76, a77: @kyi.a77, a78: @kyi.a78, a79: @kyi.a79, a7: @kyi.a7, a80: @kyi.a80, a81: @kyi.a81, a82: @kyi.a82, a83: @kyi.a83, a84: @kyi.a84, a85: @kyi.a85, a86: @kyi.a86, a87: @kyi.a87, a88: @kyi.a88, a89: @kyi.a89, a8: @kyi.a8, a90: @kyi.a90, a91: @kyi.a91, a92: @kyi.a92, a93: @kyi.a93, a94: @kyi.a94, a95: @kyi.a95, a96: @kyi.a96, a97: @kyi.a97, a98: @kyi.a98, a99: @kyi.a99, a9: @kyi.a9 } }
    assert_redirected_to kyi_url(@kyi)
  end

  test "should destroy kyi" do
    assert_difference('Kyi.count', -1) do
      delete kyi_url(@kyi)
    end

    assert_redirected_to kyis_url
  end
end
