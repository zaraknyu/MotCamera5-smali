.class public final Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mComponents:I

.field public mIndex:I

.field public mLength:I

.field public final mName:Ljava/io/Serializable;

.field public mOffset:I

.field public mStride:I

.field public mType:I

.field public mValues:Ljava/lang/Object;

.field public mVbo:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    const/16 v0, 0x1000

    .line 7
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    .line 9
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    .line 10
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    .line 11
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    .line 3
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    return-void
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBytesUntilLimit()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    add-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public popLimit(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    if-gt v0, p1, :cond_0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->recomputeBufferSizeAfterLimit()V

    return p1

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readBytes()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    check-cast v1, [B

    new-array v3, v0, [B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    invoke-direct {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;-><init>([B)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    return-object p0

    :cond_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawBytesSlowPath(I)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;-><init>([B)V

    return-object v1
.end method

.method public readInt32()I
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result p0

    return p0
.end method

.method public readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;->parsePartialFrom(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->checkLastTagWas(I)V

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->popLimit(I)V

    return-object p1

    :cond_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readRawBytesSlowPath(I)[B
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    check-cast v0, [B

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    add-int v3, v1, v2

    add-int/2addr v3, p1

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    if-gt v3, v4, :cond_8

    const/16 v3, 0x1000

    const/4 v4, 0x0

    if-ge p1, v3, :cond_3

    new-array v1, p1, [B

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    sub-int/2addr v3, v2

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    sub-int/2addr p1, v3

    if-lez p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->refillBuffer(I)V

    :cond_2
    invoke-static {v0, v4, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    return-object v1

    :cond_3
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    sub-int/2addr v5, v2

    sub-int v1, p1, v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v1, :cond_6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [B

    move v9, v4

    :goto_1
    if-ge v9, v7, :cond_5

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/lang/Object;

    check-cast v10, Ljava/io/InputStream;

    sub-int v11, v7, v9

    invoke-virtual {v10, v8, v9, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    add-int/2addr v11, v10

    iput v11, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    add-int/2addr v9, v10

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    sub-int/2addr v1, v7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-array p0, p1, [B

    invoke-static {v0, v2, p0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    invoke-static {v0, v4, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v5, v0

    goto :goto_2

    :cond_7
    return-object p0

    :cond_8
    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->skipRawBytes(I)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public readRawLittleEndian32()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->refillBuffer(I)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    check-cast v1, [B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p0, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public readRawLittleEndian64()J
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->refillBuffer(I)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    check-cast v1, [B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    aget-byte p0, v1, v0

    int-to-long v3, p0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 p0, v0, 0x1

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 p0, v0, 0x2

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x10

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x3

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x18

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x4

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x20

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x5

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x28

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x6

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x30

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte p0, v1, v0

    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readRawVarint32()I
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    check-cast v2, [B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    return v4

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    int-to-long v4, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    const-wide/16 v2, -0x80

    xor-long/2addr v2, v4

    long-to-int v0, v2

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    int-to-long v8, v1

    cmp-long v3, v8, v6

    if-ltz v3, :cond_4

    const-wide/16 v0, 0x3f80

    xor-long/2addr v0, v8

    long-to-int v0, v0

    :goto_0
    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v0, 0x4

    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    const-wide/32 v0, -0x1fc080

    xor-long/2addr v0, v4

    long-to-int v0, v0

    :goto_1
    move v1, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v0, 0x5

    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    int-to-long v5, v1

    const-wide/32 v7, 0xfe03f80

    xor-long/2addr v5, v7

    long-to-int v1, v5

    if-gez v3, :cond_7

    add-int/lit8 v3, v0, 0x6

    aget-byte v4, v2, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-gez v2, :cond_6

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_6
    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :goto_3
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    return v0
.end method

.method public readRawVarint64()J
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    check-cast v2, [B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    const-wide/16 v5, -0x80

    :goto_0
    xor-long v2, v3, v5

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v7, v0, 0x3

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    int-to-long v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/16 v0, 0x3f80

    :goto_1
    xor-long v2, v3, v0

    :goto_2
    move v1, v7

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x4

    aget-byte v7, v2, v7

    shl-int/lit8 v7, v7, 0x15

    int-to-long v7, v7

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_5

    const-wide/32 v5, -0x1fc080

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v0, 0x5

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x1c

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide/32 v0, 0xfe03f80

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x6

    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x23

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_7

    const-wide v5, -0x7f01fc080L

    goto :goto_0

    :cond_7
    add-int/lit8 v7, v0, 0x7

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x2a

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_8

    const-wide v0, 0x3f80fe03f80L

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v0, 0x8

    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x31

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_9

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_0

    :cond_9
    add-int/lit8 v7, v0, 0x9

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_b

    add-int/lit8 v1, v0, 0xa

    aget-byte v0, v2, v7

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_a

    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move-wide v2, v3

    goto :goto_4

    :cond_b
    move-wide v2, v3

    goto/16 :goto_2

    :goto_4
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    return-wide v2
.end method

.method public readRawVarint64SlowPath()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->refillBuffer(I)V

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    check-cast v3, [B

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    aget-byte v3, v3, v4

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    const-string v0, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readTag()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    ushr-int/lit8 p0, v0, 0x3

    if-eqz p0, :cond_1

    return v0

    :cond_1
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    const-string v0, "Protocol message contained an invalid tag (zero)."

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public recomputeBufferSizeAfterLimit()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mOffset:I

    return-void
.end method

.method public refillBuffer(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->tryRefillBuffer(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public set(IIII)V
    .locals 0

    .line 10
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mOffset:I

    .line 11
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    .line 12
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    const/16 p1, 0x1406

    .line 13
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    .line 14
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    if-eqz p4, :cond_0

    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "vbo can\'t be 0!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(II[F)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    const/16 p1, 0x1406

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    .line 5
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    array-length v0, p3

    if-eq p2, v0, :cond_0

    .line 6
    array-length p2, p3

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/lang/Object;

    .line 8
    array-length p2, p3

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/lang/Object;

    check-cast p0, Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public skipField(ILandroidx/media3/common/util/TimedValueQueue;)Z
    .locals 4

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawLittleEndian32()I

    move-result p0

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    invoke-virtual {p2, p0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawLittleEndian32(I)V

    return v1

    :cond_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readTag()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->skipField(ILandroidx/media3/common/util/TimedValueQueue;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_4
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->checkLastTagWas(I)V

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readBytes()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    move-result-object p0

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    invoke-virtual {p2, p0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawBytes(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawLittleEndian64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    invoke-virtual {p2, v2, v3}, Landroidx/media3/common/util/TimedValueQueue;->writeRawLittleEndian64(J)V

    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    invoke-virtual {p2, v2, v3}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint64(J)V

    return v1
.end method

.method public skipRawBytes(I)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    add-int v4, v3, v1

    add-int/2addr v4, p1

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    if-gt v4, v5, :cond_2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->refillBuffer(I)V

    :goto_0
    sub-int v1, p1, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    if-le v1, v3, :cond_1

    add-int/2addr v2, v3

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->refillBuffer(I)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    return-void

    :cond_2
    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->skipRawBytes(I)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public tryRefillBuffer(I)Z
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/io/Serializable;

    check-cast v1, [B

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    add-int v3, v2, p1

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    if-le v3, v4, :cond_7

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    add-int/2addr v3, v2

    add-int/2addr v3, p1

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    const/4 v6, 0x0

    if-le v3, v5, :cond_0

    return v6

    :cond_0
    if-eqz v0, :cond_6

    if-lez v2, :cond_2

    if-le v4, v2, :cond_1

    sub-int/2addr v4, v2

    invoke-static {v1, v2, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iput v6, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    :cond_2
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, -0x1

    if-lt v0, v2, :cond_5

    array-length v1, v1

    if-gt v0, v1, :cond_5

    if-lez v0, :cond_6

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    add-int/2addr v0, p1

    const/high16 v1, 0x4000000

    sub-int/2addr v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->recomputeBufferSizeAfterLimit()V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    if-lt v0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->tryRefillBuffer(I)Z

    move-result p0

    return p0

    :cond_4
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x66

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return v6

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "refillBuffer() called when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
