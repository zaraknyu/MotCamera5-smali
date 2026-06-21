.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;)V
    .locals 1

    .line 2
    const/16 v0, 0x1b

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$8;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->notifyPostCaptureListeners(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getBitmapFromBuffer()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-boolean v2, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->sTemporarySnapshots:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzb;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    if-eqz v2, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, [B

    const/16 v2, 0x80

    new-array v3, v2, [I

    move v4, v5

    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_4

    aget-byte v7, v0, v4

    if-lez v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit16 v7, v7, 0x100

    :goto_2
    move v8, v5

    :goto_3
    if-ge v8, v2, :cond_3

    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v10, v9, 0x2

    if-gt v9, v7, :cond_2

    if-ge v7, v10, :cond_2

    aget v7, v3, v8

    add-int/2addr v7, v6

    aput v7, v3, v8

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x8

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    monitor-enter v2

    :try_start_0
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->updateHistogram()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_5
    iput-boolean v6, v1, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mInIdle:Z

    return-void

    :pswitch_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    monitor-enter v1

    :try_start_2
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-nez v2, :cond_6

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;)V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iput-boolean v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_6
    :goto_6
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_STAR_TRAIL_SURFACE_LOAD:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mPreviewFullYuvImageReader:Landroid/media/ImageReader;

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v7, v2, v4, v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewStarTrailTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-void

    :goto_7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v4, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->showToast(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;)V

    :cond_8
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext$3()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->showToast(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;)V

    :cond_9
    instance-of v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz v2, :cond_a

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->showToast(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;)V

    :cond_a
    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    iget v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastDuration:I

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->show()V

    if-eqz v2, :cond_b

    int-to-long v0, v0

    invoke-virtual {v3, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->thumbnailSeqIds:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStripThumbnails:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->thumbnailSeqIds:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_8
    return-void

    :pswitch_7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->bannerTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->BANNER_PROMPT_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_d
    iput-boolean v6, v0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->hide()V

    return-void

    :pswitch_8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/DialogPopup;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f0a0060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_e
    const v4, 0x7f0d001c

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v4, 0x7f0a0359

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/AlertPopup;

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$minitializeParent(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v7

    if-eqz v7, :cond_f

    const v7, 0x7f0a02fc

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v7, v4, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v4, v4, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v4

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_f
    check-cast v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v2

    xor-int/2addr v2, v6

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->isAdjustLocation:Z

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$mgetRootLayout(Lcom/motorola/camera/ui/widgets/AlertPopup;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget v4, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->backgroundColor:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    if-eqz v2, :cond_10

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetMessage(Lcom/motorola/camera/ui/widgets/AlertPopup;I)V

    goto :goto_9

    :cond_10
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageText:Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetMessage(Lcom/motorola/camera/ui/widgets/AlertPopup;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetMessageHTML(Lcom/motorola/camera/ui/widgets/AlertPopup;Ljava/lang/String;)V

    :cond_12
    :goto_9
    iget v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    if-eqz v2, :cond_13

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetTitle(Lcom/motorola/camera/ui/widgets/AlertPopup;I)V

    :cond_13
    iget v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    if-eqz v2, :cond_14

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz v4, :cond_14

    const v7, 0x7f0a00aa

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setSelected(Z)V

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/AlertPopup;->mPositiveClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    :cond_14
    iget v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    if-eqz v2, :cond_15

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz v4, :cond_15

    const v7, 0x7f0a00a9

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setSelected(Z)V

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz v2, :cond_15

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetKeepOrientation(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetNegativeOnCancel(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->isAdjustLocation:Z

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setIsAdjustLocation(Z)V

    iput-object v3, v1, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    iget v0, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->showPopup(I)V

    return-void

    :pswitch_9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->setFrameworkForceHdrLayerPresent(Z)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v3, :cond_17

    if-ltz v0, :cond_17

    iput v3, v2, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mPreviewWidth:I

    iput v0, v2, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mPreviewHeight:I

    iget-boolean v4, v2, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mVertical:Z

    if-eqz v4, :cond_16

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, v2, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mAspectRatio:F

    goto :goto_a

    :cond_16
    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    iput v3, v2, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mAspectRatio:F

    :goto_a
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->applyPreviewChange(Z)V

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-eqz v2, :cond_18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v7, v0, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v0, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    int-to-float v9, v4

    invoke-virtual {v2, v9}, Landroid/view/View;->setX(F)V

    int-to-float v9, v7

    invoke-virtual {v2, v9}, Landroid/view/View;->setY(F)V

    sub-int/2addr v8, v4

    sub-int/2addr v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v4, v8

    const/high16 v7, 0x40400000    # 3.0f

    div-float v8, v4, v7

    int-to-float v0, v0

    div-float v7, v0, v7

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    iget v9, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    new-instance v10, Landroid/graphics/RectF;

    iget v11, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mRadius:F

    add-float v12, v9, v11

    invoke-direct {v10, v9, v9, v12, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v13, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    const/high16 v14, 0x43340000    # 180.0f

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-virtual {v13, v10, v14, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v10, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v10, v4, v11

    sub-float/2addr v10, v9

    new-instance v13, Landroid/graphics/RectF;

    add-float v14, v10, v11

    invoke-direct {v13, v10, v9, v14, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    int-to-float v3, v3

    mul-float v5, v3, v8

    invoke-virtual {v6, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    move/from16 p0, v0

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v6, v13, v0, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    sub-float/2addr v4, v9

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v0, p0, v11

    sub-float/2addr v0, v9

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v11, v0

    invoke-direct {v6, v9, v0, v12, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v12, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    sub-float v13, p0, v9

    invoke-virtual {v12, v8, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v6, v15, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v6, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    mul-float/2addr v3, v7

    invoke-virtual {v6, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v10, v0, v14, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_18
    iget-object v0, v1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v0, v1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mAllowShow:Z

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    :cond_1a
    return-void

    :pswitch_b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;->mAutoHide:Z

    iget v0, v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;->mToastDuration:I

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->show()V

    if-eqz v2, :cond_1b

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1b
    return-void

    :pswitch_c
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    instance-of v2, v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;

    if-eqz v2, :cond_22

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a0070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/RotateLayout;

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextLeft:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextCenter:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v4, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    :cond_1c
    iget v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->rotate(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->updateFrameLayoutParams()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;->mTextResource:I

    iget v3, v0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;->mGraphicResource:I

    const/16 v5, 0x8

    if-eqz v3, :cond_1e

    iget-object v6, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextLeft:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextCenter:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "raw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto :goto_b

    :cond_1d
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_b

    :cond_1e
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextCenter:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextLeft:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :goto_b
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_c

    :cond_1f
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    :cond_20
    :goto_c
    const v2, 0x7f0800a3

    invoke-static {v4, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_21
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_22
    return-void

    :pswitch_d
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v2, " dur:"

    const-string v3, "AbstractComponent"

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->viewStubInflationStates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->inflateViewStub()V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->updateViewStub()V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/motorola/camera/Util;->isKpiWarning(J)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Finished inflating viewStub: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_23
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->viewStubInflationStates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->updateViewStub()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/motorola/camera/Util;->isKpiWarning(J)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Finished updating viewStub: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_d
    return-void

    :pswitch_e
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :pswitch_f
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    new-instance v2, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v0}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->inflateViewStub()V

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->tutorialPage:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_25

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;

    invoke-direct {v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;-><init>()V

    iput-object v0, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;->screenList:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_e

    :cond_25
    const/4 v3, 0x1

    :goto_e
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_26

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_26
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void

    :pswitch_11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-object v1, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SETTING"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enterSingleShot:Z

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->notifyFaceBeauty(Z)V

    const/4 v6, 0x0

    goto :goto_f

    :cond_27
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->stateHide:Z

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->showFilterVideoSliderBar(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->notifyFaceBeauty(Z)V

    :cond_28
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    :goto_f
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekSlider:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;

    if-eqz v0, :cond_29

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_29
    return-void

    :pswitch_12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    if-nez v1, :cond_2b

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isShowSeek:Z

    if-eqz v1, :cond_2a

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_10

    :cond_2a
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    :cond_2b
    :goto_10
    return-void

    :pswitch_13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/Setting;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2c

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "getValue(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_2c
    return-void

    :pswitch_14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/Setting;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->reverseColor(Z)V

    :cond_2d
    return-void

    :pswitch_15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    if-eqz v1, :cond_2e

    goto :goto_11

    :cond_2e
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2f

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    :cond_2f
    :goto_11
    return-void

    :pswitch_16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/PerfectMeUIComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/PerfectMeUIComponent;->transparencySeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_30
    return-void

    :pswitch_17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarMarginDimen()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->notifyModeComponent(Z)V

    return-void

    :pswitch_19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    const v4, 0x7f1205db

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v5

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v8

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    if-nez v6, :cond_31

    sget-object v0, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_12

    :cond_31
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_32

    if-nez v5, :cond_32

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_32
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz v5, :cond_33

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_12

    :cond_33
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_34

    if-nez v5, :cond_34

    const-string v0, "activity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_34
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_12
    return-void

    :pswitch_1a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LicensePreference;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    iget-object v2, v1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v5, 0x7f0d005b

    invoke-static {v2, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.webkit.WebView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/webkit/WebView;

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v6

    :try_start_4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "NOTICE.html"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v6, "file:///android_asset/NOTICE.html"

    goto :goto_13

    :catch_0
    const-string v7, "LicensePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Notice file for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found, falling back to common notice"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "file:///android_asset/NOTICE_fallback.html"

    :goto_13
    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    const v7, 0x7f1301a7

    invoke-direct {v6, v0, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v7, 0x7f12001d

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {v4}, Lcom/motorola/camera/utility/ColorUtil;->applyWindowInsetsAsPadding(Landroidx/appcompat/app/AppCompatDialog;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->getHorizontalMargin(Z)I

    move-result v6

    if-eqz v6, :cond_35

    invoke-static {v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v6, v3

    sub-int/2addr v2, v6

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, v2, v3}, Landroid/view/Window;->setLayout(II)V

    :cond_35
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroidx/collection/internal/Lock;

    invoke-direct {v3, v2}, Landroidx/collection/internal/Lock;-><init>(Landroid/view/View;)V

    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    invoke-virtual {v5}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;-><init>(Landroid/view/WindowInsetsController;Landroidx/collection/internal/Lock;)V

    iput-object v5, v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;->mWindow:Landroid/view/Window;

    iget-object v2, v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowInsetsController;->hide(I)V

    const/high16 v2, -0x80000000

    invoke-virtual {v5, v2}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x7f06042e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_36

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x10

    if-ne v0, v2, :cond_36

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-interface {v0, v2, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_36
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iput-object v4, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LicensePreference;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void

    :pswitch_1b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;->cartoonShuffleThumbnailAdapter:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;

    iget-object v3, v2, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->this$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_38

    new-instance v3, Lcom/google/android/material/carousel/CarouselLayoutManager$1;

    const/4 v5, 0x3

    invoke-direct {v3, v0, v5}, Lcom/google/android/material/carousel/CarouselLayoutManager$1;-><init>(Landroid/content/Context;I)V

    iget-object v0, v2, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_37

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    goto :goto_14

    :cond_37
    const-string v0, "linearLayoutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_38
    :goto_14
    return-void

    :pswitch_1c
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_15

    :cond_39
    new-instance v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v3

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, v5, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->renderToFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v3

    iput-object v3, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v1, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    iput v1, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_3a

    const-string v0, "PostCapture"

    const-string v1, "PhotosProvider handler is null, skip to add temp snapshot"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_3a
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
