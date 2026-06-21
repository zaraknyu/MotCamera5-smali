.class public final Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.implements Landroidx/media3/exoplayer/drm/DrmSessionEventListener;


# instance fields
.field public drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final id:Ljava/lang/Object;

.field public mediaSourceEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic this$0:Landroidx/media3/exoplayer/source/CompositeMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iget-object v0, p1, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    new-instance v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p1, p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1, v2, v3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/source/CompositeMediaSource;

    if-eqz p2, :cond_0

    invoke-virtual {v1, v0, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->getWindowIndexForChildWindowIndex(ILjava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v2, p1, :cond_2

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    new-instance v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v0, p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v2, p1, :cond_4

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, v1, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    new-instance v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaLoadData;
    .locals 9

    iget-wide v0, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaStartTimeMs:J

    iget-object p2, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(JLjava/lang/Object;)J

    move-result-wide v5

    iget-wide v2, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaEndTimeMs:J

    invoke-virtual {p2, v2, v3, p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long p0, v5, v0

    if-nez p0, :cond_0

    cmp-long p0, v7, v2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget v3, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    iget-object v4, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(ILandroidx/media3/common/Format;JJ)V

    return-object v2
.end method

.method public final onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0, p3, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0, p4, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    const/4 p4, 0x1

    invoke-direct {p2, p1, p3, p0, p4}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0, p4, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p0, p4}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0, p4, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;

    move-object v2, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0, p4, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda9;

    invoke-direct {p2, p1, p3, p0, p5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method
