.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;JJI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p4, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$2:J

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IJJI)V
    .locals 0

    .line 2
    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$3:I

    iput-wide p3, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p5, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$3:I

    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$1:J

    iget-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$2:J

    iget-object p0, v0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->listener:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/motorola/camera/fsm/Fsm;

    iget-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    new-instance v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;

    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 v0, 0x3ee

    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/tinder/StateMachine;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$3:I

    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$1:J

    iget-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$2:J

    iget-object p0, v0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 v0, 0x3f3

    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$1:J

    iget-wide v7, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$2:J

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;->f$3:I

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    monitor-enter v2

    :try_start_0
    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    monitor-exit v2

    goto :goto_3

    :cond_1
    :try_start_1
    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mActivePhotoJobs:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p0, :cond_2

    sget p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    :goto_1
    move v4, p0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    iget p0, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    goto :goto_1

    :goto_2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;IIJJ)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->runOnExecutor(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_3
    return-void

    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
