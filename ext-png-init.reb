Rebol [
    title: "PNG Codec Extension"
    name: PNG
    type: module
    version: 1.0.0
    license: "Apache 2.0"
]

sys.util/register-codec 'png %.png
    identify-png?/
    decode-png/
    encode-png/
