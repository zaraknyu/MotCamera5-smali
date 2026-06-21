.class public final Landroidx/media3/common/util/TimedValueQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public first:I

.field public size:I

.field public timestamps:Ljava/lang/Object;

.field public values:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([F[FII)V
    .locals 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p3, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    .line 7
    array-length p3, p1

    int-to-long v0, p3

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    array-length p3, p2

    int-to-long v2, p3

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    .line 8
    iput-object p1, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    .line 10
    iput p4, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    return-void
.end method

.method public static computeEnumSize(II)I
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/util/TimedValueQueue;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Landroidx/media3/common/util/TimedValueQueue;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static computeInt32Size(II)I
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/util/TimedValueQueue;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Landroidx/media3/common/util/TimedValueQueue;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Landroidx/media3/common/util/TimedValueQueue;->computeRawVarint32Size(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/util/TimedValueQueue;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Landroidx/media3/common/util/TimedValueQueue;->computeMessageSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static computeMessageSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Landroidx/media3/common/util/TimedValueQueue;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static computeTagSize(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Landroidx/media3/common/util/TimedValueQueue;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Landroidx/media3/common/util/TimedValueQueue;
    .locals 1

    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    new-array p1, p1, [B

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    const/4 p0, 0x0

    iput p0, v0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    array-length p0, p1

    iput p0, v0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(JLjava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    if-lez v0, :cond_0

    iget v1, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->clear()V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->doubleCapacityIfFull()V

    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    iget v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    iget-object v3, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v3, [J

    aput-wide p1, v3, v0

    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    iput v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public doubleCapacityIfFull()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    if-ge v1, v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    sub-int/2addr v0, v3

    iget-object v4, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v4, [J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    if-lez v3, :cond_1

    iget-object v4, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v4, [J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    iput v5, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v0, Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->refreshBuffer()V

    :cond_0
    return-void
.end method

.method public poll(JZ)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    iget v3, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    if-lez v3, :cond_1

    iget-object v3, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v3, [J

    iget v4, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    aget-wide v3, v3, v4

    sub-long v3, p1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    if-nez p3, :cond_1

    neg-long v5, v3

    cmp-long v1, v5, v1

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->popFirst()Ljava/lang/Object;

    move-result-object v0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public declared-synchronized pollFirst()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->popFirst()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized pollFloor(J)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/common/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public popFirst()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v2, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    aget-object v3, v0, v2

    const/4 v4, 0x0

    aput-object v4, v0, v2

    add-int/2addr v2, v1

    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    return-object v3
.end method

.method public refreshBuffer()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v0, Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    return-void

    :cond_0
    new-instance p0, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setState(I)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput p1, v0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    const/16 v1, 0xe

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    :goto_0
    const/16 v0, 0xa

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iput v1, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    iput v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    :cond_1
    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gestureFilter:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->prevGesture:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->duration:J

    return-void
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeEnum(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/TimedValueQueue;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/TimedValueQueue;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint64(J)V

    return-void
.end method

.method public writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/TimedValueQueue;->writeMessageNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    return-void
.end method

.method public writeMessageNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V
    .locals 1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->writeTo(Landroidx/media3/common/util/TimedValueQueue;)V

    return-void
.end method

.method public writeRawByte(I)V
    .locals 3

    int-to-byte p1, p1

    iget v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    iget v1, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->refreshBuffer()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeRawBytes(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    iget v3, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    sub-int v4, v2, v3

    const/4 v5, 0x0

    if-lt v4, v0, :cond_0

    .line 3
    invoke-virtual {p1, v1, v5, v3, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->copyTo([BIII)V

    .line 4
    iget p1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1, v1, v5, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->copyTo([BIII)V

    sub-int/2addr v0, v4

    .line 6
    iput v2, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->refreshBuffer()V

    if-gt v0, v2, :cond_1

    .line 8
    invoke-virtual {p1, v1, v4, v5, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->copyTo([BIII)V

    .line 9
    iput v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object p0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    if-ltz v4, :cond_5

    if-ltz v0, :cond_4

    add-int v1, v4, v0

    .line 11
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v2

    if-gt v1, v2, :cond_3

    if-lez v0, :cond_2

    .line 12
    invoke-virtual {p1, p0, v4, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    :cond_2
    :goto_0
    return-void

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source end offset exceeded: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length < 0: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x1e

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source offset < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeRawBytes([B)V
    .locals 6

    .line 16
    array-length v0, p1

    .line 17
    iget-object v1, p0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    iget v3, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    sub-int v4, v2, v3

    const/4 v5, 0x0

    if-lt v4, v0, :cond_0

    .line 18
    invoke-static {p1, v5, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget p1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    return-void

    .line 20
    :cond_0
    invoke-static {p1, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 21
    iput v2, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    .line 22
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->refreshBuffer()V

    if-gt v0, v2, :cond_1

    .line 23
    invoke-static {p1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iput v0, p0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public writeRawLittleEndian32(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 2

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeTag(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    return-void
.end method
