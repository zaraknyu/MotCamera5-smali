.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$Factory;


# instance fields
.field public final continueLoadingCheckIntervalBytes:I

.field public final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field public final drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

.field public final loadErrorHandlingPolicy:Lokio/Timeout;

.field public final progressiveMediaExtractorFactory:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance p2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    new-instance v1, Lokio/Timeout;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lokio/Timeout;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lokio/Timeout;

    const/high16 p1, 0x100000

    iput p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method


# virtual methods
.method public final createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/BaseMediaSource;
    .locals 9

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    const/4 v8, 0x0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    sget-object v5, Landroidx/media3/exoplayer/drm/DrmSessionManager;->DRM_UNSUPPORTED:Landroidx/media3/exoplayer/drm/DrmSessionManager$1;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lokio/Timeout;

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;Landroidx/media3/exoplayer/drm/DrmSessionManager;Lokio/Timeout;ILandroidx/media3/common/Format;)V

    return-object v1
.end method
