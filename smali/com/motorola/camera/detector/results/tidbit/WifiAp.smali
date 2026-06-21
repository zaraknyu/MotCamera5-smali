.class public final Lcom/motorola/camera/detector/results/tidbit/WifiAp;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;
.source "SourceFile"


# instance fields
.field public hidden:Z

.field public networkEncryption:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public static escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, ":"

    const-string v1, ";"

    const-string v2, "\\"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static generateQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 39

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_86

    sget-object v1, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    sget-object v2, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    const/16 v3, 0x60

    const/16 v4, 0x30

    const/4 v5, -0x1

    const/4 v6, 0x1

    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v9, v2

    rem-int/lit8 v10, v9, 0x2

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    move v10, v11

    :goto_0
    if-ge v10, v9, :cond_3

    aget-byte v12, v2, v10

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x81

    if-lt v12, v13, :cond_1

    const/16 v13, 0x9f

    if-le v12, v13, :cond_2

    :cond_1
    const/16 v13, 0xe0

    if-lt v12, v13, :cond_4

    const/16 v13, 0xeb

    if-le v12, v13, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v4, :cond_6

    const/16 v12, 0x39

    if-gt v11, v12, :cond_6

    move v10, v6

    goto :goto_4

    :cond_6
    sget-object v9, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    if-ge v11, v3, :cond_7

    aget v9, v9, v11

    goto :goto_3

    :cond_7
    move v9, v5

    :goto_3
    if-eq v9, v5, :cond_8

    move v9, v6

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move-object v2, v8

    goto :goto_5

    :cond_9
    if-eqz v9, :cond_a

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_5

    :cond_a
    if-eqz v10, :cond_8

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_5
    new-instance v9, Lcom/google/zxing/common/BitArray;

    invoke-direct {v9}, Lcom/google/zxing/common/BitArray;-><init>()V

    iget v10, v2, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0xa

    const/4 v14, 0x7

    const/16 v15, 0x8

    move/from16 v16, v4

    const/4 v4, 0x2

    if-eq v12, v6, :cond_18

    const/4 v7, 0x6

    if-eq v12, v4, :cond_12

    if-eq v12, v11, :cond_11

    if-ne v12, v7, :cond_10

    sget-object v1, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v3, v1

    rem-int/2addr v3, v4

    if-nez v3, :cond_e

    array-length v3, v1

    sub-int/2addr v3, v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v3, :cond_1b

    aget-byte v12, v1, v7

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v16, v7, 0x1

    aget-byte v4, v1, v16

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v12, v15

    or-int/2addr v4, v12

    const v12, 0x8140

    if-lt v4, v12, :cond_b

    move/from16 v16, v12

    const v12, 0x9ffc

    if-gt v4, v12, :cond_b

    sub-int v4, v4, v16

    goto :goto_7

    :cond_b
    const v12, 0xe040

    if-lt v4, v12, :cond_c

    const v12, 0xebbf

    if-gt v4, v12, :cond_c

    const v12, 0xc140

    sub-int/2addr v4, v12

    goto :goto_7

    :cond_c
    move v4, v5

    :goto_7
    if-eq v4, v5, :cond_d

    shr-int/lit8 v12, v4, 0x8

    mul-int/lit16 v12, v12, 0xc0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v12, v4

    const/16 v4, 0xd

    invoke-virtual {v10, v12, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v7, v7, 0x2

    const/4 v4, 0x2

    goto :goto_6

    :cond_d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Kanji byte size not even"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "SJIS Charset not supported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid mode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_1b

    aget-byte v7, v1, v4

    invoke-virtual {v10, v7, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_1b

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v16, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    if-ge v12, v3, :cond_13

    aget v12, v16, v12

    goto :goto_a

    :cond_13
    move v12, v5

    :goto_a
    if-eq v12, v5, :cond_17

    add-int/lit8 v15, v4, 0x1

    if-ge v15, v1, :cond_16

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ge v15, v3, :cond_14

    aget v15, v16, v15

    goto :goto_b

    :cond_14
    move v15, v5

    :goto_b
    if-eq v15, v5, :cond_15

    mul-int/lit8 v12, v12, 0x2d

    add-int/2addr v12, v15

    const/16 v15, 0xb

    invoke-virtual {v10, v12, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_c

    :cond_15
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_16
    invoke-virtual {v10, v12, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v4, v15

    :goto_c
    const/16 v15, 0x8

    goto :goto_9

    :cond_17
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_1b

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/lit8 v7, v3, 0x2

    if-ge v7, v1, :cond_19

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    mul-int/lit8 v4, v4, 0x64

    mul-int/2addr v12, v13

    add-int/2addr v12, v4

    add-int/2addr v12, v7

    invoke-virtual {v10, v12, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_d

    :cond_19
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_1a

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v3

    invoke-virtual {v10, v4, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v3, v7

    goto :goto_d

    :cond_1a
    invoke-virtual {v10, v4, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_d

    :cond_1b
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    iget v3, v9, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v2, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    add-int/2addr v1, v3

    iget v3, v10, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v1, v3

    move v3, v6

    :goto_e
    const-string v4, "Data too big"

    const/16 v7, 0x28

    if-gt v3, v7, :cond_85

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v12

    invoke-static {v1, v12, v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;I)Z

    move-result v15

    if-eqz v15, :cond_84

    iget v1, v9, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v2, v12}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v3

    add-int/2addr v3, v1

    iget v1, v10, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v3, v1

    move v1, v6

    :goto_f
    if-gt v1, v7, :cond_83

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v12

    invoke-static {v3, v12, v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;I)Z

    move-result v15

    if-eqz v15, :cond_82

    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    iget v3, v9, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_1c

    invoke-virtual {v9, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1c
    if-ne v2, v8, :cond_1d

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    goto :goto_11

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_11
    invoke-virtual {v2, v12}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    shl-int v3, v6, v2

    if-ge v0, v3, :cond_81

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget v0, v10, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, v1, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_1e

    invoke-virtual {v10, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1e
    iget-object v0, v12, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Landroidx/media3/extractor/mkv/Sniffer;

    invoke-static {v6}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    aget-object v0, v0, v2

    iget v2, v12, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    iget v3, v0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    iget-object v0, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v4, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_13
    if-ge v7, v4, :cond_1f

    aget-object v9, v0, v7

    iget v9, v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_1f
    mul-int/2addr v8, v3

    sub-int v3, v2, v8

    mul-int/lit8 v4, v3, 0x8

    iget v7, v1, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v7, v4, :cond_80

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v11, :cond_20

    iget v8, v1, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v8, v4, :cond_20

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_20
    const/4 v8, 0x0

    iget v7, v1, Lcom/google/zxing/common/BitArray;->size:I

    and-int/2addr v7, v14

    if-lez v7, :cond_21

    :goto_15
    const/16 v9, 0x8

    if-ge v7, v9, :cond_21

    invoke-virtual {v1, v8}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_15

    :cond_21
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v7

    sub-int v7, v3, v7

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v7, :cond_23

    and-int/lit8 v10, v8, 0x1

    if-nez v10, :cond_22

    const/16 v9, 0xec

    :goto_17
    const/16 v10, 0x8

    goto :goto_18

    :cond_22
    const/16 v9, 0x11

    goto :goto_17

    :goto_18
    invoke-virtual {v1, v9, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_23
    iget v7, v1, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v7, v4, :cond_7f

    array-length v4, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_19
    if-ge v7, v4, :cond_24

    aget-object v10, v0, v7

    iget v10, v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_24
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    if-ne v0, v3, :cond_7e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_1a
    if-ge v4, v8, :cond_4a

    new-array v15, v6, [I

    new-array v5, v6, [I

    if-ge v4, v8, :cond_49

    rem-int v20, v2, v8

    const/16 p0, 0x11

    sub-int v9, v8, v20

    div-int v21, v2, v8

    add-int/lit8 v22, v21, 0x1

    div-int v23, v3, v8

    add-int/lit8 v24, v23, 0x1

    move/from16 v25, v11

    sub-int v11, v21, v23

    move/from16 v21, v13

    sub-int v13, v22, v24

    if-ne v11, v13, :cond_48

    move/from16 v22, v6

    add-int v6, v9, v20

    if-ne v8, v6, :cond_47

    add-int v6, v23, v11

    mul-int/2addr v6, v9

    add-int v26, v24, v13

    mul-int v26, v26, v20

    add-int v6, v26, v6

    if-ne v2, v6, :cond_46

    if-ge v4, v9, :cond_25

    const/16 v17, 0x0

    aput v23, v15, v17

    aput v11, v5, v17

    goto :goto_1b

    :cond_25
    const/16 v17, 0x0

    aput v24, v15, v17

    aput v13, v5, v17

    :goto_1b
    aget v6, v15, v17

    new-array v9, v6, [B

    mul-int/lit8 v11, v7, 0x8

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v6, :cond_28

    move/from16 v20, v4

    move-object/from16 v23, v5

    move/from16 v24, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1d
    const/16 v8, 0x8

    if-ge v4, v8, :cond_27

    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_26

    rsub-int/lit8 v8, v4, 0x7

    shl-int v8, v22, v8

    or-int/2addr v5, v8

    :cond_26
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_27
    int-to-byte v4, v5

    aput-byte v4, v9, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v20

    move-object/from16 v5, v23

    move/from16 v8, v24

    goto :goto_1c

    :cond_28
    move/from16 v20, v4

    move-object/from16 v23, v5

    move/from16 v24, v8

    const/16 v17, 0x0

    aget v4, v23, v17

    add-int v5, v6, v4

    new-array v8, v5, [I

    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v6, :cond_29

    aget-byte v13, v9, v11

    and-int/lit16 v13, v13, 0xff

    aput v13, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :cond_29
    sget-object v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v23, v5

    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v26, v15

    filled-new-array/range {v22 .. v22}, [I

    move-result-object v15

    invoke-direct {v5, v11, v15}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_45

    sub-int v5, v23, v4

    if-lez v5, :cond_44

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v23, v1

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    if-lt v4, v15, :cond_32

    move/from16 v15, v22

    invoke-static {v15, v13}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v27

    move-object/from16 v28, v22

    move/from16 v15, v27

    :goto_1f
    if-gt v15, v4, :cond_32

    add-int/lit8 v27, v15, -0x1

    move/from16 v29, v15

    iget v15, v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    add-int v27, v27, v15

    iget-object v15, v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v15, v15, v27

    move-object/from16 v27, v12

    const/4 v12, 0x1

    filled-new-array {v12, v15}, [I

    move-result-object v15

    const/16 v17, 0x0

    aget v12, v15, v17

    if-nez v12, :cond_2c

    move/from16 v30, v2

    const/4 v2, 0x2

    const/4 v12, 0x1

    :goto_20
    if-ge v12, v2, :cond_2a

    aget v18, v15, v12

    if-nez v18, :cond_2a

    add-int/lit8 v12, v12, 0x1

    goto :goto_20

    :cond_2a
    if-ne v12, v2, :cond_2b

    const/4 v2, 0x0

    filled-new-array {v2}, [I

    move-result-object v15

    move/from16 v31, v3

    move/from16 v32, v7

    :goto_21
    move-object/from16 v3, v28

    goto :goto_22

    :cond_2b
    const/4 v2, 0x0

    move/from16 v31, v3

    rsub-int/lit8 v3, v12, 0x2

    move/from16 v32, v7

    new-array v7, v3, [I

    invoke-static {v15, v12, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v15, v7

    goto :goto_21

    :cond_2c
    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v7

    const/4 v2, 0x0

    goto :goto_21

    :goto_22
    iget-object v7, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v12

    if-nez v12, :cond_30

    aget v12, v15, v2

    if-nez v12, :cond_2d

    goto :goto_25

    :cond_2d
    iget-object v2, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v3, v2

    array-length v12, v15

    add-int v28, v3, v12

    move-object/from16 v33, v2

    const/16 v22, 0x1

    add-int/lit8 v2, v28, -0x1

    new-array v2, v2, [I

    move-object/from16 v28, v15

    const/4 v15, 0x0

    :goto_23
    if-ge v15, v3, :cond_2f

    move/from16 v34, v3

    aget v3, v33, v15

    move/from16 v35, v15

    const/4 v15, 0x0

    :goto_24
    if-ge v15, v12, :cond_2e

    add-int v36, v35, v15

    aget v37, v2, v36

    move/from16 v38, v12

    aget v12, v28, v15

    invoke-virtual {v7, v3, v12}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v12

    xor-int v12, v37, v12

    aput v12, v2, v36

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v38

    goto :goto_24

    :cond_2e
    move/from16 v38, v12

    add-int/lit8 v15, v35, 0x1

    move/from16 v3, v34

    goto :goto_23

    :cond_2f
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v3, v7, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v2, v3

    goto :goto_26

    :cond_30
    :goto_25
    iget-object v2, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    :goto_26
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v29, 0x1

    move-object/from16 v28, v2

    move-object/from16 v12, v27

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v7, v32

    goto/16 :goto_1f

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v7

    move-object/from16 v27, v12

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v3, v5, [I

    const/4 v7, 0x0

    invoke-static {v8, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v5, :cond_43

    const/4 v15, 0x1

    if-le v5, v15, :cond_35

    aget v12, v3, v7

    if-nez v12, :cond_35

    const/4 v7, 0x1

    :goto_27
    if-ge v7, v5, :cond_33

    aget v12, v3, v7

    if-nez v12, :cond_33

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_33
    if-ne v7, v5, :cond_34

    const/4 v12, 0x0

    filled-new-array {v12}, [I

    move-result-object v3

    goto :goto_28

    :cond_34
    const/4 v12, 0x0

    sub-int v13, v5, v7

    new-array v15, v13, [I

    invoke-static {v3, v7, v15, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v15

    :cond_35
    :goto_28
    if-ltz v4, :cond_42

    array-length v7, v3

    add-int v12, v7, v4

    new-array v12, v12, [I

    const/4 v13, 0x0

    :goto_29
    if-ge v13, v7, :cond_36

    aget v15, v3, v13

    move-object/from16 v28, v3

    const/4 v3, 0x1

    invoke-virtual {v11, v15, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v15

    aput v15, v12, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v28

    goto :goto_29

    :cond_36
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v3, v11, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iget-object v7, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v12, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v13, v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    if-eqz v7, :cond_41

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v1

    array-length v7, v12

    const/16 v22, 0x1

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    aget v1, v12, v7

    if-eqz v1, :cond_3f

    iget-object v7, v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    iget v15, v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    move/from16 v28, v1

    iget-object v1, v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v1, v1, v28

    sub-int/2addr v15, v1

    add-int/lit8 v15, v15, -0x1

    aget v1, v7, v15

    move-object v7, v13

    :goto_2a
    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v15

    move/from16 v28, v5

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    if-lt v15, v5, :cond_3c

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v15

    sub-int/2addr v5, v15

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v15

    move/from16 v29, v5

    iget-object v5, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move-object/from16 v33, v13

    array-length v13, v5

    const/16 v22, 0x1

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v15

    aget v5, v5, v13

    invoke-virtual {v11, v5, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v5

    iget-object v13, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-ltz v29, :cond_3b

    if-nez v5, :cond_37

    iget-object v13, v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move/from16 v34, v1

    move-object/from16 v35, v2

    goto :goto_2c

    :cond_37
    array-length v15, v12

    move/from16 v34, v1

    add-int v1, v15, v29

    new-array v1, v1, [I

    move-object/from16 v35, v2

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v15, :cond_38

    move/from16 v36, v2

    aget v2, v12, v36

    invoke-virtual {v13, v2, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v2

    aput v2, v1, v36

    add-int/lit8 v2, v36, 0x1

    goto :goto_2b

    :cond_38
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v2, v13, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v13, v2

    :goto_2c
    if-ltz v29, :cond_3a

    if-nez v5, :cond_39

    move-object/from16 v2, v33

    goto :goto_2d

    :cond_39
    add-int/lit8 v1, v29, 0x1

    new-array v1, v1, [I

    const/16 v17, 0x0

    aput v5, v1, v17

    new-instance v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v2, v11, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    :goto_2d
    invoke-virtual {v7, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    invoke-virtual {v3, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v3

    move/from16 v5, v28

    move-object/from16 v13, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    goto/16 :goto_2a

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3c
    filled-new-array {v7, v3}, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    const/16 v22, 0x1

    aget-object v1, v1, v22

    iget-object v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v2, v1

    sub-int v2, v4, v2

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v2, :cond_3d

    add-int v5, v28, v3

    const/4 v7, 0x0

    aput v7, v8, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3d
    const/4 v7, 0x0

    add-int v5, v28, v2

    array-length v2, v1

    invoke-static {v1, v7, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v4, [B

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v4, :cond_3e

    add-int v3, v6, v2

    aget v3, v8, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3e
    new-instance v2, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v2, v9, v1}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v17, 0x0

    aget v1, v26, v17

    add-int v7, v32, v1

    add-int/lit8 v4, v20, 0x1

    move/from16 v13, v21

    move-object/from16 v1, v23

    move/from16 v8, v24

    move/from16 v11, v25

    move-object/from16 v12, v27

    move/from16 v2, v30

    move/from16 v3, v31

    const/4 v5, -0x1

    const/4 v6, 0x1

    goto/16 :goto_1a

    :cond_3f
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    move/from16 v30, v2

    move v2, v3

    move/from16 v25, v11

    move-object/from16 v27, v12

    move/from16 v21, v13

    const/16 p0, 0x11

    if-ne v2, v7, :cond_7d

    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v8, 0x0

    :goto_30
    if-ge v8, v10, :cond_4d

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v3, v3, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    array-length v4, v3

    if-ge v8, v4, :cond_4b

    aget-byte v3, v3, v8

    const/16 v9, 0x8

    invoke-virtual {v1, v3, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_31

    :cond_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_4d
    const/4 v8, 0x0

    :goto_32
    if-ge v8, v14, :cond_50

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4e
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v3, v3, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    array-length v4, v3

    if-ge v8, v4, :cond_4e

    aget-byte v3, v3, v8

    const/16 v9, 0x8

    invoke-virtual {v1, v3, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_33

    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_50
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    move/from16 v2, v30

    if-ne v2, v0, :cond_7c

    move-object/from16 v0, v27

    iget v2, v0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x11

    new-instance v3, Landroidx/compose/runtime/OffsetApplier;

    invoke-direct {v3, v2, v2}, Landroidx/compose/runtime/OffsetApplier;-><init>(II)V

    iget v2, v3, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    iget v4, v3, Landroidx/compose/runtime/OffsetApplier;->offset:I

    const v5, 0x7fffffff

    const/4 v6, -0x1

    const/4 v8, 0x0

    :goto_34
    const/16 v11, 0x8

    if-ge v8, v11, :cond_6f

    const/4 v15, 0x1

    invoke-static {v1, v15, v0, v8, v3}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/decoder/Version;ILandroidx/compose/runtime/OffsetApplier;)V

    invoke-static {v3, v15}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Landroidx/compose/runtime/OffsetApplier;Z)I

    move-result v7

    const/4 v12, 0x0

    invoke-static {v3, v12}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Landroidx/compose/runtime/OffsetApplier;Z)I

    move-result v9

    add-int/2addr v9, v7

    iget-object v7, v3, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast v7, [[B

    move v10, v12

    move v13, v10

    :goto_35
    add-int/lit8 v14, v2, -0x1

    if-ge v10, v14, :cond_53

    aget-object v14, v7, v10

    move v15, v13

    move v13, v12

    :goto_36
    add-int/lit8 v11, v4, -0x1

    if-ge v13, v11, :cond_52

    aget-byte v11, v14, v13

    add-int/lit8 v17, v13, 0x1

    aget-byte v12, v14, v17

    if-ne v11, v12, :cond_51

    add-int/lit8 v12, v10, 0x1

    aget-object v12, v7, v12

    aget-byte v13, v12, v13

    if-ne v11, v13, :cond_51

    aget-byte v12, v12, v17

    if-ne v11, v12, :cond_51

    add-int/lit8 v15, v15, 0x1

    :cond_51
    move/from16 v13, v17

    const/16 v11, 0x8

    const/4 v12, 0x0

    goto :goto_36

    :cond_52
    add-int/lit8 v10, v10, 0x1

    move v13, v15

    const/16 v11, 0x8

    const/4 v12, 0x0

    goto :goto_35

    :cond_53
    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_37
    if-ge v9, v2, :cond_6a

    move v11, v10

    const/4 v10, 0x0

    :goto_38
    if-ge v10, v4, :cond_69

    aget-object v12, v7, v9

    add-int/lit8 v14, v10, 0x6

    if-ge v14, v4, :cond_5d

    aget-byte v15, v12, v10

    move/from16 v17, v8

    const/4 v8, 0x1

    if-ne v15, v8, :cond_5e

    add-int/lit8 v15, v10, 0x1

    aget-byte v15, v12, v15

    if-nez v15, :cond_5e

    add-int/lit8 v15, v10, 0x2

    aget-byte v15, v12, v15

    if-ne v15, v8, :cond_5e

    add-int/lit8 v15, v10, 0x3

    aget-byte v15, v12, v15

    if-ne v15, v8, :cond_5e

    add-int/lit8 v15, v10, 0x4

    aget-byte v15, v12, v15

    if-ne v15, v8, :cond_5e

    add-int/lit8 v15, v10, 0x5

    aget-byte v15, v12, v15

    if-nez v15, :cond_5e

    aget-byte v14, v12, v14

    if-ne v14, v8, :cond_5e

    add-int/lit8 v14, v10, -0x4

    if-ltz v14, :cond_57

    array-length v15, v12

    if-ge v15, v10, :cond_54

    goto :goto_3a

    :cond_54
    :goto_39
    if-ge v14, v10, :cond_56

    aget-byte v15, v12, v14

    if-ne v15, v8, :cond_55

    goto :goto_3a

    :cond_55
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_39

    :cond_56
    const/4 v8, 0x1

    goto :goto_3b

    :cond_57
    :goto_3a
    const/4 v8, 0x0

    :goto_3b
    if-nez v8, :cond_5c

    add-int/lit8 v8, v10, 0x7

    add-int/lit8 v14, v10, 0xb

    if-ltz v8, :cond_5b

    array-length v15, v12

    if-ge v15, v14, :cond_58

    goto :goto_3d

    :cond_58
    :goto_3c
    if-ge v8, v14, :cond_5a

    aget-byte v15, v12, v8

    move/from16 v23, v8

    const/4 v8, 0x1

    if-ne v15, v8, :cond_59

    goto :goto_3d

    :cond_59
    add-int/lit8 v8, v23, 0x1

    goto :goto_3c

    :cond_5a
    const/4 v8, 0x1

    goto :goto_3e

    :cond_5b
    :goto_3d
    const/4 v8, 0x0

    :goto_3e
    if-eqz v8, :cond_5e

    :cond_5c
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    :cond_5d
    move/from16 v17, v8

    :cond_5e
    :goto_3f
    add-int/lit8 v8, v9, 0x6

    if-ge v8, v2, :cond_68

    aget-object v12, v7, v9

    aget-byte v12, v12, v10

    const/4 v15, 0x1

    if-ne v12, v15, :cond_68

    add-int/lit8 v12, v9, 0x1

    aget-object v12, v7, v12

    aget-byte v12, v12, v10

    if-nez v12, :cond_68

    add-int/lit8 v12, v9, 0x2

    aget-object v12, v7, v12

    aget-byte v12, v12, v10

    if-ne v12, v15, :cond_68

    add-int/lit8 v12, v9, 0x3

    aget-object v12, v7, v12

    aget-byte v12, v12, v10

    if-ne v12, v15, :cond_68

    add-int/lit8 v12, v9, 0x4

    aget-object v12, v7, v12

    aget-byte v12, v12, v10

    if-ne v12, v15, :cond_68

    add-int/lit8 v12, v9, 0x5

    aget-object v12, v7, v12

    aget-byte v12, v12, v10

    if-nez v12, :cond_68

    aget-object v8, v7, v8

    aget-byte v8, v8, v10

    if-ne v8, v15, :cond_68

    add-int/lit8 v8, v9, -0x4

    if-ltz v8, :cond_60

    array-length v12, v7

    if-ge v12, v9, :cond_5f

    goto :goto_41

    :cond_5f
    :goto_40
    if-ge v8, v9, :cond_62

    aget-object v12, v7, v8

    aget-byte v12, v12, v10

    if-ne v12, v15, :cond_61

    :cond_60
    :goto_41
    const/4 v8, 0x0

    goto :goto_42

    :cond_61
    add-int/lit8 v8, v8, 0x1

    const/4 v15, 0x1

    goto :goto_40

    :cond_62
    const/4 v8, 0x1

    :goto_42
    if-nez v8, :cond_67

    add-int/lit8 v8, v9, 0x7

    add-int/lit8 v12, v9, 0xb

    if-ltz v8, :cond_64

    array-length v14, v7

    if-ge v14, v12, :cond_63

    goto :goto_44

    :cond_63
    :goto_43
    if-ge v8, v12, :cond_66

    aget-object v14, v7, v8

    aget-byte v14, v14, v10

    const/4 v15, 0x1

    if-ne v14, v15, :cond_65

    :cond_64
    :goto_44
    const/4 v8, 0x0

    goto :goto_45

    :cond_65
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    :cond_66
    const/4 v8, 0x1

    :goto_45
    if-eqz v8, :cond_68

    :cond_67
    add-int/lit8 v11, v11, 0x1

    :cond_68
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v17

    goto/16 :goto_38

    :cond_69
    move/from16 v17, v8

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto/16 :goto_37

    :cond_6a
    move/from16 v17, v8

    mul-int/lit8 v10, v10, 0x28

    add-int/2addr v10, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_46
    if-ge v8, v2, :cond_6d

    aget-object v11, v7, v8

    move v12, v9

    const/4 v9, 0x0

    :goto_47
    if-ge v9, v4, :cond_6c

    aget-byte v13, v11, v9

    const/4 v15, 0x1

    if-ne v13, v15, :cond_6b

    add-int/lit8 v12, v12, 0x1

    :cond_6b
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    :cond_6c
    add-int/lit8 v8, v8, 0x1

    move v9, v12

    goto :goto_46

    :cond_6d
    mul-int v7, v2, v4

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    div-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v10

    if-ge v8, v5, :cond_6e

    move v5, v8

    move/from16 v6, v17

    :cond_6e
    add-int/lit8 v8, v17, 0x1

    goto/16 :goto_34

    :cond_6f
    const/4 v15, 0x1

    invoke-static {v1, v15, v0, v6, v3}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/decoder/Version;ILandroidx/compose/runtime/OffsetApplier;)V

    add-int/lit8 v0, v4, 0x8

    add-int/lit8 v1, v2, 0x8

    const/16 v5, 0x15e

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int v0, v6, v0

    div-int v1, v7, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v1, v4, v0

    sub-int v1, v6, v1

    const/16 v18, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int v8, v2, v0

    sub-int v8, v7, v8

    div-int/lit8 v8, v8, 0x2

    const/4 v15, 0x1

    if-lt v6, v15, :cond_7b

    if-lt v7, v15, :cond_7b

    add-int/lit8 v9, v6, 0x1f

    div-int/lit8 v9, v9, 0x20

    mul-int v10, v9, v7

    new-array v10, v10, [I

    move v11, v8

    const/4 v8, 0x0

    :goto_48
    if-ge v8, v2, :cond_76

    move v13, v1

    const/4 v12, 0x0

    :goto_49
    if-ge v12, v4, :cond_75

    invoke-virtual {v3, v12, v8}, Landroidx/compose/runtime/OffsetApplier;->get(II)B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_71

    if-ltz v11, :cond_74

    if-ltz v13, :cond_74

    if-lt v0, v15, :cond_73

    if-lt v0, v15, :cond_73

    add-int v14, v13, v0

    add-int v15, v11, v0

    if-gt v15, v7, :cond_72

    if-gt v14, v6, :cond_72

    move v5, v11

    :goto_4a
    if-ge v5, v15, :cond_71

    mul-int v17, v5, v9

    move/from16 v19, v0

    move v0, v13

    :goto_4b
    if-ge v0, v14, :cond_70

    div-int/lit8 v18, v0, 0x20

    add-int v18, v18, v17

    aget v21, v10, v18

    and-int/lit8 v23, v0, 0x1f

    const/16 v22, 0x1

    shl-int v23, v22, v23

    or-int v21, v21, v23

    aput v21, v10, v18

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_70
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v19

    goto :goto_4a

    :cond_71
    move/from16 v19, v0

    goto :goto_4c

    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4c
    add-int/lit8 v12, v12, 0x1

    add-int v13, v13, v19

    move/from16 v0, v19

    const/16 v5, 0x15e

    goto :goto_49

    :cond_75
    move/from16 v19, v0

    add-int/lit8 v8, v8, 0x1

    add-int v11, v11, v19

    const/16 v5, 0x15e

    goto :goto_48

    :cond_76
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x15e

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v8, 0x0

    :goto_4d
    if-ge v8, v1, :cond_7a

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v1, :cond_79

    mul-int v3, v2, v9

    div-int/lit8 v4, v8, 0x20

    add-int/2addr v4, v3

    aget v3, v10, v4

    and-int/lit8 v4, v8, 0x1f

    ushr-int/2addr v3, v4

    const/16 v22, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_77

    const/4 v3, 0x1

    goto :goto_4f

    :cond_77
    const/4 v3, 0x0

    :goto_4f
    if-eqz v3, :cond_78

    const/high16 v3, -0x1000000

    goto :goto_50

    :cond_78
    const/4 v3, -0x1

    :goto_50
    invoke-virtual {v0, v8, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_79
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    :cond_7a
    return-object v0

    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v3, "Interleaving error: "

    const-string v4, " and "

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " differ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    move-object/from16 v23, v1

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v23

    iget v2, v2, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_82
    move/from16 v22, v6

    move/from16 v25, v11

    move/from16 v21, v13

    const/16 v18, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v5, -0x1

    goto/16 :goto_f

    :cond_83
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    move/from16 v22, v6

    move/from16 v25, v11

    move/from16 v21, v13

    const/16 v18, 0x2

    add-int/lit8 v3, v3, 0x1

    const/4 v5, -0x1

    goto/16 :goto_e

    :cond_85
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const-string v2, "hidden"

    const-string v3, "enctype"

    const-string/jumbo v4, "password"

    const-string/jumbo v5, "ssid"

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v1, v2, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;

    sget-object v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v7, v8, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->getCopyString$1()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120069

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_2

    new-instance v8, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-static {v7, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_1

    :cond_2
    move-object v8, v6

    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "android.intent.extra.TEXT"

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v4, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI:S:"

    const-string v5, ";"

    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "P:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "T:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    if-eqz v3, :cond_6

    const-string v3, "H:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "./"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const-string v9, ".jpg"

    invoke-static {v5, p0, v9}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->generateQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v5

    invoke-virtual {v2, v4, v5, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v4, "com.motorola.camera5.FileProvider"

    invoke-static {v2, v4, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string v2, "WifiAp"

    const-string v3, "Error generating QR code"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "text/plain"

    invoke-virtual {v7, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    invoke-static {v7, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getCopyString$1()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f1200a0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f12009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    if-eqz v3, :cond_0

    const v3, 0x7f12009d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, 0x7f12009c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v0, v2, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f12009f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f12009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->getCopyString$1()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getFieldsCount()I
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->WifiAp:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1200a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiAp{ssid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', networkEncryption=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
