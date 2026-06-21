.class public final Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final windowIndex:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchEvent(Landroidx/media3/common/util/Consumer;)V
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v3, 0x11

    invoke-direct {v2, v3, p1, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
