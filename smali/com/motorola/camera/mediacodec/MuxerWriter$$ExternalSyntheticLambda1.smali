.class public final synthetic Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/mediacodec/MuxerWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/mediacodec/MuxerWriter;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/mediacodec/MuxerWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/mediacodec/MuxerWriter;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/motorola/camera/mediacodec/MuxerWriter;->startMuxer()V

    return-void

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->VIDEO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoBufferCheck:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoBuffers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v1, "MuxerWriter"

    const-string v2, "Forced wakeup from wait"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->VIDEO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoBuffers:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStartTimeUs:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iput-wide v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStartTimeUs:J

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mTargetStopTimeUs:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    iget v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoTrack:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mediacodec/MuxerWriter;->forceStop(I)V

    goto :goto_1

    :cond_3
    iput-wide v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStopTimeUs:J

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoTrack:I

    iget-object v3, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_4
    return-void

    :cond_5
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->AUDIO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioBufferCheck:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioBuffers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    :try_start_6
    const-string v1, "MuxerWriter"

    const-string v2, "Forced wakeup from wait"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->AUDIO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioBuffers:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStartTimeUs:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    iput-wide v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStartTimeUs:J

    :cond_7
    iget-wide v3, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mTargetStopTimeUs:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_8

    iget v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioTrack:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mediacodec/MuxerWriter;->forceStop(I)V

    goto :goto_4

    :cond_8
    iput-wide v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStopTimeUs:J

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioTrack:I

    iget-object v3, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_4

    :goto_5
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
