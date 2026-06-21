.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field public final data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

.field public dataLoaded:Z

.field public final defaultDuration:I

.field public final editActions:Ljava/util/LinkedHashSet;

.field public final exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final frameRateRatio:I

.field public final handler:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

.field public final listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

.field public final messages:Ljava/util/ArrayList;

.field public final slowMotionProgressFactor:I

.field public superSlowMotionProcess:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

.field public superSlowMotionRange:[I

.field public trimRange:[I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;ILcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->defaultDuration:I

    iput-object p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget p2, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    div-int/lit8 p2, p2, 0x1e

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    new-instance p2, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 p3, 0x1c

    invoke-direct {p2, p3, p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->handler:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0080

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->slowMotionProgressFactor:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    const/4 p2, 0x0

    const/4 p3, 0x1

    filled-new-array {p2, p3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    filled-new-array {p2, p3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/LinkedHashSet;

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;)V

    invoke-direct {v1, p4, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;-><init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;)V

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v1, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p4, p3}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, p4, v2, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    iget-boolean p4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr p4, p3

    invoke-static {p4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean p3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    new-instance p4, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-direct {p4, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V

    iput-object p4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p4, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    invoke-virtual {p4, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    sget-object p2, Landroidx/media3/exoplayer/SeekParameters;->CLOSEST_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    invoke-virtual {p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p2, :cond_0

    sget-object p2, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    :cond_0
    iget-object p3, p4, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    invoke-virtual {p3, p2}, Landroidx/media3/exoplayer/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result p3

    iget-object v0, p4, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    if-nez p3, :cond_1

    iput-object p2, p4, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-object p3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v1, 0x5

    invoke-virtual {p3, v1, p2}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    :cond_1
    iget-object p2, p4, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p2, p0}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/media3/common/BasePlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    invoke-virtual {p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result p0

    iget p1, p4, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    cmpl-float p1, p1, p0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iput p0, p4, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    iget-object p1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 p3, 0x20

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    new-instance p1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;-><init>(F)V

    const/16 p0, 0x16

    invoke-virtual {p2, p0, p1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :goto_0
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare()V

    return-void
.end method


# virtual methods
.method public final getRecordingDuration()J
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 11

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v0

    iget p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->defaultDuration:I

    mul-int/lit8 v2, p1, 0x3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, v0

    div-int/lit8 p1, p1, 0x3

    :goto_0
    sget-object v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    const-string v2, "Default window is shorter than video length. Suggested window: start=0ms, end="

    const-class v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter v3

    int-to-long v4, p1

    cmp-long v6, v4, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ltz v6, :cond_1

    long-to-int p1, v0

    :try_start_0
    const-string v0, "McfStandAloneSubjectMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    move v2, v7

    :goto_1
    :try_start_1
    sget-object v6, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    iget v6, v6, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->motion:F

    const v9, 0x3da3d70a    # 0.08f

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_6

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;

    invoke-direct {v2, p1, v0, v1}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;-><init>(IJ)V

    :goto_2
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->increaseEndIfPossible()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getCloserToMidpointScore()F

    move-result p1

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getRange()Landroid/util/Pair;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_3
    :goto_3
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->isEndExceeded()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    add-int/2addr v1, v8

    iput v1, v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    :goto_4
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->increaseEndIfPossible()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->isEndExceeded()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getCloserToMidpointScore()F

    move-result v1

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getRange()Landroid/util/Pair;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    cmpl-float v5, v1, p1

    if-lez v5, :cond_3

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_3

    move p1, v1

    move-object v0, v4

    goto :goto_3

    :cond_5
    const-string p1, "McfStandAloneSubjectMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suggested window: start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "ms, end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    sub-long v9, v0, v4

    long-to-float p1, v9

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    add-long/2addr v0, v4

    long-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :try_start_2
    const-string v1, "McfStandAloneSubjectMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough motion detected. Suggested window: start="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms, end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    move-object v0, v1

    :goto_5
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v0

    long-to-int p1, v0

    filled-new-array {v7, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object v0, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->INITIALIZING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-eq v2, v3, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    iget v4, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->defaultMinRange:I

    if-le v4, v2, :cond_9

    goto :goto_6

    :cond_9
    move v2, v4

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->resetVideoPosition()V

    sget-object p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->IDLE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_7
    iput-boolean v8, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    return-void

    :goto_8
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_a
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    iget p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    return-void
.end method

.method public final processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v4, "ANALYTICS_SSMACTION"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "["

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v3, "]"

    invoke-static {p1, v3, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "ANALYTICS_SSMEDIT"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-void
.end method

.method public final resetVideoPosition()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v5, v4, v2, v3}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    return-void
.end method

.method public final schedulePlaybackSpeedChangeMessages()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/PlayerMessage;

    monitor-enter v1

    :try_start_0
    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v2, v1, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->handler:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v1

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    aget v4, v4, v3

    int-to-long v4, v4

    iget v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-boolean v6, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v6, v2

    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-wide v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v4, v2

    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v3, v1, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v4, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iget-boolean v5, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v5, v2

    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-object v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->handler:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v1

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    aget v4, v4, v2

    int-to-long v4, v4

    iget v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-boolean v6, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v6, v2

    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-wide v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    iget v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v4, v2

    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v3, v1, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iget-boolean v3, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-object p0, v1, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updatePlaybackSpeed(J)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-long v2, v2

    cmp-long p1, p1, v2

    if-gtz p1, :cond_1

    sget-object p0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpg-float p0, v1, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/media3/common/PlaybackParameters;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void

    :cond_1
    float-to-int p1, v1

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    if-eq p1, p0, :cond_2

    int-to-float p0, p0

    new-instance p1, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {p1, p0, p0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    :cond_2
    :goto_0
    return-void
.end method
