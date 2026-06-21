.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    invoke-virtual {v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->stop()V

    return-void

    :pswitch_0
    const-string v1, "getOutputFormat(...)"

    iget-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    iget v0, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    if-nez v0, :cond_7

    const-string v3, "mime"

    iget-object v4, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    :try_start_1
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v0, v8, v5}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget-object v7, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v0, v9

    invoke-virtual {v7, v8, v0}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    const-string/jumbo v7, "setupTranscoder: failed to create MediaMuxer"

    invoke-virtual {v2, v7, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_2
    :try_start_5
    iget-object v9, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v9, :cond_6

    iget v0, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    invoke-virtual {v9, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v7, 0x0

    invoke-virtual {v9, v7, v8, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget v0, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    invoke-virtual {v9, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v7, "getTrackFormat(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    iget v8, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    div-int v11, v7, v8

    new-instance v8, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

    iget v10, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    iget v12, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    new-instance v13, Lkotlin/ranges/LongRange;

    iget-wide v14, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionStart:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    iget-wide v5, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionEnd:J

    invoke-direct {v13, v14, v15, v5, v6}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    new-instance v14, Lkotlin/ranges/LongRange;

    iget-wide v5, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimStart:J

    move-object v15, v8

    iget-wide v7, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimEnd:J

    invoke-direct {v14, v5, v6, v7, v8}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    move-object v8, v15

    iget-object v15, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->decoderCallback:Lcom/motorola/camera/PermissionCallback;

    iget-object v5, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    move-object/from16 v16, v5

    invoke-direct/range {v8 .. v16}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;-><init>(Landroid/media/MediaExtractor;IIILkotlin/ranges/LongRange;Lkotlin/ranges/LongRange;Lcom/motorola/camera/PermissionCallback;Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    new-instance v5, Landroidx/room/RoomConnectionManager;

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    const-string/jumbo v9, "video/avc"

    if-nez v6, :cond_2

    move-object v6, v9

    :cond_2
    :try_start_7
    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    const-string v7, "createDecoderByType(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v7, 0x0

    const/4 v10, 0x0

    :try_start_8
    invoke-virtual {v6, v0, v7, v7, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-direct {v5, v6, v8, v10}, Landroidx/room/RoomConnectionManager;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    iput-object v5, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoDecoder:Landroidx/room/RoomConnectionManager;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "height"

    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v11

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v12, "width"

    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v10, v8, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->encoderHeight:I

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "stride"

    invoke-virtual {v6, v1, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    iget v6, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    iget v4, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    invoke-static {v11, v10, v1, v6, v4}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->initFrc(IIIII)Z

    move-result v1

    iget-object v4, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object v4, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v6, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v4, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz v1, :cond_5

    new-instance v1, Landroidx/room/RoomConnectionManager;

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v9, v0

    :goto_3
    :try_start_a
    invoke-static {v9}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-static {v5}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->configureEncoderOutputFormat(Landroidx/room/RoomConnectionManager;)Landroid/media/MediaFormat;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7, v7, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :try_start_b
    new-instance v3, Lcom/google/common/base/Splitter;

    invoke-direct {v3, v2, v8}, Lcom/google/common/base/Splitter;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    const/4 v10, 0x0

    :try_start_c
    invoke-direct {v1, v0, v3, v10}, Landroidx/room/RoomConnectionManager;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;I)V

    iput-object v1, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Landroidx/room/RoomConnectionManager;

    invoke-virtual {v5}, Landroidx/room/RoomConnectionManager;->start()V

    iget-object v0, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Landroidx/room/RoomConnectionManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->start()V

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    iput-object v0, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    move v5, v4

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not able to start video encoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    const/4 v10, 0x0

    goto :goto_4

    :catch_3
    move-exception v0

    const/4 v10, 0x0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "setupVideoEncoder: unable to create encoder"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    const/4 v10, 0x0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not able to init lib"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :catch_4
    move-exception v0

    move v10, v5

    goto :goto_4

    :cond_6
    move v10, v5

    goto :goto_5

    :goto_4
    const-string/jumbo v1, "setupTranscoder failed"

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    move v5, v10

    :goto_5
    iput v5, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
