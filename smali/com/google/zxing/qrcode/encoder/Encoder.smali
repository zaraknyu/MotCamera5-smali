.class public abstract Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALPHANUMERIC_TABLE:[I

.field public static final DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static willFit(ILcom/google/zxing/qrcode/decoder/Version;I)Z
    .locals 6

    iget v0, p1, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    iget-object p1, p1, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Landroidx/media3/extractor/mkv/Sniffer;

    invoke-static {p2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p2

    aget-object p1, p1, p2

    iget p2, p1, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    iget-object p1, p1, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p1, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, p1, v3

    iget v5, v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    mul-int/2addr v4, p2

    sub-int/2addr v0, v4

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method
