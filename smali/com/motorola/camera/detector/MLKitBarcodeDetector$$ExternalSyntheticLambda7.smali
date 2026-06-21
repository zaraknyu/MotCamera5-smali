.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;Ljava/nio/Buffer;Landroid/util/Size;IJLjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput p4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$2:I

    iput-wide p5, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$3:J

    iput-object p7, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;Lcom/google/mlkit/vision/common/InputImage;IJLjava/util/List;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$2:I

    iput-wide p4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$3:J

    iput-object p6, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->$r8$classId:I

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const/16 v4, 0x5a

    const/high16 v5, -0x40800000    # -1.0f

    iget-object v6, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Object;

    iget-wide v7, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$3:J

    iget v9, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$2:I

    iget-object v10, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iget-object v0, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Ljava/nio/Buffer;

    check-cast v10, Landroid/util/Size;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v11, v9

    invoke-virtual {v1, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v9, :cond_1

    if-eq v9, v4, :cond_0

    if-eq v9, v3, :cond_1

    if-eq v9, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v11, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const-string v2, "createBitmap(...)"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Lcom/motorola/camera/saving/FileName;

    sget-object v2, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-direct {v0, v2, v7, v8}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    const-wide/32 v2, 0x100000

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v4

    invoke-virtual {v1, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_2

    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Bitmap.compress() failed"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    const-string v3, "SaveImageService"

    const-string/jumbo v4, "savePreviewFrameDump failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :goto_5
    return-void

    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0

    :pswitch_0
    check-cast v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    check-cast v10, Lcom/google/mlkit/vision/common/InputImage;

    iget v1, v10, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iget v10, v10, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v0, v6}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->processBarcodes(Ljava/util/List;)V

    iget-object v6, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz v6, :cond_3b

    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iget-object v7, v7, Lcom/google/mlkit/vision/barcode/common/Barcode;->zzb:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    neg-int v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v8, 0x0

    if-eq v9, v4, :cond_5

    if-eq v9, v3, :cond_4

    if-eq v9, v2, :cond_3

    goto :goto_7

    :cond_3
    int-to-float v1, v10

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_7

    :cond_4
    int-to-float v2, v10

    int-to-float v1, v1

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_7

    :cond_5
    int-to-float v1, v1

    invoke-virtual {v7, v8, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_7
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBarcodeListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iget-object v1, v1, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/detector/ScanningEngine;

    sget-object v2, Lcom/motorola/camera/detector/results/ZxingResultParser;->sMlKitToZxingFormats:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    iget-object v4, v0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v3}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getFormat()I

    move-result v0

    const/16 v3, 0x1000

    if-gt v0, v3, :cond_6

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, -0x1

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v4}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawBytes()[B

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v7, v2

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    const/4 v7, 0x0

    if-eqz v0, :cond_9

    if-nez v2, :cond_a

    :cond_9
    move-object/from16 v19, v4

    const/4 v14, 0x0

    goto/16 :goto_24

    :cond_a
    new-instance v9, Lcom/google/zxing/ResultPoint;

    iget v10, v6, Landroid/graphics/RectF;->left:F

    iget v13, v6, Landroid/graphics/RectF;->top:F

    invoke-direct {v9, v10, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v14, Lcom/google/zxing/ResultPoint;

    iget v15, v6, Landroid/graphics/RectF;->right:F

    invoke-direct {v14, v15, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v13, Lcom/google/zxing/ResultPoint;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v13, v15, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v15, Lcom/google/zxing/ResultPoint;

    invoke-direct {v15, v10, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {v9, v14, v13, v15}, [Lcom/google/zxing/ResultPoint;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawValue()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b

    invoke-interface {v4}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getDisplayValue()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    :cond_b
    new-instance v2, Lcom/google/zxing/Result;

    invoke-direct {v2, v9, v6, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    iget-object v0, v2, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v6, v2, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v6, Lcom/google/zxing/BarcodeFormat;

    new-instance v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    int-to-long v13, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    add-long/2addr v13, v15

    goto :goto_9

    :catch_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v10

    int-to-long v13, v13

    :goto_9
    invoke-direct {v9, v13, v14}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;-><init>(J)V

    sget-object v10, Lcom/motorola/camera/detector/results/ZxingResultParser;->FORMATS_2D:Ljava/util/EnumSet;

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v13, 0x2

    if-eqz v10, :cond_c

    iput v13, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    goto :goto_a

    :cond_c
    iput v7, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    :goto_a
    iget-object v10, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v10, [Lcom/google/zxing/ResultPoint;

    array-length v14, v10

    move/from16 v16, v5

    move v15, v7

    move/from16 v18, v15

    move/from16 p0, v8

    move/from16 v5, p0

    move v7, v5

    move v13, v7

    :goto_b
    if-ge v15, v14, :cond_15

    aget-object v3, v10, v15

    move-object/from16 v19, v4

    iget v4, v3, Lcom/google/zxing/ResultPoint;->x:F

    cmpl-float v20, v4, v16

    if-eqz v20, :cond_14

    iget v3, v3, Lcom/google/zxing/ResultPoint;->y:F

    cmpl-float v20, v3, v16

    if-eqz v20, :cond_14

    cmpl-float v20, v5, p0

    if-eqz v20, :cond_d

    cmpl-float v20, v5, v4

    if-lez v20, :cond_e

    :cond_d
    move v5, v4

    :cond_e
    cmpl-float v20, v13, p0

    if-eqz v20, :cond_f

    cmpg-float v20, v13, v4

    if-gez v20, :cond_10

    :cond_f
    move v13, v4

    :cond_10
    cmpl-float v4, v8, p0

    if-eqz v4, :cond_11

    cmpl-float v4, v8, v3

    if-lez v4, :cond_12

    :cond_11
    move v8, v3

    :cond_12
    cmpl-float v4, v7, p0

    if-eqz v4, :cond_13

    cmpg-float v4, v7, v3

    if-gez v4, :cond_14

    :cond_13
    move v7, v3

    :cond_14
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v19

    goto :goto_b

    :cond_15
    move-object/from16 v19, v4

    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v5

    float-to-int v5, v8

    float-to-int v8, v13

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mImageRect:Landroid/graphics/Rect;

    iget-object v3, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    iput-wide v11, v3, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    iput-object v6, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mBarcodeFormat:Lcom/google/zxing/BarcodeFormat;

    sget-object v4, Lcom/motorola/camera/detector/results/ZxingResultParser;->sSourceAnalytics:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v5, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    array-length v7, v5

    move/from16 v8, v18

    :goto_c
    if-ge v8, v7, :cond_17

    aget-object v10, v5, v8

    invoke-virtual {v10, v2}, Lcom/google/zxing/client/result/ResultParser;->parse(Lcom/google/zxing/Result;)Landroidx/media3/decoder/Buffer;

    move-result-object v10

    if-eqz v10, :cond_16

    goto :goto_d

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_17
    new-instance v10, Lcom/google/zxing/client/result/TextParsedResult;

    invoke-direct {v10, v0}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;)V

    :goto_d
    iget v0, v10, Landroidx/media3/decoder/Buffer;->flags:I

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v2, 0x6

    const/4 v5, 0x3

    const/4 v11, 0x4

    const/16 v13, 0xd

    const/16 p0, 0x8

    const/4 v15, 0x1

    const/16 v16, 0x7

    const-string v8, ""

    packed-switch v0, :pswitch_data_1

    const/16 v13, 0x9

    goto/16 :goto_23

    :pswitch_1
    check-cast v10, Lcom/google/zxing/client/result/VINParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v11}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iget-object v2, v10, Lcom/google/zxing/client/result/VINParsedResult;->vin:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    const/16 v13, 0xb

    goto/16 :goto_23

    :pswitch_2
    check-cast v10, Lcom/google/zxing/client/result/ISBNParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v11}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iget-object v2, v10, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    move v13, v5

    goto/16 :goto_23

    :pswitch_3
    check-cast v10, Lcom/google/zxing/client/result/WifiParsedResult;

    iget-object v0, v10, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    const-string v5, "WEP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    if-eqz v0, :cond_18

    sget-boolean v5, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const-string v5, "\\A\\p{ASCII}*\\z"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_e

    :cond_18
    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/WifiAp;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v6, v10, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    iput-object v6, v5, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    iput-object v2, v5, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    iget-boolean v0, v10, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    iput-boolean v0, v5, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    iput-object v5, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    goto :goto_f

    :cond_19
    :goto_e
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/WifiSetting;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    :goto_f
    const/16 v13, 0xc

    goto/16 :goto_23

    :pswitch_4
    check-cast v10, Lcom/google/zxing/client/result/CalendarParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Event;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide v5, -0x3f70bf3333333333L    # -1000.1

    iput-wide v5, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    iput-wide v5, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    iget-object v2, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    iget-wide v7, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    iget-boolean v2, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    iput-boolean v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->startAllDay:Z

    iget-wide v7, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    const-wide/16 v11, 0x0

    cmp-long v2, v7, v11

    if-gez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_10

    :cond_1a
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    :goto_10
    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    iget-boolean v2, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    iput-boolean v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->endAllDay:Z

    iget-object v2, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->organizer:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->attendees:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    iget-wide v7, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    iput-wide v7, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    iget-wide v10, v10, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    iput-wide v10, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1b

    iput-wide v5, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    :cond_1b
    iget-wide v7, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1c

    iput-wide v5, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    :cond_1c
    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    const/4 v13, 0x1

    goto/16 :goto_23

    :pswitch_5
    check-cast v10, Lcom/google/zxing/client/result/SMSParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Message;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v10, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->numbers:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->vias:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->subject:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->body:Ljava/lang/String;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    const/4 v13, 0x5

    goto/16 :goto_23

    :pswitch_6
    check-cast v10, Lcom/google/zxing/client/result/TelParsedResult;

    iget-object v0, v10, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/Contact;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string/jumbo v6, "\u200e"

    invoke-static {v6, v0, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    goto :goto_11

    :cond_1d
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    :goto_11
    iput-object v5, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    move v13, v2

    goto/16 :goto_23

    :pswitch_7
    check-cast v10, Lcom/google/zxing/client/result/GeoParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v2, v10}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(ILjava/lang/Object;)V

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    move v13, v11

    goto/16 :goto_23

    :pswitch_8
    check-cast v10, Lcom/google/zxing/client/result/TextParsedResult;

    iget-object v2, v10, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    sget-boolean v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->sShouldCheckDimoSupport:Z

    const-string v10, "MotoMonopoly"

    if-eqz v0, :cond_24

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const-string v14, "com.motorola.ccc.notification.READ_NOTIFICATIONS"

    invoke-virtual {v0, v14, v12, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "No permission to check Dimo"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_1e
    :try_start_8
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "content://com.motorola.ccc.notification.CameraContentProvider/dimopackage"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v12, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->DIMO_PROVIDER_COLUMNS:[Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v0, v7, v12, v14, v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    if-eqz v7, :cond_22

    :try_start_9
    aget-object v0, v12, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    aget-object v12, v12, v15

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    :goto_12
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_22

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v11, "dimo_scan_code"

    invoke-static {v14, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "\\[|]"

    invoke-virtual {v11, v14, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "\\s"

    invoke-virtual {v11, v14, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoCodeTypes:[Ljava/lang/String;

    :cond_1f
    :goto_13
    const/4 v11, 0x4

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v11, v0

    goto :goto_14

    :cond_20
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "dimo_app_name"

    invoke-static {v11, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoTitle:Ljava/lang/String;

    goto :goto_13

    :cond_21
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "dimo_package_name"

    invoke-static {v11, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoPackage:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_13

    :goto_14
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_15

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v11

    :cond_22
    if-eqz v7, :cond_23

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_2

    :catch_2
    :cond_23
    :goto_16
    sput-boolean v18, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->sShouldCheckDimoSupport:Z

    :cond_24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_18

    :cond_25
    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoCodeTypes:[Ljava/lang/String;

    if-eqz v0, :cond_27

    array-length v7, v0

    move/from16 v11, v18

    :goto_17
    if-ge v11, v7, :cond_27

    aget-object v12, v0, v11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_26

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_26

    move v0, v5

    goto/16 :goto_1c

    :cond_26
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_27
    :goto_18
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_c
    new-instance v7, Landroid/content/ComponentName;

    const-string v11, "com.motorola.ccc.notification"

    const-string v12, "com.motorola.ccc.notification.ExternalMonopolyLauncher"

    invoke-direct {v7, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3

    if-ne v0, v15, :cond_2d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->QR_PATTERNS:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v10, v18

    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    or-int/2addr v10, v11

    goto :goto_19

    :cond_28
    const-string v0, "Banco24Horas"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "SaqueDigital"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v13, :cond_29

    const/4 v0, 0x2

    goto/16 :goto_1c

    :cond_29
    if-nez v10, :cond_2c

    const-string v0, "[^0-9]"

    invoke-virtual {v2, v0, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_2a

    move/from16 v0, v18

    goto :goto_1b

    :cond_2a
    const-string v7, "8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v8, v18

    invoke-static {v5, v8, v0}, Lcom/motorola/camera/utility/ColorUtil;->barcodeVDCalculation(IILjava/lang/String;)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1a

    :cond_2b
    move/from16 v8, v18

    const/4 v7, 0x4

    const/16 v10, 0xb

    invoke-static {v7, v10, v0}, Lcom/motorola/camera/utility/ColorUtil;->barcodeVDCalculation(IILjava/lang/String;)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1b
    if-eqz v0, :cond_2d

    :cond_2c
    const/4 v0, 0x1

    goto :goto_1c

    :catch_3
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MotoMonopoly: Illegal Argument Exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v0, 0x0

    :goto_1c
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne v7, v6, :cond_2f

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2e

    sget-object v6, Lcom/motorola/camera/detector/results/ZxingResultParser;->CODE_128_PREFIXES:Ljava/util/List;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    move v6, v15

    goto :goto_1d

    :cond_2e
    const/4 v6, 0x0

    :goto_1d
    if-eqz v6, :cond_2f

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    const/4 v7, 0x4

    invoke-direct {v0, v7}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    goto/16 :goto_21

    :cond_2f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31

    const-string v6, "motorolardpconnection"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_30

    const-string v6, "motorolareadyformiracast"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    :cond_30
    move v6, v15

    goto :goto_1e

    :cond_31
    const/4 v6, 0x0

    :goto_1e
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v8, "com.motorola.permission.mobiledesktop.rdp"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_32

    goto :goto_1f

    :cond_32
    const/4 v15, 0x0

    :goto_1f
    and-int/2addr v6, v15

    const-string v7, "com.motorola.mobiledesktop"

    invoke-static {v7}, Landroidx/compose/runtime/Latch;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_33

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(ILjava/lang/Object;)V

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    :goto_20
    move/from16 v13, p0

    goto/16 :goto_23

    :cond_33
    if-eqz v0, :cond_34

    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;

    invoke-direct {v5, v2, v0}, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;-><init>(Ljava/lang/String;I)V

    iput-object v5, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    goto :goto_20

    :cond_34
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    iget-object v5, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mBarcodeFormat:Lcom/google/zxing/BarcodeFormat;

    const/4 v7, 0x5

    invoke-direct {v0, v7}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    sput-object v5, Lcom/motorola/camera/detector/results/tidbit/Url;->mFormat:Lcom/google/zxing/BarcodeFormat;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    goto :goto_20

    :pswitch_9
    const/16 v7, 0xa

    check-cast v10, Lcom/google/zxing/client/result/URIParsedResult;

    iget-object v0, v10, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    const-string v2, "MT:[A-Z0-9.-]{19,}"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Url;

    const/4 v7, 0x2

    invoke-direct {v2, v7, v0}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(ILjava/lang/Object;)V

    iput-object v2, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    goto/16 :goto_23

    :cond_35
    const-string/jumbo v2, "uriScheme"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-nez v2, :cond_36

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v20, 0x0

    const-string v24, "FIDO:/"

    move-object/from16 v23, v0

    move/from16 v25, v15

    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt__StringsJVMKt;->regionMatches(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move-object/from16 v2, v23

    if-eqz v0, :cond_37

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(ILjava/lang/Object;)V

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    const/16 v0, 0xe

    move v13, v0

    goto/16 :goto_23

    :cond_36
    move-object v2, v0

    :cond_37
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    goto :goto_22

    :pswitch_a
    instance-of v0, v10, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    if-eqz v0, :cond_38

    check-cast v10, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    const/4 v7, 0x4

    invoke-direct {v0, v7}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iget-object v2, v10, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    goto :goto_21

    :cond_38
    const/4 v7, 0x4

    check-cast v10, Lcom/google/zxing/client/result/ProductParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v7}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iget-object v2, v10, Lcom/google/zxing/client/result/ProductParsedResult;->normalizedProductID:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    :goto_21
    move/from16 v13, v16

    goto :goto_23

    :pswitch_b
    const/4 v7, 0x5

    check-cast v10, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Message;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v10, Lcom/google/zxing/client/result/EmailAddressParsedResult;->tos:[Ljava/lang/String;

    if-eqz v2, :cond_39

    array-length v5, v2

    if-lez v5, :cond_39

    const/16 v18, 0x0

    aget-object v8, v2, v18

    :cond_39
    iput-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->email:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->subject:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->body:Ljava/lang/String;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    :goto_22
    move v13, v7

    goto :goto_23

    :pswitch_c
    const/4 v7, 0x2

    check-cast v10, Lcom/google/zxing/client/result/AddressBookParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Contact;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    iput-object v0, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    goto :goto_22

    :goto_23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v4, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->mCheckInData:I

    shl-int/lit8 v0, v0, 0x8

    invoke-static {v13}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->getMCheckInData(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v3, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    move-object v3, v9

    goto :goto_25

    :goto_24
    move-object v3, v14

    :goto_25
    if-eqz v3, :cond_3a

    iget-object v0, v1, Lcom/motorola/camera/detector/ScanningEngine;->mUiHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_26

    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized barcode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanningEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->BARCODE_SCANNING_TIME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_3b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch
.end method
