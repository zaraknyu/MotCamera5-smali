.class public final Lcom/motorola/camera/mediacodec/MuxerWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final mAudioBufferCheck:Ljava/lang/Object;

.field public static final mVideoBufferCheck:Ljava/lang/Object;


# instance fields
.field public final mAudioBuffers:Ljava/util/Vector;

.field public mAudioFormat:Landroid/media/MediaFormat;

.field public mAudioStartTimeUs:J

.field public mAudioStopTimeUs:J

.field public mAudioTrack:I

.field public mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mExecutorLock:Ljava/lang/Object;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mJobId:I

.field public mMediaMuxer:Landroid/media/MediaMuxer;

.field public mStartTimeUs:J

.field public mStopTimeUs:J

.field public mTargetStopTimeUs:J

.field public final mVideoBuffers:Ljava/util/Vector;

.field public mVideoFormat:Landroid/media/MediaFormat;

.field public mVideoPath:Ljava/lang/String;

.field public mVideoSaveListener:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$VideoSaveListener;

.field public mVideoStartTimeUs:J

.field public mVideoStopTimeUs:J

.field public mVideoTrack:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoBufferCheck:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioBufferCheck:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mediacodec/ActivePhotoEngine$VideoSaveListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStartTimeUs:J

    iput-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStartTimeUs:J

    iput-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStopTimeUs:J

    iput-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStopTimeUs:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoTrack:I

    iput v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioTrack:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutorLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoBuffers:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioBuffers:Ljava/util/Vector;

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoSaveListener:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$VideoSaveListener;

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    return-void
.end method


# virtual methods
.method public final addBufferChunk(Lcom/motorola/camera/mediacodec/BufferChunk;I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->INIT:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->VIDEO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object p2, p2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoBufferCheck:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoBuffers:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->AUDIO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object p2, p2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioBufferCheck:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioBuffers:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final encodeData(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/media/MediaFormat;Landroid/media/MediaFormat;IIJLcom/motorola/camera/mediacodec/ActivePhotoEngine$VideoSaveListener;)V
    .locals 3

    const-string v0, "_job_"

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoBuffers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioBuffers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    iput-object p3, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioFormat:Landroid/media/MediaFormat;

    iput p5, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mJobId:I

    iput-wide p7, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mTargetStopTimeUs:J

    iput-object p9, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoSaveListener:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$VideoSaveListener;

    new-instance p1, Lcom/motorola/camera/saving/FileName;

    sget-object p2, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-direct {p1, p2, p3, p4}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    sget-object p2, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile$default(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoPath:Ljava/lang/String;

    new-instance p2, Landroid/media/MediaMuxer;

    iget-object p3, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoPath:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p2, p6}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object p2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioFormat:Landroid/media/MediaFormat;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/mediacodec/MuxerWriter;->startMuxer()V

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const/4 p4, 0x1

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioFormat:Landroid/media/MediaFormat;

    if-nez p2, :cond_3

    add-int/lit8 p4, p4, 0x1

    :cond_3
    new-instance p2, Ljava/util/concurrent/CyclicBarrier;

    new-instance p3, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;

    const/4 p5, 0x2

    invoke-direct {p3, p0, p5}, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/mediacodec/MuxerWriter;I)V

    invoke-direct {p2, p4, p3}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "setup failed,filename:%s,message:%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MuxerWriter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoPath:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->INIT:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return-void
.end method

.method public final forceStop(I)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoTrack:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->VIDEO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioTrack:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->AUDIO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "MuxerWriter"

    const-string v0, "invalid track"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStopTimeUs:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_8

    iget-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStopTimeUs:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->VIDEO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->AUDIO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStartTimeUs:J

    iget-wide v4, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStartTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mStartTimeUs:J

    iget-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStopTimeUs:J

    iget-wide v4, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStopTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mStopTimeUs:J

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->INIT:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutorLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_5

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->stop()V

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    :cond_6
    iget-wide v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mStopTimeUs:J

    iget-wide v4, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mStartTimeUs:J

    sub-long v6, v0, v4

    iput-wide v2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStartTimeUs:J

    iput-wide v2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioStopTimeUs:J

    iput-wide v2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStartTimeUs:J

    iput-wide v2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoStopTimeUs:J

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoSaveListener:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$VideoSaveListener;

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoPath:Ljava/lang/String;

    iget p0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mJobId:I

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    iget-object v3, p1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mEngine:Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v3, v3, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mMuxerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mediacodec/MuxerWriter;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/analytics/AnalyticsHelper;->mActivePhotoDataManager:Lcom/google/android/gms/tasks/zzb;

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_VIDEO_START_TIMESTAMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_VIDEO_STOP_TIMESTAMP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->generateActivePhoto(I)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mVideoListeners:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_7

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->addActiveVideoToMedia(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->onVideoReady()V

    return-void

    :cond_7
    const-string p0, "ActivePhotoComponent"

    const-string p1, "onVideoSaveComplete: Null Listener entry found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public final run()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/mediacodec/MuxerWriter;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mediacodec/MuxerWriter;->runOnExecutor(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/mediacodec/MuxerWriter$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/mediacodec/MuxerWriter;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mediacodec/MuxerWriter;->runOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final runOnExecutor(Ljava/lang/Runnable;)V
    .locals 3

    const-string/jumbo v0, "trying to execute "

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "MuxerWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with stopped executor"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startMuxer()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(I)V

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoTrack:I

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioTrack:I

    iget v1, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoTrack:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->AUDIO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->VIDEO_TRACKING:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_2
    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
