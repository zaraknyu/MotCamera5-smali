.class public Lcom/adobe/magic_clean/CameraCleanAndroidShim;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MagicClean"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private MapPointsToOriginalRotation(Lcom/adobe/magic_clean/CCornersInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getClonedPoints()[Landroid/graphics/PointF;

    move-result-object p1

    const/4 v0, 0x1

    aget-object v1, p0, v0

    const/4 v2, 0x0

    aget-object v3, p1, v2

    iget v4, v3, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x2

    aget-object v3, p0, v1

    aget-object v0, p1, v0

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float v4, v5, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v3, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x3

    aget-object v3, p0, v0

    aget-object v1, p1, v1

    iget v4, v1, Landroid/graphics/PointF;->y:F

    sub-float v4, v5, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v3, Landroid/graphics/PointF;->y:F

    aget-object p0, p0, v2

    aget-object p1, p1, v0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v0

    iput v5, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private SetBDAnalyticsData(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;)V
    .locals 2

    iget-object p0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mMLAnalyticsInput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;

    iget-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;->mCalculateMLAnalyticsforBD:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mBDWorkflow:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;

    iget-object p1, p1, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;->mCaptureType:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->kCaptureTypePost:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;->mCalculateMLAnalyticsforBD:Z

    return-void
.end method

.method private ValidateEdgeDetectionInput(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 0

    iget-object p0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImage:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0

    :cond_0
    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0
.end method

.method private ValidateFilterThumbnailInput(Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 1

    iget p0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mCleaningLevel:I

    sget v0, Lcom/adobe/magic_clean/CameraCleanUtils$CleaningLevel;->kDefaultAggressiveCleaningLevel:I

    if-eq p0, v0, :cond_0

    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mOriginalImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0

    :cond_0
    sget v0, Lcom/adobe/magic_clean/CameraCleanUtils$CleaningLevel;->kDefaultCleaningLevel:I

    if-le p0, v0, :cond_1

    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mAutoCleanImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0

    :cond_1
    sget v0, Lcom/adobe/magic_clean/CameraCleanUtils$CleaningLevel;->kMinCleaningLevel:I

    if-lt p0, v0, :cond_5

    sget v0, Lcom/adobe/magic_clean/CameraCleanUtils$CleaningLevel;->kLightTextCleaningLevel:I

    if-le p0, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mIsColorInfoAvailable:Z

    if-eqz p0, :cond_4

    iget p0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mDocumentColorType:I

    if-ltz p0, :cond_3

    const/4 p1, 0x2

    if-le p0, p1, :cond_4

    :cond_3
    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0

    :cond_4
    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0
.end method

.method private ValidateImageCleaningInput(Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 0

    iget-object p0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mInputImage:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0

    :cond_0
    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0
.end method

.method private WriteBDAnalyticsData(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;)V
    .locals 5

    iget-object p0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mMLAnalyticsOutput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;

    iget-boolean p0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->isValid:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    const-string v0, "1"

    move v1, p0

    :goto_0
    iget-object v2, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mMLAnalyticsOutput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;

    iget-object v2, v2, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->mBufferForKeys:[[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    move v2, p0

    :goto_1
    iget-object v3, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mMLAnalyticsOutput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;

    iget-object v3, v3, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->mBufferForKeys:[[B

    aget-object v3, v3, v1

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-byte v3, v3, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :cond_2
    new-instance p0, Ljava/io/File;

    const-string p1, "/sdcard/MCBDAnalytics.csv"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private native cropAndClean(Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
.end method

.method private native getCorners(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
.end method

.method private native getFilterThumbnailImage(Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
.end method

.method private native getFinalWidthAndHeight([Landroid/graphics/PointF;II)[I
.end method

.method private native preLoadMCModel(Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;Z)V
.end method


# virtual methods
.method public CropAndClean(Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 2

    invoke-direct {p0, p1}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->ValidateImageCleaningInput(Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object v0

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    if-eq v0, v1, :cond_0

    iput-object v0, p2, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->cropAndClean(Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object p0

    return-object p0
.end method

.method public GetCorners(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 8

    invoke-direct {p0, p1}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->ValidateEdgeDetectionInput(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object v0

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    if-eq v0, v1, :cond_0

    iput-object v0, p2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    sget-object v3, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeBook:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    if-ne v2, v3, :cond_1

    mul-int v2, v1, v0

    int-to-double v4, v2

    const-wide v6, 0x40ff400000000000L    # 128000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_0

    :cond_1
    mul-int v2, v1, v0

    int-to-double v4, v2

    const-wide/high16 v6, 0x4102000000000000L    # 147456.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_2

    :goto_1
    move-wide v4, v6

    goto :goto_2

    :cond_2
    const-wide v6, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    double-to-int v2, v4

    iget-object v4, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImage:Landroid/graphics/Bitmap;

    div-int v5, v1, v2

    div-int v2, v0, v2

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImageBD:Landroid/graphics/Bitmap;

    iget-object v4, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    if-ne v4, v3, :cond_4

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mInputBmpBDSize:Landroid/graphics/Bitmap;

    :cond_4
    const/16 v2, 0x180

    iget-object v4, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImage:Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImageDC:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->SetBDAnalyticsData(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;)V

    iget-object v2, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_5

    if-ge v1, v0, :cond_5

    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImageBD:Landroid/graphics/Bitmap;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {v0, v1}, Lcom/adobe/magic_clean/CameraCleanUtils;->RotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImageBD:Landroid/graphics/Bitmap;

    iput-object v0, p2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mInputRotatedBmpForBD:Landroid/graphics/Bitmap;

    iput-boolean v4, p2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mIsImageRotated:Z

    move v0, v4

    goto :goto_3

    :cond_5
    move v0, v6

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->getCorners(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object p1

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mCCornersInfoVec:[Lcom/adobe/magic_clean/CCornersInfo;

    aget-object v0, v0, v6

    invoke-direct {p0, v0}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->MapPointsToOriginalRotation(Lcom/adobe/magic_clean/CCornersInfo;)V

    iget-object p2, p2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mCCornersInfoVec:[Lcom/adobe/magic_clean/CCornersInfo;

    aget-object p2, p2, v4

    invoke-direct {p0, p2}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->MapPointsToOriginalRotation(Lcom/adobe/magic_clean/CCornersInfo;)V

    :cond_6
    return-object p1
.end method

.method public GetFilterThumbnailImage(Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 2

    invoke-direct {p0, p1}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->ValidateFilterThumbnailInput(Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object v0

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    if-eq v0, v1, :cond_0

    iput-object v0, p2, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->getFilterThumbnailImage(Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object p0

    return-object p0
.end method

.method public GetFinalWidthAndHeight([Landroid/graphics/PointF;II)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/PointF;",
            "II)",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->getFinalWidthAndHeight([Landroid/graphics/PointF;II)[I

    move-result-object p0

    new-instance p1, Ljava/util/Vector;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/Vector;-><init>(I)V

    const/4 p2, 0x0

    aget p3, p0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    aget p0, p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-object p1
.end method

.method public PreloadMCModel(Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->preLoadMCModel(Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;Z)V

    return-void
.end method
