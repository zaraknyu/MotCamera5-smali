.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dataSource:Landroidx/media3/datasource/StatsDataSource;

.field public dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final extractorOutput:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public icyTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field public volatile loadCanceled:Z

.field public final loadCondition:Landroidx/media3/exoplayer/WakeLockManager;

.field public pendingExtractorSeek:Z

.field public final positionHolder:Landroidx/media3/extractor/PositionHolder;

.field public final progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

.field public seekTimeUs:J

.field public seenIcyMetadata:Z

.field public final synthetic this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/core/view/MenuHostHelper;Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/exoplayer/WakeLockManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    new-instance p1, Landroidx/media3/datasource/StatsDataSource;

    invoke-direct {p1, p3}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iput-object p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media3/exoplayer/WakeLockManager;

    new-instance p1, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    sget-object p1, Landroidx/media3/exoplayer/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    return-void
.end method


# virtual methods
.method public final buildDataSpec(J)Landroidx/media3/datasource/DataSpec;
    .locals 11

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    const-string v0, "The uri must be set."

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/media3/datasource/DataSpec;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x6

    move-wide v6, p1

    invoke-direct/range {v1 .. v10}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJI)V

    return-object v1
.end method

.method public final load()V
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    :catch_0
    :cond_0
    :goto_0
    if-nez v1, :cond_f

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v2, :cond_f

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-wide v10, v5, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-virtual {p0, v10, v11}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v6, v5}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v5

    iget-boolean v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/PositionHolder;->position:J

    :cond_2
    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    if-eqz p0, :cond_f

    :try_start_1
    invoke-virtual {p0}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_a

    :cond_3
    cmp-long v7, v5, v2

    if-eqz v7, :cond_4

    add-long/2addr v5, v10

    :try_start_2
    iget-object v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v8, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    const/4 v12, 0x0

    invoke-direct {v9, v7, v12}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    move-wide v12, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :goto_2
    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v6, v6, Landroidx/media3/datasource/StatsDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v6}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v6

    iput-object v6, v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    if-eqz v6, :cond_5

    iget v6, v6, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    new-instance v7, Landroidx/media3/exoplayer/source/IcyDataSource;

    invoke-direct {v7, v5, v6, p0}, Landroidx/media3/exoplayer/source/IcyDataSource;-><init>(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    new-instance v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    invoke-direct {v6, v0, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepareTrackOutput(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/extractor/TrackOutput;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Landroidx/media3/extractor/TrackOutput;

    sget-object v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_FORMAT:Landroidx/media3/common/Format;

    invoke-interface {v5, v6}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    goto :goto_3

    :cond_5
    move-object v7, v5

    :goto_3
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-object v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v5, v5, Landroidx/media3/datasource/StatsDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v5}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    iget-object v14, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-virtual/range {v6 .. v14}, Landroidx/core/view/MenuHostHelper;->init(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-object v5, v5, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/extractor/Extractor;

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    instance-of v6, v5, Landroidx/media3/extractor/mp3/Mp3Extractor;

    if-eqz v6, :cond_7

    check-cast v5, Landroidx/media3/extractor/mp3/Mp3Extractor;

    iput-boolean v4, v5, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    :cond_7
    :goto_4
    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    iget-object v5, v5, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/extractor/Extractor;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v10, v11, v6, v7}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_8
    :goto_5
    if-nez v1, :cond_a

    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_a

    :try_start_3
    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media3/exoplayer/WakeLockManager;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    :try_start_4
    iget-boolean v6, v5, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    if-nez v6, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_9
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-object v7, v5, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/extractor/Extractor;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/extractor/DefaultExtractorInput;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7, v5, v6}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v1

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-wide v7, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    add-long/2addr v7, v10

    cmp-long v7, v5, v7

    if-lez v7, :cond_8

    iget-object v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media3/exoplayer/WakeLockManager;

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iput-boolean v0, v7, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v7

    iget-object v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v8, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v7, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-wide v10, v5

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_7
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_1
    :try_start_d
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_a
    if-ne v1, v4, :cond_b

    move v1, v0

    goto :goto_8

    :cond_b
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v4}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    :cond_c
    :goto_8
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    if-eqz v2, :cond_0

    :try_start_e
    invoke-virtual {v2}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    :goto_9
    if-eq v1, v4, :cond_d

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media3/extractor/PositionHolder;->position:J

    :cond_d
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    if-eqz p0, :cond_e

    :try_start_f
    invoke-virtual {p0}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    :catch_2
    :cond_e
    throw v0

    :catch_3
    :cond_f
    :goto_a
    return-void
.end method
