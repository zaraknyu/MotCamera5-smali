.class public final Landroidx/media3/extractor/VorbisBitArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public bitOffset:I

.field public byteLimit:I

.field public byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    .line 17
    iput p2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    .line 18
    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    .line 5
    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 6
    iput p2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    .line 8
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    .line 14
    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    .line 11
    array-length p1, p1

    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    return-void
.end method


# virtual methods
.method public assertValidOffset()V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget p0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    return-void

    :pswitch_0
    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    if-ltz v0, :cond_3

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    if-lt v0, v1, :cond_2

    if-ne v0, v1, :cond_3

    iget p0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bitsLeft()I
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public byteAlign()V
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void
.end method

.method public canReadBits(I)Z
    .locals 4

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iget v3, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    add-int/2addr v3, p1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v3, v1

    const/4 p1, 0x7

    if-le v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    if-gt v0, v2, :cond_2

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->shouldSkipByte(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iget p0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    if-lt v2, p0, :cond_4

    if-ne v2, p0, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    return p1
.end method

.method public canReadExpGolombCodedNum()Z
    .locals 7

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iget v5, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iget v5, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    if-nez v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Landroidx/media3/extractor/VorbisBitArray;->canReadBits(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v2
.end method

.method public getBytePosition()I
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget p0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    return p0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/2addr v0, p0

    return v0
.end method

.method public readBit()Z
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    return v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    return v0

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readBits(I)I
    .locals 9

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-le v2, v5, :cond_1

    add-int/lit8 v2, v2, -0x8

    .line 3
    iput v2, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    .line 4
    iget-object v5, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v6, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int v2, v5, v2

    or-int/2addr v1, v2

    add-int/lit8 v2, v6, 0x1

    .line 5
    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->shouldSkipByte(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    add-int/2addr v6, v3

    iput v6, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v6, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v7, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v8, v2, 0x8

    shr-int/2addr v6, v8

    or-int/2addr v1, v6

    rsub-int/lit8 p1, p1, 0x20

    const/4 v6, -0x1

    ushr-int p1, v6, p1

    and-int/2addr p1, v1

    if-ne v2, v5, :cond_3

    .line 7
    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    add-int/lit8 v0, v7, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->shouldSkipByte(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    add-int/2addr v7, v3

    iput v7, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return p1

    :pswitch_0
    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_4

    .line 10
    :cond_4
    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    move v1, v0

    .line 11
    :goto_3
    iget v2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_5

    add-int/lit8 v2, v2, -0x8

    .line 12
    iput v2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 13
    iget-object v3, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v4, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_3

    .line 14
    :cond_5
    iget-object v4, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v5, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    rsub-int/lit8 p1, p1, 0x20

    const/4 v4, -0x1

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_6

    .line 15
    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 v5, v5, 0x1

    .line 16
    iput v5, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    .line 17
    :cond_6
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    move v0, p1

    :goto_4
    return v0

    .line 18
    :pswitch_1
    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 19
    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 20
    iget-object v2, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v4, 0xff

    and-int/2addr v0, v4

    iget v5, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v5

    rsub-int/lit8 v5, v1, 0x8

    shr-int v5, v4, v5

    and-int/2addr v0, v5

    :goto_5
    if-ge v1, p1, :cond_7

    add-int/lit8 v5, v3, 0x1

    .line 21
    aget-byte v3, v2, v3

    and-int/2addr v3, v4

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_5

    :cond_7
    rsub-int/lit8 v1, p1, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readBits(I[B)V
    .locals 9

    shr-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v2, v0, :cond_0

    .line 23
    iget-object v5, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v6, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    aget-byte v6, v5, v6

    iget v8, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    shl-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    .line 24
    aget-byte v5, v5, v7

    and-int/2addr v3, v5

    sub-int/2addr v4, v8

    shr-int/2addr v3, v4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_1

    return-void

    .line 25
    :cond_1
    aget-byte v2, p2, v0

    shr-int v5, v3, p1

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 26
    iget v5, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int v6, v5, p1

    if-le v6, v4, :cond_2

    .line 27
    iget-object v6, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v7, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    shl-int/2addr v6, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    sub-int/2addr v5, v4

    .line 28
    iput v5, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 29
    :cond_2
    iget v2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 30
    iget-object v5, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v6, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x8

    shr-int/2addr v3, v5

    .line 31
    aget-byte v5, p2, v0

    rsub-int/lit8 p1, p1, 0x8

    shl-int p1, v3, p1

    int-to-byte p1, p1

    or-int/2addr p1, v5

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    if-ne v2, v4, :cond_3

    .line 32
    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    .line 33
    iput v6, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    .line 34
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void
.end method

.method public readBitsToLong(I)J
    .locals 5

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result p0

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    int-to-long p0, p0

    and-long/2addr p0, v0

    return-wide p0

    :cond_0
    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result p1

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result p0

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    int-to-long v3, p1

    and-long/2addr v3, v0

    shl-long v2, v3, v2

    int-to-long p0, p0

    and-long/2addr p0, v0

    or-long/2addr p0, v2

    return-wide p0
.end method

.method public readBytes(I[B)V
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    iget v2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    invoke-static {v0, v2, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void
.end method

.method public readExpGolombCodeNum()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readExpGolombCodeNum()I

    move-result p0

    rem-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, v0

    return p0
.end method

.method public reset(I[B)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    .line 3
    iput p2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    .line 4
    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    return-void
.end method

.method public reset(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    .line 5
    iget-object v0, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    .line 6
    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    .line 7
    invoke-virtual {p0, v1, v0}, Landroidx/media3/extractor/VorbisBitArray;->reset(I[B)V

    .line 8
    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    mul-int/lit8 p1, p1, 0x8

    .line 9
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void
.end method

.method public shouldSkipByte(I)Z
    .locals 2

    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    aget-byte v0, p0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget-byte p0, p0, p1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public skipBit()V
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->shouldSkipByte(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void

    :pswitch_0
    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public skipBits(I)V
    .locals 4

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iput v2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iget v3, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr p1, v1

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    if-gt v0, p1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->shouldSkipByte(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void

    :pswitch_0
    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    iget v2, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void

    :pswitch_1
    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    iget v2, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    const/4 v0, 0x7

    const/4 v2, 0x1

    if-le p1, v0, :cond_3

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    :cond_3
    iget p1, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    if-ltz p1, :cond_4

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    if-lt p1, v0, :cond_5

    if-ne p1, v0, :cond_4

    iget p0, p0, Landroidx/media3/extractor/VorbisBitArray;->bitOffset:I

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipBytes(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/VorbisBitArray;->byteLimit:I

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->assertValidOffset()V

    return-void
.end method
