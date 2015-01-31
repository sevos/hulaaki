defmodule Hulaaki.Control.CodecTest do
  use ExUnit.Case
  alias Hulaaki.Control.Packet, as: Packet
  alias Hulaaki.Control.Codec, as: Codec


  test "control packet fixed header for CONNECT" do
    packet = %Packet{type: :CONNECT}
    received = Codec.encode_fixed_header(packet)
    expected = <<1::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for CONNACK" do
    packet = %Packet{type: :CONNACK}
    received = Codec.encode_fixed_header(packet)
    expected = <<2::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for PUBLISH" do
    packet = %Packet{type: :PUBLISH}
    received = Codec.encode_fixed_header(packet)
    expected = <<3::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for PUBACK" do
    packet = %Packet{type: :PUBACK}
    received = Codec.encode_fixed_header(packet)
    expected = <<4::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for PUBREC" do
    packet = %Packet{type: :PUBREC}
    received = Codec.encode_fixed_header(packet)
    expected = <<5::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for PUBREL" do
    packet = %Packet{type: :PUBREL}
    received = Codec.encode_fixed_header(packet)
    expected = <<6::size(4), 0::size(1), 0::size(1), 1::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for PUBCOMP" do
    packet = %Packet{type: :PUBCOMP}
    received = Codec.encode_fixed_header(packet)
    expected = <<7::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for SUBSCRIBE" do
    packet = %Packet{type: :SUBSCRIBE}
    received = Codec.encode_fixed_header(packet)
    expected = <<8::size(4), 0::size(1), 0::size(1), 1::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for SUBACK" do
    packet = %Packet{type: :SUBACK}
    received = Codec.encode_fixed_header(packet)
    expected = <<9::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for UNSUBSCRIBE" do
    packet = %Packet{type: :UNSUBSCRIBE}
    received = Codec.encode_fixed_header(packet)
    expected = <<10::size(4), 0::size(1), 0::size(1), 1::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for UNSUBACK" do
    packet = %Packet{type: :UNSUBACK}
    received = Codec.encode_fixed_header(packet)
    expected = <<11::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for PINGREC" do
    packet = %Packet{type: :PINGREC}
    received = Codec.encode_fixed_header(packet)
    expected = <<12::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for PINGRESP" do
    packet = %Packet{type: :PINGRESP}
    received = Codec.encode_fixed_header(packet)
    expected = <<13::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end

  test "control packet fixed header for DISCONNECT" do
    packet = %Packet{type: :DISCONNECT}
    received = Codec.encode_fixed_header(packet)
    expected = <<14::size(4), 0::size(1), 0::size(1), 0::size(1), 0::size(1)>>

    assert expected == received
  end
end