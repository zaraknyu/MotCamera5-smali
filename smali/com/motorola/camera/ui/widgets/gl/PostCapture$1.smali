.class public final Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    return-void
.end method


# virtual methods
.method public final onJpegReprocRequest(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ILcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfMetadata;)V
    .locals 8

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    const/4 v6, 0x0

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->-$$Nest$mgetOrientationForHolder(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I

    move-result v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;-><init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ILcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostView(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/McfAuxFrameData;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getExtraJson()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->-$$Nest$mgetOrientationForHolder(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I

    move-result v7

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const/4 v5, 0x0

    const/16 v3, 0x96

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;-><init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ILcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/String;I)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getExtraJson()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/motorola/camera/utility/PostViewJsonData;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/PostViewJsonData;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    monitor-enter v3

    :try_start_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v7

    const/4 v10, 0x0

    invoke-static {v10, v4, v6, v7}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v6

    invoke-virtual {v5, v8, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setYuvData(Lcom/motorola/camera/mcf/McfAuxFrameData;II)V

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v4, :cond_0

    iget-wide v4, v4, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    iput-wide v4, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    monitor-exit v3

    goto/16 :goto_2

    :cond_1
    :try_start_1
    const-string v4, "DOCUMENT_POINTS"

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x3

    new-array v6, v6, [I

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getLuma()[B

    move-result-object v11

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getChroma()[B

    move-result-object v12

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getStride()I

    move-result v13

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getHeight()I

    move-result v14

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v15

    const/16 v17, 0x5a

    const/16 v18, 0x0

    move-object/from16 v16, v6

    invoke-static/range {v11 .. v18}, Lcom/motorola/camera/mcf/DocUtil;->cropNV21([B[BII[I[IIZ)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    new-instance v4, Landroid/graphics/Point;

    aget v6, v16, v5

    const/4 v7, 0x2

    aget v7, v16, v7

    invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedSize:Landroid/graphics/Point;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedSize:Landroid/graphics/Point;

    :goto_1
    sget-object v4, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->USE_POST_VIEW_AS_BACKUP:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v4

    if-eqz v4, :cond_3

    move v10, v5

    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/utility/PostViewJsonData;->isPostViewFrameFirstData()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v5, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v2, v8}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v3

    :goto_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-wide v3, v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mTimestamp:J

    invoke-virtual {v1}, Lcom/motorola/camera/utility/PostViewJsonData;->getPostViewId()I

    move-result v1

    invoke-virtual {v2, v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->getMcfJpegReq(IJ)Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v4, 0x1c

    invoke-direct {v3, v4, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final onQueueEmpty()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
