.class public final synthetic Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;
.implements Landroidx/work/multiprocess/RemoteDispatcher;
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Landroidx/media3/exoplayer/PlayerMessage$Target;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    .line 3
    const/16 p1, 0x9

    iput p1, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/ImmutableList$Builder;

    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lcom/google/gson/internal/UnsafeAllocator;->INSTANCE:Lcom/google/gson/internal/UnsafeAllocator;

    invoke-virtual {v0, p0}, Lcom/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    check-cast p0, Ljava/lang/reflect/Constructor;

    const-string v0, "\' with no args"

    const-string v1, "Failed to invoke constructor \'"

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected IllegalAccessException occurred (Gson 2.13.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public consume(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/MenuHostHelper;

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast p0, [Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, p0}, Landroidx/media3/extractor/AacUtil;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public create(ILandroidx/media3/common/TrackGroup;[I)Lcom/google/common/collect/RegularImmutableList;
    .locals 6

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget v0, p2, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v3, v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    aget v5, p3, v3

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;I)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 2

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/lang/Object;

    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    check-cast p1, Landroidx/work/multiprocess/IListenableWorkerImpl;

    const-string v0, "iListenableWorkerImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->workerParameters:Landroidx/work/WorkerParameters;

    iget-object v1, v1, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "workerParameters.id.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/ListenableWorker;->mStopReason:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    const-string v0, "marshall(interruptRequest)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/multiprocess/IListenableWorkerImpl$Stub$Proxy;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    sget-object v1, Landroidx/work/multiprocess/IListenableWorkerImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p1, Landroidx/work/multiprocess/IListenableWorkerImpl$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getScore(Ljava/lang/Object;)I
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Format;

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    invoke-virtual {p1, p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isCodecProfileAndLevelSupported(Landroidx/media3/common/Format;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isCompressedAudioBitDepthSupported(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    new-instance p2, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {p2, p1, p1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    :cond_1
    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/DecoderCounters;

    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget v0, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    iget v1, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    iget v0, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    iget p0, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, p0

    iput v0, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/PlaybackException;

    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iput-object p0, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingPlayerError:Landroidx/media3/common/PlaybackException;

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Metadata;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMetadata(Landroidx/media3/common/Metadata;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/text/CueGroup;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/TrackSelectionParameters;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/MediaMetadata;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 10

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/MetadataFragment;

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_9

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/fragments/MetadataFragment;->release()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->scale:F

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p0

    :goto_2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Lcom/motorola/camera/PermissionCallback;

    const/16 v5, 0xa

    invoke-direct {v4, v5, v1}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v5, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v5, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/PermissionCallback;->parseMarker(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    const-string v6, "Orientation"

    invoke-virtual {v1, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    const/16 v6, 0x5a

    goto :goto_4

    :cond_2
    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    const/16 v6, 0xb4

    goto :goto_4

    :cond_3
    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    const/16 v6, 0x10e

    goto :goto_4

    :cond_4
    :goto_3
    move v6, v3

    :goto_4
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->isUltraHdr()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    invoke-static {v2}, Lcom/motorola/camera/mcf/MotUtil;->getSecondaryImage([B)[B

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v7

    :goto_5
    if-eqz v1, :cond_6

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    new-instance v8, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v8, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v8}, Lcom/motorola/camera/PermissionCallback;->parseMarker(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GAINMAP]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_6

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    invoke-virtual {p0, v5}, Lcom/motorola/camera/fragments/MetadataFragment;->initMarker(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p1, v7, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage1:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    if-eqz v1, :cond_7

    array-length v0, v1

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage2:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage1:Landroid/widget/ImageView;

    int-to-float v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage1:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/MetadataFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage2:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/MetadataFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage3:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/MetadataFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_8

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    :goto_8
    return-void
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "LAUNCH_STORAGE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public onPermissionRequestResult(Ljava/util/Map;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    if-eqz p1, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/MotoFeedbackHelper;->createFeedbackIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    const-string p1, "Moto feedback activity not found"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v0, 0x7f12011b

    invoke-static {v0, p0, p1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :goto_0
    return-void
.end method

.method public timeUsToTargetTime(J)J
    .locals 8

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    iget-wide p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v0, 0x1

    sub-long v6, p0, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p0

    return-wide p0
.end method
