.class public final Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/MediaSourceInfoHolder;


# instance fields
.field public timeline:Landroidx/media3/common/Timeline;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MaskingMediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    iget-object p1, p2, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    return-void
.end method


# virtual methods
.method public final getTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final getUid()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    return-object p0
.end method
