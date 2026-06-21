.class public final Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$Factory;


# instance fields
.field public final dataSourceFactory:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public final delegateFactoryLoader:Landroidx/profileinstaller/DeviceProfileWriter;

.field public final liveMaxOffsetMs:J

.field public final liveMaxSpeed:F

.field public final liveMinOffsetMs:J

.field public final liveMinSpeed:F

.field public final liveTargetOffsetMs:J

.field public parseSubtitlesDuringExtraction:Z

.field public subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/extractor/DefaultExtractorsFactory;)V
    .locals 2

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance p1, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    new-instance v1, Landroidx/profileinstaller/DeviceProfileWriter;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object p1, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    iput-object v1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p1, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    check-cast p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-eq v0, p1, :cond_0

    iput-object v0, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    iget-object p1, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    const p1, -0x800001

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->parseSubtitlesDuringExtraction:Z

    return-void
.end method

.method public static access$100(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1

    :try_start_0
    const-class v0, Landroidx/media3/datasource/DataSource$Factory;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/BaseMediaSource;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string/jumbo v4, "ssai"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    throw v3

    :cond_1
    :goto_0
    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const-string v4, "application/x-image-uri"

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v4, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {v4, v2}, Landroidx/media3/common/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    iget-object v4, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-wide v4, v4, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v4, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/DefaultExtractorsFactory;

    monitor-enter v4

    :try_start_0
    iput v5, v4, Landroidx/media3/extractor/DefaultExtractorsFactory;->jpegFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v4, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->loadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iget-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/dynamite/zzf;

    invoke-interface {v9, v10}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setSubtitleParserFactory(Lcom/google/android/gms/dynamite/zzf;)V

    iget-boolean v4, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    invoke-interface {v9, v4}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)V

    invoke-interface {v9}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget-object v2, v1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    iget-object v4, v1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v10, v4, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v8, v10, v6

    if-nez v8, :cond_4

    iget-wide v10, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    iput-wide v10, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    :cond_4
    iget v8, v4, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v10, -0x800001

    cmpl-float v8, v8, v10

    if-nez v8, :cond_5

    iget v8, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    iput v8, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    :cond_5
    iget v8, v4, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v8, v8, v10

    if-nez v8, :cond_6

    iget v8, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    iput v8, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    :cond_6
    iget-wide v10, v4, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v8, v10, v6

    if-nez v8, :cond_7

    iget-wide v10, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    iput-wide v10, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    :cond_7
    iget-wide v10, v4, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v4, v10, v6

    if-nez v4, :cond_8

    iget-wide v10, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    iput-wide v10, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    :cond_8
    new-instance v4, Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-direct {v4, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)V

    iget-object v2, v1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v4, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Landroidx/media3/common/DeviceInfo$Builder;

    invoke-direct {v2}, Landroidx/media3/common/DeviceInfo$Builder;-><init>()V

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v8, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    sget-object v10, Landroidx/media3/common/MediaItem$RequestMetadata;->EMPTY:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v10, v1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingProperties;

    new-instance v11, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iget-wide v12, v10, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iput-wide v12, v11, Landroidx/media3/extractor/PositionHolder;->position:J

    iget-object v10, v1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v12, v1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v13, v1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v13}, Landroidx/media3/common/MediaItem$LiveConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    iget-object v13, v1, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v1, :cond_9

    iget-object v2, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iget-object v6, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v7, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iget-object v8, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    new-instance v14, Landroidx/media3/common/DeviceInfo$Builder;

    invoke-direct {v14}, Landroidx/media3/common/DeviceInfo$Builder;-><init>()V

    iget-wide v14, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    move-object/from16 v18, v2

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-wide/from16 v22, v14

    :goto_3
    move-object/from16 v21, v8

    goto :goto_4

    :cond_9
    move-object/from16 v20, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v17

    move-wide/from16 v22, v6

    goto :goto_3

    :goto_4
    invoke-virtual {v4}, Landroidx/media3/common/MediaItem$LiveConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    const/16 v19, 0x0

    if-eqz v17, :cond_a

    new-instance v16, Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-direct/range {v16 .. v23}, Landroidx/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/MediaItem$DrmConfiguration;Ljava/util/List;Lcom/google/common/collect/ImmutableList;J)V

    move-object/from16 v17, v16

    goto :goto_5

    :cond_a
    move-object/from16 v17, v19

    :goto_5
    new-instance v14, Landroidx/media3/common/MediaItem;

    if-eqz v10, :cond_b

    :goto_6
    move-object v15, v10

    goto :goto_7

    :cond_b
    const-string v10, ""

    goto :goto_6

    :goto_7
    new-instance v2, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v2, v11}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/extractor/PositionHolder;)V

    new-instance v4, Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-direct {v4, v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)V

    if-eqz v12, :cond_c

    :goto_8
    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    goto :goto_9

    :cond_c
    sget-object v12, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    goto :goto_8

    :goto_9
    invoke-direct/range {v14 .. v20}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V

    goto :goto_a

    :cond_d
    move-object v14, v1

    :goto_a
    invoke-interface {v9, v14}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/BaseMediaSource;

    move-result-object v1

    iget-object v2, v14, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v5

    new-array v4, v4, [Landroidx/media3/exoplayer/source/BaseMediaSource;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->parseSubtitlesDuringExtraction:Z

    if-eqz v1, :cond_f

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem$Subtitle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/media3/common/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem$Subtitle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem$Subtitle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v6, v1, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem$Subtitle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v6, v1, Landroidx/media3/common/Format$Builder;->roleFlags:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem$Subtitle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem$Subtitle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iget-object v1, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/dynamite/zzf;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-string v5, "application/x-media3-cues"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v5, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v5, v1, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/dynamite/zzf;->getCueReplacementBehavior(Landroidx/media3/common/Format;)I

    move-result v0

    iput v0, v1, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :cond_e
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$Subtitle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3

    :cond_f
    iget-object v0, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$Subtitle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    sget-object v1, Landroidx/media3/common/MediaItem$RequestMetadata;->EMPTY:Landroidx/media3/common/MediaItem$RequestMetadata;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3

    :cond_10
    new-instance v1, Landroidx/media3/exoplayer/source/MergingMediaSource;

    invoke-direct {v1, v4}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    :cond_11
    iget-object v0, v14, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingProperties;

    iget-wide v2, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v2, v6

    if-nez v2, :cond_12

    goto :goto_b

    :cond_12
    new-instance v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    iget-boolean v1, v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/2addr v1, v5

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-wide v0, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iget-boolean v3, v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/2addr v3, v5

    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-wide v0, v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->endPositionUs:J

    iget-boolean v0, v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/2addr v0, v5

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v5, v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->enableInitialDiscontinuity:Z

    iget-boolean v0, v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/2addr v0, v5

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-boolean v0, v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/2addr v0, v5

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v5, v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    new-instance v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;)V

    :goto_b
    iget-object v0, v14, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v14, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    iget-object v0, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-wide v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    throw v3
.end method

.method public final experimentalParseSubtitlesDuringExtraction(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->parseSubtitlesDuringExtraction:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/profileinstaller/DeviceProfileWriter;

    iput-boolean p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final experimentalSetCodecsToParseWithinGopSampleDependencies()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/profileinstaller/DeviceProfileWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final setSubtitleParserFactory(Lcom/google/android/gms/dynamite/zzf;)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/profileinstaller/DeviceProfileWriter;

    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    monitor-enter v0

    :try_start_0
    iput-object p1, v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setSubtitleParserFactory(Lcom/google/android/gms/dynamite/zzf;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
