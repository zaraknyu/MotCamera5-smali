.class public final Landroidx/media3/exoplayer/source/SinglePeriodTimeline;
.super Landroidx/media3/common/Timeline;
.source "SourceFile"


# static fields
.field public static final UID:Ljava/lang/Object;


# instance fields
.field public final isSeekable:Z

.field public final liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final periodDurationUs:J

.field public final windowDurationUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v7, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    new-instance v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    sget-object v2, Landroidx/media3/common/MediaItem$RequestMetadata;->EMPTY:Landroidx/media3/common/MediaItem$RequestMetadata;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz v3, :cond_0

    new-instance v2, Landroidx/media3/common/MediaItem$LocalConfiguration;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/MediaItem$DrmConfiguration;Ljava/util/List;Lcom/google/common/collect/ImmutableList;J)V

    :cond_0
    new-instance v2, Landroidx/media3/common/MediaItem;

    invoke-virtual {v0}, Landroidx/media3/extractor/PositionHolder;->buildClippingProperties()Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-void
.end method

.method public constructor <init>(JZZLandroidx/media3/common/MediaItem;)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p4, p5, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->periodDurationUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isSeekable:Z

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    return-void
.end method


# virtual methods
.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 0

    sget-object p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 10

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->checkIndex(II)V

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->periodDurationUs:J

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

    const/4 p0, 0x1

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->checkIndex(II)V

    sget-object p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-object p0
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 9

    const/4 p3, 0x1

    invoke-static {p1, p3}, Landroidx/media3/common/util/Log;->checkIndex(II)V

    sget-object p1, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v7, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isSeekable:Z

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/common/Timeline$Window;->set(Landroidx/media3/common/MediaItem;ZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJ)V

    return-object v0
.end method

.method public final getWindowCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
