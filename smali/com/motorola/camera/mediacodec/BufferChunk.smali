.class public final Lcom/motorola/camera/mediacodec/BufferChunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public bufInfo:Landroid/media/MediaCodec$BufferInfo;

.field public buffer:Ljava/nio/ByteBuffer;

.field public final codec:Landroid/media/MediaCodec;

.field public final index:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-direct {p0, v0, v0, v1}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 6
    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_1
    const/4 p3, 0x0

    .line 7
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;ILandroid/media/MediaCodec;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;ILandroid/media/MediaCodec;)V
    .locals 1

    const-string v0, "bufInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 4
    iput p3, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->index:I

    .line 5
    iput-object p4, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/motorola/camera/mediacodec/BufferChunk;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide p0, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->index:I

    iget v3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->index:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    iget-object p1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget v0, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->index:I

    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-string p0, " Offset: "

    const-string v5, " Size: "

    const-string v6, "Flag: "

    invoke-static {v0, v1, v6, p0, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " TimeUs: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
