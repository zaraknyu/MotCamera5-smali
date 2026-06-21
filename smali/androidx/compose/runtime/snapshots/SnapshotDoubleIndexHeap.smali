.class public final Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public firstFreeHandle:I

.field public handles:Ljava/lang/Object;

.field public index:Ljava/lang/Object;

.field public size:I

.field public values:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(J)I
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    const/16 v3, 0xe

    const/4 v4, 0x0

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [J

    new-array v2, v2, [I

    array-length v5, v1

    invoke-static {v1, v0, v4, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v4, v4, v3, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto$default(III[I[I)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    :goto_0
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:Ljava/lang/Object;

    check-cast v1, [I

    array-length v1, v1

    iget v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    if-lt v2, v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [I

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_1

    add-int/lit8 v6, v5, 0x1

    aput v6, v2, v5

    move v5, v6

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v4, v4, v3, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto$default(III[I[I)V

    iput-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:Ljava/lang/Object;

    :cond_2
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:Ljava/lang/Object;

    check-cast v2, [I

    aget v3, v2, v1

    iput v3, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast v3, [J

    aput-wide p1, v3, v0

    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v4, [I

    aput v1, v4, v0

    aput v0, v2, v1

    :goto_2
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v3, v2

    cmp-long v4, v4, p1

    if-lez v4, :cond_3

    invoke-virtual {p0, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    move v0, v2

    goto :goto_2

    :cond_3
    return v1
.end method

.method public declared-synchronized getBitmapFromBuffer()Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast v0, Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast v1, Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBuffer(Landroid/graphics/Bitmap;)Ljava/nio/Buffer;
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast p0, Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast p0, Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getSize()Landroid/graphics/Point;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getThumbnailsAndBuffer(Landroid/content/Context;)Lkotlin/Triple;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getBitmapFromBuffer()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getBuffer(Landroid/graphics/Bitmap;)Ljava/nio/Buffer;

    move-result-object v1

    new-instance v2, Lkotlin/Triple;

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/motorola/camera/Util;->createMicroKindThumbnail(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public swap(II)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v1, [I

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:Ljava/lang/Object;

    check-cast p0, [I

    aget-wide v2, v0, p1

    aget-wide v4, v0, p2

    aput-wide v4, v0, p1

    aput-wide v2, v0, p2

    aget v0, v1, p1

    aget v2, v1, p2

    aput v2, v1, p1

    aput v0, v1, p2

    aput p1, p0, v2

    aput p2, p0, v0

    return-void
.end method
