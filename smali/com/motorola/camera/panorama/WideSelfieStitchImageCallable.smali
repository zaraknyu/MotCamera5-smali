.class public final Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# instance fields
.field public final mWideSelfieCaptureListener:Lcom/google/android/gms/tasks/zzb;

.field public final mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;Lcom/google/android/gms/tasks/zzb;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoListener;)V

    iput-object p1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iput-object p3, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/google/android/gms/tasks/zzb;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/gms/tasks/zzb;
    .locals 15

    iget-object v0, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mFaceRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    array-length v3, v0

    iget-boolean v4, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v1, v2, v3, v0}, Lcom/lenovo/core/LenovoPanoramaSelfie;->setFaceRect(II[Landroid/graphics/Rect;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget v5, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    const/4 v8, 0x3

    new-array v7, v8, [I

    iget-object v0, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/google/android/gms/tasks/zzb;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    mul-int/2addr v2, v8

    div-int/lit8 v2, v2, 0x2

    new-array v6, v2, [B

    const/16 v9, 0x5a

    const/16 v10, 0xb4

    const/4 v11, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v10, :cond_3

    if-ne v5, v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    array-length v2, v1

    invoke-static {v1, v11, v6, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-boolean v12, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/core/LenovoPanoramaSelfie;->pictureRotate([BIII[B[I)V

    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    if-eqz v5, :cond_8

    if-ne v5, v10, :cond_5

    goto :goto_3

    :cond_5
    if-eq v5, v9, :cond_6

    const/16 v1, 0x10e

    if-ne v5, v1, :cond_a

    :cond_6
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-boolean v4, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v4, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    aput v3, v4, v11

    aput v0, v4, v2

    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v1, v3, v0}, Lcom/lenovo/core/LenovoPanoramaSelfie;->setFullImageSize(II)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-boolean v4, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    iget-object v4, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    aput v3, v4, v11

    aput v0, v4, v2

    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v1, v3, v0}, Lcom/lenovo/core/LenovoPanoramaSelfie;->setFullImageSize(II)V

    :cond_a
    :goto_4
    new-array v1, v2, [I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v3, "PanoHelper"

    const-string v4, "File not found "

    const-string v5, "IOException when read file "

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    aget v0, v0, v11

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    aget v7, v7, v2

    if-eqz v0, :cond_11

    if-nez v7, :cond_b

    goto/16 :goto_9

    :cond_b
    const-string v9, "PanoSelfie"

    invoke-static {v9}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_c

    const-string v0, "dumpPanoSelfieInputImage: directory is null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_c
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_d

    const-string v0, "Failed to create bitmap"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_d
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v0, v6, v10, v7}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuv2Bitmap([B[ILandroid/graphics/Bitmap;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/motorola/camera/panorama/PanoHelper;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".jpg"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x0

    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v0, v9, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v9, v12

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v9, v12

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v9, v12

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_7

    :goto_5
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_6
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_9

    :goto_7
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6

    :goto_8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_11
    :goto_9
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v3

    iget-object v0, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    monitor-enter v3

    :try_start_4
    iget-boolean v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v5, :cond_12

    monitor-exit v3

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :cond_12
    iget v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    add-int/2addr v5, v2

    iput v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    aput v5, v1, v11

    iget-object v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v5, v6, v0, v2, v4}, Lcom/lenovo/core/LenovoPanoramaSelfie;->imageStitchingYUV([BIII)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_a
    iget-object v0, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/google/android/gms/tasks/zzb;

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v2}, Lcom/lenovo/core/LenovoPanoramaSelfie;->getImageStitchingStatus()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v8, v2, :cond_13

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v5, 0x7f120106

    invoke-direct {v4, v5}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v5, 0x4

    iput v5, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v4, v2, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_13
    iget-object p0, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/google/android/gms/tasks/zzb;

    aget v0, v1, v11

    if-lt v0, v8, :cond_14

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_b

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_b
    new-instance p0, Lcom/google/android/gms/tasks/zzb;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    return-object p0

    :goto_c
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
