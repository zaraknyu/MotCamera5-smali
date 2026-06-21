.class public final Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;
.super Landroidx/media3/common/Timeline;
.source "SourceFile"


# instance fields
.field public final mediaItem:Landroidx/media3/common/MediaItem;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    return-void
.end method


# virtual methods
.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 0

    sget-object p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 10

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz p3, :cond_1

    sget-object p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_1
    move-object v2, p0

    sget-object v8, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    const/4 v9, 0x1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V

    return-object v0
.end method

.method public final getPeriodCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .locals 0

    sget-object p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    return-object p0
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 9

    sget-object p1, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    const-wide/16 v5, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/common/Timeline$Window;->set(Landroidx/media3/common/MediaItem;ZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJ)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    return-object v0
.end method

.method public final getWindowCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
