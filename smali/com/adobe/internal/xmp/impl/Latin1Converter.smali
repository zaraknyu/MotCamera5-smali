.class public abstract Lcom/adobe/internal/xmp/impl/Latin1Converter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convert(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter;
    .locals 12

    const-string v0, "UTF-8"

    invoke-virtual {p0}, Lcom/google/common/base/Splitter;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    new-array v1, v0, [B

    new-instance v2, Lcom/google/common/base/Splitter;

    iget v3, p0, Lcom/google/common/base/Splitter;->limit:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Lcom/google/common/base/Splitter;-><init>(CI)V

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/common/base/Splitter;->limit:I

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    iget v8, p0, Lcom/google/common/base/Splitter;->limit:I

    const/16 v9, 0xb

    if-ge v4, v8, :cond_7

    if-ge v4, v8, :cond_6

    iget-object v8, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v8, [B

    aget-byte v8, v8, v4

    and-int/lit16 v10, v8, 0xff

    const/16 v11, 0x80

    if-eq v5, v9, :cond_3

    const/16 v8, 0x7f

    if-ge v10, v8, :cond_0

    int-to-byte v8, v10

    iget v9, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v9}, Lcom/google/common/base/Splitter;->ensureCapacity(I)V

    iget-object v9, v2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v9, [B

    iget v10, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lcom/google/common/base/Splitter;->limit:I

    aput-byte v8, v9, v10

    goto/16 :goto_3

    :cond_0
    const/16 v8, 0xc0

    if-lt v10, v8, :cond_2

    const/4 v5, -0x1

    move v6, v5

    move v5, v10

    :goto_1
    if-ge v6, v0, :cond_1

    and-int/lit16 v8, v5, 0x80

    if-ne v8, v11, :cond_1

    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v7, 0x1

    int-to-byte v8, v10

    aput-byte v8, v1, v7

    move v7, v5

    move v5, v9

    goto :goto_3

    :cond_2
    int-to-byte v8, v10

    invoke-static {v8}, Lcom/adobe/internal/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v8

    array-length v9, v8

    iget v10, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr v10, v9

    invoke-virtual {v2, v10}, Lcom/google/common/base/Splitter;->ensureCapacity(I)V

    iget-object v10, v2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v10, [B

    iget v11, v2, Lcom/google/common/base/Splitter;->limit:I

    invoke-static {v8, v3, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr v8, v9

    iput v8, v2, Lcom/google/common/base/Splitter;->limit:I

    goto :goto_3

    :cond_3
    if-lez v6, :cond_5

    and-int/lit16 v8, v8, 0xc0

    if-ne v8, v11, :cond_5

    add-int/lit8 v8, v7, 0x1

    int-to-byte v9, v10

    aput-byte v9, v1, v7

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_4

    iget v5, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr v5, v8

    invoke-virtual {v2, v5}, Lcom/google/common/base/Splitter;->ensureCapacity(I)V

    iget-object v5, v2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v5, [B

    iget v7, v2, Lcom/google/common/base/Splitter;->limit:I

    invoke-static {v1, v3, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr v5, v8

    iput v5, v2, Lcom/google/common/base/Splitter;->limit:I

    :goto_2
    move v5, v3

    move v7, v5

    goto :goto_3

    :cond_4
    move v7, v8

    goto :goto_3

    :cond_5
    aget-byte v5, v1, v3

    invoke-static {v5}, Lcom/adobe/internal/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v5

    array-length v8, v5

    iget v9, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr v9, v8

    invoke-virtual {v2, v9}, Lcom/google/common/base/Splitter;->ensureCapacity(I)V

    iget-object v9, v2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v9, [B

    iget v10, v2, Lcom/google/common/base/Splitter;->limit:I

    invoke-static {v5, v3, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr v5, v8

    iput v5, v2, Lcom/google/common/base/Splitter;->limit:I

    sub-int/2addr v4, v7

    goto :goto_2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "The index exceeds the valid buffer area"

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-ne v5, v9, :cond_8

    move p0, v3

    :goto_4
    if-ge p0, v7, :cond_8

    aget-byte v0, v1, p0

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v0

    array-length v4, v0

    iget v5, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Lcom/google/common/base/Splitter;->ensureCapacity(I)V

    iget-object v5, v2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v5, [B

    iget v6, v2, Lcom/google/common/base/Splitter;->limit:I

    invoke-static {v0, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_8
    return-object v2

    :cond_9
    return-object p0
.end method

.method public static convertToUTF8(B)[B
    .locals 5

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    const/16 v1, 0x81

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    aput-byte p0, v1, v2

    const-string v4, "cp1252"

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-array v0, v3, [B

    const/16 v1, 0x20

    aput-byte v1, v0, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    new-array v0, v3, [B

    aput-byte p0, v0, v2

    return-object v0
.end method
