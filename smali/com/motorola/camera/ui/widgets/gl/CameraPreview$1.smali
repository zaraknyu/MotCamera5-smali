.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->$r8$classId:I

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Ljava/lang/Object;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->$r8$classId:I

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 2
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method private final processPreview$com$motorola$camera$ui$widgets$gl$CameraPreview$1(Landroid/media/Image;Z[JZ)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMcfSupport:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-boolean v3, v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCliGestureRecording:Z

    if-nez v3, :cond_13

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v3, :cond_0

    sget-boolean v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    if-eqz v5, :cond_0

    sget v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    sget v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    if-ge v5, v6, :cond_0

    const-string v5, "CameraPreview"

    const-string/jumbo v6, "processPreviewImage start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Input%03d_ts-%d.yuv"

    sget v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    invoke-static {v1, v6, v5}, Lcom/motorola/camera/utility/AndroidImageUtils;->dumpImage(Landroid/media/Image;Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto/16 :goto_a

    :cond_3
    :goto_0
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v8

    iget-object v10, v8, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz v10, :cond_7

    monitor-enter v10

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-object v8, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/zzh;

    if-eqz v8, :cond_6

    iget-object v8, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v8

    if-nez v8, :cond_6

    iget-boolean v8, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    if-eqz v8, :cond_6

    iget-boolean v8, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    if-nez v8, :cond_6

    iget-wide v8, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    iget-wide v11, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mTimeBetweenScans:J

    iget v15, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    add-int/2addr v15, v4

    move-object/from16 p4, v6

    const/16 v16, 0x0

    int-to-long v5, v15

    mul-long/2addr v11, v5

    add-long/2addr v11, v8

    cmp-long v5, v13, v11

    if-gez v5, :cond_4

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->BARCODE_SCANNING_TIME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget v12, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v5

    iput-boolean v4, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    sget-object v6, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v16

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v11, 0x2

    aget-object v9, v9, v11

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v15

    mul-int/2addr v15, v11

    invoke-static {v6, v8, v9, v15}, Lcom/motorola/camera/utility/AndroidImageUtils;->getNV21ByteArrayFromYUV_420_888(Landroid/media/Image$Plane;Landroid/media/Image$Plane;Landroid/media/Image$Plane;I)[B

    move-result-object v6

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v8, v8, v16

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v9

    invoke-static {v6, v8, v9, v5}, Lcom/google/mlkit/vision/common/InputImage;->fromByteArray([BIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v11

    iget-object v5, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v10, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;

    invoke-direct/range {v9 .. v14}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;Lcom/google/mlkit/vision/common/InputImage;IJ)V

    invoke-interface {v6, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    goto :goto_5

    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_6
    move-object/from16 p4, v6

    const/16 v16, 0x0

    :goto_3
    monitor-exit v10

    goto :goto_5

    :goto_4
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_7
    move-object/from16 p4, v6

    const/16 v16, 0x0

    :goto_5
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsSupported(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateThumbnails:Z

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/LinkedList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Ljava/lang/Integer;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LIB_NAME:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v22, v8

    check-cast v22, [Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAILS_THREADS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    sget-object v9, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAIL_SIZE_DP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v9}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    sget-object v10, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_API:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v10}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    sget-object v11, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_FACE_MODEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v11}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v26, v11

    check-cast v26, Ljava/lang/String;

    sget-object v11, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_MAKEUP_MODEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v11}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v27, v11

    check-cast v27, Ljava/lang/String;

    sget-object v11, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_ADVANCED_MODEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v11}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v11, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->displayRotation:I

    add-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    aget v23, v8, v16

    aget v24, v9, v16

    aget v25, v10, v16

    move/from16 v17, v0

    invoke-static/range {v17 .. v28}, Lcom/motorola/camera/meishe/MeisheEffects;->configureThumbnails(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-boolean v0, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    move/from16 v6, v16

    invoke-static {v1, v6, v0}, Lcom/motorola/camera/meishe/MeisheEffects;->processThumbnails(Landroid/media/Image;II)V

    goto :goto_6

    :cond_9
    move/from16 v6, v16

    iget-object v0, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v8, v0, -0x4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v8, v0}, Lcom/motorola/camera/meishe/MeisheEffects;->processThumbnails(Landroid/media/Image;II)V

    :cond_a
    :goto_6
    iget-object v0, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_b
    if-eqz v3, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    goto :goto_7

    :cond_c
    const-wide/16 v5, 0x0

    :goto_7
    if-eqz p2, :cond_d

    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_8
    move-object/from16 v8, p4

    goto :goto_9

    :cond_d
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_8

    :goto_9
    invoke-static {v1, v0, v7, v8, v2}, Lcom/motorola/camera/mcf/Mcf;->processPreviewImage(Landroid/media/Image;Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;FLandroid/graphics/Rect;[J)Z

    move-result v0

    if-eqz v3, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x21

    cmp-long v5, v7, v5

    if-lez v5, :cond_e

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    const-string v5, "CameraPreview"

    const-string v6, "Mcf.processPreviewImage took too long: %dms, displayFrame: %b"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_a
    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v5, :cond_10

    sget v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_f

    const-string v5, "CameraPreview"

    const-string v6, "frame coming"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    add-int/2addr v5, v4

    sput v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    :cond_10
    if-eqz v3, :cond_12

    sget-boolean v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    if-eqz v3, :cond_12

    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    sget v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    if-ge v3, v5, :cond_12

    array-length v3, v2

    if-nez v3, :cond_11

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Output%03d.yuv"

    sget v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_11
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Output%03d_ts-%d.yuv"

    sget v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x0

    aget-wide v7, v2, v16

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    invoke-static {v1, v3, v2}, Lcom/motorola/camera/utility/AndroidImageUtils;->dumpImage(Landroid/media/Image;Ljava/io/File;Ljava/lang/String;)V

    sget v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    add-int/2addr v1, v4

    sput v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    const-string v1, "CameraPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPreviewImage end with displayFrame:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v0

    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    const-class v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter v2

    :try_start_5
    sget-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sStarted:Z

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-static {v1}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->analyzeImage(Landroid/media/Image;)F

    move-result v0

    new-instance v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    invoke-direct {v1, v0, v5, v6}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;-><init>(FJ)V

    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_14
    :goto_c
    monitor-exit v2

    return v4

    :goto_d
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_15
    return v4
.end method


# virtual methods
.method public final processPreview(Landroid/media/Image;Z[JZ)Z
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object p3, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    iget-object p3, p3, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mResults:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p3, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    const-wide/16 v1, 0x64

    invoke-virtual {p3, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 p3, 0xdac

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "getPreview fail:"

    const-string v0, "interpolateSt:"

    monitor-enter p2

    :try_start_3
    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->isInitialized()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string p1, "ProCameraMode"

    const-string p3, "ArcsoftStellarTrack is not init."

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p2

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameY:Ljava/nio/ByteBuffer;

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-eq v1, v7, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameY:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameUV:Ljava/nio/ByteBuffer;

    :cond_3
    iget v1, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFrameNum:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFrameNum:I

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    iget-object v7, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameY:Ljava/nio/ByteBuffer;

    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameUV:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v7, v8}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->updateParams(Landroid/media/Image;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    invoke-virtual {v1}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->updateGpsDateFovParams()V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    invoke-static {v1, v7, v8, v6}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->interpolateParams(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/motorola/camera/arcsoft/StellarTrackParams;Z)I

    move-result v1

    iget-object v7, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameY:Ljava/nio/ByteBuffer;

    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameUV:Ljava/nio/ByteBuffer;

    invoke-static {p1, v7, v8}, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->copyFrame(Landroid/media/Image;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p4

    aget-object p4, p4, v6

    invoke-virtual {p4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->getPreviewSt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    sget-boolean p4, Lcom/motorola/camera/FeaturesUtil;->ENABLE_LP_DEBUG:Z

    if-nez p4, :cond_4

    goto :goto_1

    :cond_4
    sget-object p4, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    iget v0, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mDebugInputIndex:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dur:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->BOTTOM:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v0, v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v2, v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    iput-object p3, v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_LP_DEBUG:Z

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v4, p4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    sget-object p4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->BOTTOM:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object p4, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v2, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    iput-object p3, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_1
    iget-object p3, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FRAME_COLLECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->getTag(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p4, v0, p1, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p3, p4}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return v2

    :goto_3
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :goto_4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->processPreview$com$motorola$camera$ui$widgets$gl$CameraPreview$1(Landroid/media/Image;Z[JZ)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
