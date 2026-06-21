.class public abstract Lcom/motorola/camera/saving/XmpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addAppXSegments(I[BLjava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z
    .locals 4

    invoke-static {p2}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/ByteArrayInputStream;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v2}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    add-int/lit16 p0, p0, 0xe0

    iput p0, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    array-length p0, p1

    iput p0, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    iput-object p1, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    iput-boolean v1, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->isBlob:Z

    move-object p0, v2

    :goto_0
    if-nez p0, :cond_2

    goto :goto_4

    :cond_2
    move p1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xe1

    if-ge p1, v2, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget v2, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v2, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {v2}, Lcom/motorola/camera/saving/XmpUtil;->hasXmpHeader([B)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p1, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget p1, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne p1, v3, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p2, v2

    :goto_3
    :try_start_0
    invoke-static {p3, p2}, Lcom/motorola/camera/saving/XmpUtil;->writeJpegToStream(Ljava/io/ByteArrayOutputStream;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :goto_4
    return v0
.end method

.method public static containByte([B[B)Z
    .locals 4

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p0

    array-length v3, p1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    aget-byte v1, p0, v0

    aget-byte v3, p1, v2

    if-ne v1, v3, :cond_1

    array-length v1, p1

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static createSection([B[B)Lcom/motorola/camera/saving/XmpUtil$Section;
    .locals 4

    array-length v0, p0

    const v1, 0xfde8

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x4b

    new-array v1, v1, [B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v2, p0

    invoke-static {p0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {p0}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    const/16 p1, 0xe1

    iput p1, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    add-int/lit8 v0, v0, 0x4d

    iput v0, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    iput-object v1, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static hasXmpHeader([B)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    new-array v0, v2, [B

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static parse(Ljava/io/ByteArrayInputStream;)Ljava/util/ArrayList;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    if-eq v3, v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v0

    :cond_3
    const/16 v5, 0xda

    const/4 v6, 0x0

    if-ne v3, v5, :cond_4

    :try_start_4
    new-instance v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v2}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    iput v3, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    iput v4, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v4, v3, [B

    iput-object v4, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v4, v6, v3}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v5, v4, :cond_6

    if-ne v7, v4, :cond_5

    goto :goto_2

    :cond_5
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v4, v7

    new-instance v5, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v5}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    iput v3, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    iput v4, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    add-int/lit8 v4, v4, -0x2

    new-array v3, v4, [B

    iput-object v3, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_6
    :goto_2
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-object v0

    :cond_7
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    return-object v1

    :cond_8
    :goto_3
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    return-object v0

    :goto_4
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    throw v0

    :catch_7
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    return-object v0
.end method

.method public static stripAppSegments(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/ByteArrayInputStream;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget v1, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    const/16 v2, 0xe1

    if-gt v2, v1, :cond_1

    const/16 v2, 0xef

    if-gt v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p1, p0}, Lcom/motorola/camera/saving/XmpUtil;->writeJpegToStream(Ljava/io/ByteArrayOutputStream;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static writeJpegToStream(Ljava/io/ByteArrayOutputStream;Ljava/util/ArrayList;)V
    .locals 4

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xd8

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-boolean v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->isBlob:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    iget v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    iget v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    if-lez v2, :cond_0

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeXmpMeta(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;Lcom/motorola/camera/saving/XmpData;)Z
    .locals 17

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    const/16 v4, 0x10

    const/16 v5, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    :try_start_0
    new-instance v8, Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-direct {v8}, Lcom/adobe/internal/xmp/options/SerializeOptions;-><init>()V

    invoke-virtual {v8, v5, v7}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    invoke-virtual {v8, v4, v7}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    invoke-static {v3, v8}, Lcom/adobe/internal/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/options/SerializeOptions;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v6

    :goto_0
    if-nez v3, :cond_1

    goto/16 :goto_e

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    new-instance v10, Ljava/util/Formatter;

    invoke-direct {v10, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    array-length v11, v9

    move v12, v2

    :goto_1
    if-ge v12, v11, :cond_2

    aget-byte v13, v9, v12

    const-string v14, "%02x"

    add-int/lit16 v13, v13, 0x100

    rem-int/lit16 v13, v13, 0x100

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v14, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :catch_1
    move-object v8, v6

    :goto_2
    :try_start_2
    const-string v9, "http://ns.adobe.com/xmp/note/"

    const-string v10, "HasExtendedXMP"

    invoke-virtual {v1, v9, v10, v8, v6}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    :try_end_2
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v3

    const v11, 0xfde8

    div-int/2addr v10, v11

    new-array v12, v11, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/16 v14, 0x4b

    new-array v14, v14, [B

    const-string v15, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v6, 0x23

    invoke-static {v15, v2, v14, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    move/from16 v16, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v15, v2, v14, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    const/4 v11, 0x4

    new-array v15, v11, [B

    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v2, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-static {v15, v2, v14, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x27

    new-array v4, v11, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    move v6, v2

    :goto_3
    if-ge v6, v10, :cond_3

    mul-int v15, v6, v16

    invoke-virtual {v5, v2, v15}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-static {v4, v2, v14, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v12, v14}, Lcom/motorola/camera/saving/XmpUtil;->createSection([B[B)Lcom/motorola/camera/saving/XmpUtil$Section;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    array-length v3, v3

    mul-int v10, v10, v16

    sub-int/2addr v3, v10

    if-lez v3, :cond_5

    invoke-virtual {v5, v2, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-static {v4, v2, v14, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v3, [B

    invoke-virtual {v13, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v3, v14}, Lcom/motorola/camera/saving/XmpUtil;->createSection([B[B)Lcom/motorola/camera/saving/XmpUtil$Section;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :cond_5
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/ByteArrayInputStream;)Ljava/util/ArrayList;

    move-result-object v3

    :try_start_3
    new-instance v4, Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-direct {v4}, Lcom/adobe/internal/xmp/options/SerializeOptions;-><init>()V

    const/16 v5, 0x40

    invoke-virtual {v4, v5, v7}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v7}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    invoke-static {v1, v4}, Lcom/adobe/internal/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/options/SerializeOptions;)[B

    move-result-object v1
    :try_end_3
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    const/4 v1, 0x0

    :goto_5
    const/16 v4, 0xe1

    if-nez v1, :cond_6

    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    array-length v5, v1

    const v6, 0xffde

    if-le v5, v6, :cond_7

    goto :goto_6

    :cond_7
    array-length v5, v1

    add-int/lit8 v6, v5, 0x1d

    new-array v6, v6, [B

    const-string v8, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v10, 0x1d

    invoke-static {v8, v2, v6, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v1

    invoke-static {v1, v2, v6, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v1}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    iput v4, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    add-int/lit8 v5, v5, 0x1f

    iput v5, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    iput-object v6, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    :goto_7
    if-nez v1, :cond_8

    goto/16 :goto_e

    :cond_8
    iget-object v0, v0, Lcom/motorola/camera/saving/XmpData;->mGainMapXmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-eqz v0, :cond_a

    move v0, v7

    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget v5, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne v5, v4, :cond_9

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v5, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {v5}, Lcom/motorola/camera/saving/XmpUtil;->hasXmpHeader([B)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v5, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->GAINMAP_TAG:[B

    invoke-static {v5, v6}, Lcom/motorola/camera/saving/XmpUtil;->containByte([B[B)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v7, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget v0, v0, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne v0, v4, :cond_d

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v0, v0, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    array-length v4, v0

    const/4 v5, 0x6

    if-ge v4, v5, :cond_c

    move v0, v2

    goto :goto_9

    :cond_c
    new-array v4, v5, [B

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v4, "Exif\u0000\u0000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_9
    if-eqz v0, :cond_d

    move v0, v7

    goto :goto_a

    :cond_d
    move v0, v2

    :goto_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v4, v4, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {v4}, Lcom/motorola/camera/saving/XmpUtil;->hasXmpHeader([B)Z

    move-result v4

    if-eqz v4, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_f

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v6, 0x0

    :goto_c
    move-object v3, v6

    :cond_11
    :goto_d
    if-nez v3, :cond_12

    :catch_3
    :goto_e
    return v2

    :cond_12
    move-object/from16 v1, p1

    :try_start_4
    invoke-static {v1, v3}, Lcom/motorola/camera/saving/XmpUtil;->writeJpegToStream(Ljava/io/ByteArrayOutputStream;Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return v7

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_4
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return v2
.end method
