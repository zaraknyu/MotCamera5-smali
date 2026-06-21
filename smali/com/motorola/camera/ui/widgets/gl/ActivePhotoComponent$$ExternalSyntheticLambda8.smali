.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;IIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$1:I

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$2:I

    iput-wide p4, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$3:J

    iput-wide p6, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$1:I

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$2:I

    iget-wide v1, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v7, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;->f$4:J

    iget-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mEngine:Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/mediacodec/MuxerWriter;

    invoke-direct {v0, v9}, Lcom/motorola/camera/mediacodec/MuxerWriter;-><init>(Lcom/motorola/camera/mediacodec/ActivePhotoEngine$VideoSaveListener;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mBufferLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-virtual {v10, v1, v2}, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->findNearestKeyFrame(J)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v13, v10, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mVideoBuffers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v14, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    move-object/from16 p0, v0

    move-wide/from16 v16, v1

    iget-wide v0, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v12, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    move-wide/from16 v18, v0

    iget-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v18, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    cmp-long v0, v18, v7

    if-gtz v0, :cond_2

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    goto :goto_0

    :cond_3
    move-object/from16 p0, v0

    move-wide/from16 v16, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_3

    :cond_4
    move-wide/from16 v1, v16

    :goto_3
    iget-object v0, v10, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mAudioBuffers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v13, v12, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v13, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v15, v13, v1

    if-ltz v15, :cond_5

    cmp-long v13, v13, v7

    if-gtz v13, :cond_5

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object v1, v3

    iget-object v3, v10, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mVideoFormat:Landroid/media/MediaFormat;

    move-object v2, v4

    iget-object v4, v10, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mAudioFormat:Landroid/media/MediaFormat;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/mediacodec/MuxerWriter;->encodeData(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/media/MediaFormat;Landroid/media/MediaFormat;IIJLcom/motorola/camera/mediacodec/ActivePhotoEngine$VideoSaveListener;)V

    invoke-virtual {v10, v0}, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->runOnExecutor(Lcom/motorola/camera/mediacodec/MuxerWriter;)V

    iget-object v1, v10, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mMuxerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v11

    return-void

    :goto_5
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
