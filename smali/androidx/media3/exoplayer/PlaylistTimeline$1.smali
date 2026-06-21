.class public final Landroidx/media3/exoplayer/PlaylistTimeline$1;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final window:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->$r8$classId:I

    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 4
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->window:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 2
    iput-object p2, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->window:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 11

    iget v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget p1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->window:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, p0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v2, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v3, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget v4, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-wide v5, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-wide v7, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    sget-object v9, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v1, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->window:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/MediaItem;

    iput-object p0, p2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
