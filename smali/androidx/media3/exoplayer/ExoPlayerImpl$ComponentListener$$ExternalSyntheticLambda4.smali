.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/VideoSize;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/common/VideoSize;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 2
    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/common/VideoSize;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget v2, v1, Landroidx/media3/common/Format;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/VideoSize;->width:I

    iput v2, v1, Landroidx/media3/common/Format$Builder;->width:I

    iget v2, p0, Landroidx/media3/common/VideoSize;->height:I

    iput v2, v1, Landroidx/media3/common/Format$Builder;->height:I

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iput-object v1, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    :cond_0
    iget p0, p0, Landroidx/media3/common/VideoSize;->width:I

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/common/VideoSize;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
