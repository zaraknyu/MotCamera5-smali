.class public final La/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:[B

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Z


# direct methods
.method public constructor <init>(Landroid/media/Image;La/B;)V
    .locals 12

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v4, "getBuffer(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v11

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v11

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    if-eqz p2, :cond_0

    iget-object p1, p2, La/B;->f:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, La/B;->a:I

    iput v1, p0, La/B;->b:I

    iput v5, p0, La/B;->c:I

    iput v8, p0, La/B;->d:I

    iput v9, p0, La/B;->e:I

    filled-new-array {v2, v6, v10}, [Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iput v0, p0, La/B;->g:I

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iput v1, p0, La/B;->h:I

    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    iput v4, p0, La/B;->i:I

    add-int v5, v0, v1

    add-int v8, v5, v4

    if-eqz p1, :cond_2

    array-length v9, p1

    if-ne v9, v8, :cond_2

    goto :goto_2

    :cond_2
    new-array p1, v8, [B

    :goto_2
    iput-object p1, p0, La/B;->f:[B

    invoke-virtual {v2, p1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v10, p1, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_3

    :cond_3
    iget p1, p0, La/B;->g:I

    if-lez p1, :cond_4

    iget p1, p0, La/B;->h:I

    if-lez p1, :cond_4

    iget p1, p0, La/B;->i:I

    if-lez p1, :cond_4

    move v3, v7

    :cond_4
    iput-boolean v3, p0, La/B;->j:Z

    return-void
.end method
