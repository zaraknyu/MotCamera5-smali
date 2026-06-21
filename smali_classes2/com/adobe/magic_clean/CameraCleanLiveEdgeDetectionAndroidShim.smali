.class public Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;,
        Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;,
        Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;,
        Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;
    }
.end annotation


# static fields
.field private static final HARD_RESET:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SOFT_RESET:Z = true

.field private static final kEpsilon:D = 1.0E-10


# instance fields
.field private mAllCornersInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/adobe/magic_clean/CCornersInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBoundaryConfidence:I

.field private mBoundaryConfidenceForCaptureThreshold:I

.field private mBoundaryConfidenceForDisplayThreshold:I

.field private mCaptureConditionsAnalyzed:Z

.field private mCornerToleranceLimit:D

.field private mCornersTorchOff:[Landroid/graphics/PointF;

.field private mCornersTorchOn:[Landroid/graphics/PointF;

.field private mDisplayedCornersInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/adobe/magic_clean/CCornersInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field private mDocClassificationConfidence:I

.field private mEnableBetaFeatures:Z

.field private mGlareAnalysisTimeoutCounter:I

.field private mGlareAnalyzed:Z

.field private mHardShadowsAnalyzed:Z

.field private mImageBufferTorchOff:[B

.field private mImageBufferTorchOn:[B

.field private mImageTorchOffHeight:I

.field private mImageTorchOffWidth:I

.field private mImageTorchOnHeight:I

.field private mImageTorchOnWidth:I

.field private mInCropConfidence:Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;

.field private mIsLowContrastBD:Z

.field private mLastStableCornerInfo:Lcom/adobe/magic_clean/CCornersInfo;

.field private mLiveBoundaryCaptureEnableCounter:I

.field private mLiveBoundaryCaptureEnableInterval:J

.field private mLiveBoundaryCaptureEnabled:Z

.field private mLiveBoundaryHintUpdateEnabled:Z

.field private mLiveBoundaryHintUpdateInterval:J

.field private mLiveBoundaryTimeKeeper:Ljava/util/Timer;

.field private mLiveBoundaryTimeKeeperCounter:I

.field private mLiveBoundaryTimeKeeperInterval:J

.field private mLiveBoundaryTriggerCapture:Z

.field private mLiveBoundaryUpdateEnabled:Z

.field private mLiveBoundaryUpdateInterval:J

.field private mLowBrightnessFrameCount:I

.field private mLowLightAnalyzed:Z

.field private mNumInputFrames:I

.field private mNumInputFramesBD:I

.field private mNumInvalidations:I

.field private mPrevCorners:Lcom/adobe/magic_clean/CCornersInfo;

.field private mPrevDetectionResult:Z

.field private mPrevLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

.field private mPrevLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

.field private mPrevSensorOffset:I

.field private mSoftResetCount:I

.field private mStableBoundaryConfidence:I

.field private mTimeTakenInGetLiveCorners:D

.field mTimeThresholdToResetBoundaryConfidenceHigh:D

.field mTimeThresholdToResetBoundaryConfidenceLow:D

.field private mTorchOffFramesCount:I

.field private mTorchOnFramesCount:I


# direct methods
.method public static bridge synthetic -$$Nest$mLiveBoundaryTimeKeeperFunction(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->LiveBoundaryTimeKeeperFunction()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MagicClean"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornerToleranceLimit:D

    const-wide/16 p1, 0xfa

    iput-wide p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperInterval:J

    const-wide/16 p1, 0x2ee

    iput-wide p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateInterval:J

    const-wide/16 p1, 0x3e8

    iput-wide p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryHintUpdateInterval:J

    const-wide/16 p1, 0x5dc

    iput-wide p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnableInterval:J

    sget-object p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationEnd:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassificationConfidence:I

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFrames:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mAllCornersInfo:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDisplayedCornersInfo:Ljava/util/ArrayList;

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInvalidations:I

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mEnableBetaFeatures:Z

    new-instance p2, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;

    invoke-direct {p2}, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;-><init>()V

    iput-object p2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mInCropConfidence:Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeTakenInGetLiveCorners:D

    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeThresholdToResetBoundaryConfidenceHigh:D

    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeThresholdToResetBoundaryConfidenceLow:D

    invoke-direct {p0, p1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->resetLiveBoundary(Z)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeper:Ljava/util/Timer;

    new-instance v3, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$1;

    invoke-direct {v3, p0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$1;-><init>(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;)V

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperInterval:J

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private AdjustBoundaryConfidenceThresholds()V
    .locals 6

    iget-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeTakenInGetLiveCorners:D

    iget-wide v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeThresholdToResetBoundaryConfidenceHigh:D

    cmpl-double v2, v0, v2

    const-string v3, "getLiveCornersGray_AdjustBoundaryConfidenceThresholds: "

    if-lez v2, :cond_1

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeTakenInGetLiveCorners:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/magic_clean/MagicCleanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForCaptureThreshold:I

    if-le v0, v1, :cond_3

    :cond_0
    iput v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I

    iput v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForCaptureThreshold:I

    return-void

    :cond_1
    iget-wide v4, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeThresholdToResetBoundaryConfidenceLow:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeTakenInGetLiveCorners:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/magic_clean/MagicCleanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForCaptureThreshold:I

    if-le v0, v1, :cond_3

    :cond_2
    iput v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I

    iput v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForCaptureThreshold:I

    :cond_3
    return-void
.end method

.method private AdjustCurrentBoundaryConfidence()V
    .locals 4

    iget-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateEnabled:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeTakenInGetLiveCorners:D

    iget-wide v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeThresholdToResetBoundaryConfidenceHigh:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    return-void

    :cond_0
    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    return-void

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    :cond_2
    return-void
.end method

.method private AnalyzeCaptureExperienceParams(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V
    .locals 3

    iget-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCaptureConditionsAnalyzed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->-$$Nest$fgetmAnalyzeCaptureConditions(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCaptureConditionsAnalyzed:Z

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mIsTorchActive:Z

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mInputBufferGray:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOff:[B

    iget v0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mWidth:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOffWidth:I

    iget v0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mHeight:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOffHeight:I

    iget-object v0, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    invoke-virtual {v0}, Lcom/adobe/magic_clean/CCornersInfo;->getClonedPoints()[Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornersTorchOff:[Landroid/graphics/PointF;

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOffFramesCount:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOffFramesCount:I

    :cond_1
    iget-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowLightAnalyzed:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->AnalyzeLowLight(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V

    :cond_2
    iget-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mHardShadowsAnalyzed:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->IsLowLight()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOffFramesCount:I

    sub-int/2addr v0, v2

    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->AnalyzeHardShadows(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V

    :cond_3
    iget-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowLightAnalyzed:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mHardShadowsAnalyzed:Z

    if-eqz p1, :cond_7

    iget-object p1, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    sget-object p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOn:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    if-eq p1, p2, :cond_4

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mGlareAnalyzed:Z

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mGlareAnalysisTimeoutCounter:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mGlareAnalysisTimeoutCounter:I

    goto :goto_0

    :cond_5
    iget p2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    sub-int/2addr p2, p1

    const/16 p1, 0x8

    if-lt p2, p1, :cond_7

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mGlareAnalyzed:Z

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mGlareAnalyzed:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->AnalyzeGlare(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V

    :cond_7
    :goto_0
    iget-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowLightAnalyzed:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mHardShadowsAnalyzed:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mGlareAnalyzed:Z

    if-eqz p1, :cond_8

    move p1, v1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCaptureConditionsAnalyzed:Z

    :cond_9
    iget-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCaptureConditionsAnalyzed:Z

    if-eqz p1, :cond_a

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTriggerCapture:Z

    :cond_a
    return-void
.end method

.method private AnalyzeGlare(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V
    .locals 4

    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mInputBufferGray:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOn:[B

    iget v0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mWidth:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOnWidth:I

    iget p1, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mHeight:I

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOnHeight:I

    iget-object p1, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getClonedPoints()[Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornersTorchOn:[Landroid/graphics/PointF;

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOnFramesCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOnFramesCount:I

    :cond_0
    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOff:[B

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornersTorchOff:[Landroid/graphics/PointF;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOffWidth:I

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOffHeight:I

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOn:[B

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOnWidth:I

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOnHeight:I

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    iget v3, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOnFramesCount:I

    sub-int/2addr p1, v3

    const/4 v3, 0x3

    if-le p1, v3, :cond_4

    invoke-static {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils;->getRGBABitmapFromYUVBuffer([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOn:[B

    iget v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOnWidth:I

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOnHeight:I

    invoke-static {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils;->getRGBABitmapFromYUVBuffer([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, p1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_2
    iget-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornersTorchOff:[Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornersTorchOn:[Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->imageHasGlareAfterTorch(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;Landroid/graphics/Bitmap;[Landroid/graphics/PointF;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v1, :cond_3

    sget-object p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOff:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object p1, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mGlareAnalyzed:Z

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowLightAnalyzed:Z

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mHardShadowsAnalyzed:Z

    :cond_4
    return-void
.end method

.method private AnalyzeHardShadows(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V
    .locals 3

    iget-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnabled:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOff:[B

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornersTorchOff:[Landroid/graphics/PointF;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOffWidth:I

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOffHeight:I

    if-eqz v2, :cond_2

    invoke-static {p1, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils;->getRGBABitmapFromYUVBuffer([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v1

    :cond_0
    iget-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornersTorchOff:[Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->imageHasDarkShadow(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v1, :cond_1

    sget-object p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOn:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object p1, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowLightAnalyzed:Z

    :cond_1
    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mHardShadowsAnalyzed:Z

    :cond_2
    return-void

    :cond_3
    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mHardShadowsAnalyzed:Z

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowLightAnalyzed:Z

    return-void
.end method

.method private AnalyzeLowLight(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V
    .locals 3

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->IsAmbientLightDarkerThan(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;D)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowBrightnessFrameCount:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowBrightnessFrameCount:I

    iget v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOffFramesCount:I

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnabled:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    :goto_1
    if-lt p1, v2, :cond_2

    sget-object p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOn:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object p1, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowLightAnalyzed:Z

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mHardShadowsAnalyzed:Z

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowLightAnalyzed:Z

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mHardShadowsAnalyzed:Z

    :cond_3
    return-void
.end method

.method private AreCurrentCornersWithinTolerance(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;DZ)Z
    .locals 7

    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    invoke-virtual {v0}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevCorners:Lcom/adobe/magic_clean/CCornersInfo;

    invoke-virtual {v1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, p2

    const/4 v4, 0x1

    if-gtz v3, :cond_0

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v5, v1, v2

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    cmpg-double v3, v5, p2

    if-gtz v3, :cond_0

    aget-object v3, v0, v4

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v5, v1, v4

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    cmpg-double v3, v5, p2

    if-gtz v3, :cond_0

    aget-object v3, v0, v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v5, v1, v4

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    cmpg-double v3, v5, p2

    if-gtz v3, :cond_0

    const/4 v3, 0x2

    aget-object v5, v0, v3

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v6, v1, v3

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, p2

    if-gtz v5, :cond_0

    aget-object v5, v0, v3

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget-object v3, v1, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    cmpg-double v3, v5, p2

    if-gtz v3, :cond_0

    const/4 v3, 0x3

    aget-object v5, v0, v3

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v6, v1, v3

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, p2

    if-gtz v5, :cond_0

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double p2, v0, p2

    if-gtz p2, :cond_0

    return v4

    :cond_0
    if-eqz p4, :cond_1

    iget-object p0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevCorners:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object p0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    return v4

    :cond_1
    return v2
.end method

.method private CalculateCropConfidence(Ljava/util/ArrayList;IDDD)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/adobe/magic_clean/CCornersInfo;",
            ">;IDDD)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInvalidations:I

    const/4 v3, 0x1

    move/from16 v5, p2

    if-lt v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {v0, v5}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->CheckIfQuadHasDummyEdge(Lcom/adobe/magic_clean/CCornersInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    if-nez v2, :cond_7

    sub-int/2addr v5, v3

    move v9, v5

    move v11, v6

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ltz v9, :cond_6

    sub-int v13, v6, v11

    if-ne v10, v13, :cond_3

    int-to-double v13, v10

    move v15, v3

    int-to-double v3, v6

    div-double v17, p3, v7

    mul-double v3, v3, v17

    cmpl-double v3, v13, v3

    if-nez v3, :cond_4

    move v4, v10

    move v2, v15

    move/from16 v16, v2

    goto :goto_5

    :cond_3
    move v15, v3

    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/magic_clean/CCornersInfo;

    div-double v13, p7, v7

    invoke-direct {v0, v3, v4, v13, v14}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->WithinTolerance(Lcom/adobe/magic_clean/CCornersInfo;Lcom/adobe/magic_clean/CCornersInfo;D)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v12, v12, 0x1

    :goto_3
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v15

    goto :goto_2

    :cond_6
    move v15, v3

    move v4, v10

    :goto_4
    const/16 v16, 0x0

    goto :goto_5

    :cond_7
    move v15, v3

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_4

    :goto_5
    if-nez v2, :cond_8

    int-to-double v0, v4

    add-int/2addr v4, v12

    int-to-double v2, v4

    div-double/2addr v0, v2

    div-double v2, p5, v7

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_8

    return v15

    :cond_8
    return v16
.end method

.method private CanSetHoldForCaptureHint(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)Z
    .locals 1

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForCaptureThreshold:I

    if-lt p1, v0, :cond_0

    iget-boolean p0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnabled:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private CanSetReadyForCaptureHint(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)Z
    .locals 2

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForCaptureThreshold:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCaptureConditionsAnalyzed:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTriggerCapture:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private CheckIfQuadHasDummyEdge(Lcom/adobe/magic_clean/CCornersInfo;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v2, p0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double p0, v2, v4

    const/4 v2, 0x1

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v6, p0

    cmpg-double p0, v6, v4

    if-lez p0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v2

    iget p0, p0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v6, p0

    cmpg-double p0, v6, v4

    const/4 v6, 0x2

    if-gtz p0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v6

    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v7, p0

    cmpg-double p0, v7, v4

    if-lez p0, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v6

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v6, p0

    cmpg-double p0, v6, v4

    const/4 v6, 0x3

    if-gtz p0, :cond_2

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v6

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v7, p0

    cmpg-double p0, v7, v4

    if-lez p0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v6

    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v6, p0

    cmpg-double p0, v6, v4

    if-gtz p0, :cond_4

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    cmpg-double p0, p0, v4

    if-gtz p0, :cond_4

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method private GetBoundariesInLivePreview(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;Z)Z
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevSensorOffset:I

    iget v3, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mSenserOffset:I

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sensor offset changed from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevSensorOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mSenserOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/magic_clean/MagicCleanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;

    invoke-direct {v2}, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;-><init>()V

    sget-object v3, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->kCaptureTypeLive:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    iput-object v3, v2, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;->mCaptureType:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    sget-object v3, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->kWorkflowHeuristics:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    iput-object v3, v2, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;->mWorkflow:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    iget-object v3, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mInputBufferGray:[B

    iget v4, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mWidth:I

    iget v5, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mHeight:I

    invoke-static {v3, v4, v5}, Lcom/adobe/magic_clean/CameraCleanUtils;->getRGBABitmapFromYUVBuffer([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;

    invoke-direct {v4, v3}, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v4, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mBDWorkflow:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;

    iget-boolean v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mIsLowContrastBD:Z

    iput-boolean v2, v4, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mIsLowContrast:Z

    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object v3, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationBusinessCard:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    if-ne v2, v3, :cond_2

    iget v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFrames:I

    rem-int/lit8 v5, v5, 0x6

    if-nez v5, :cond_1

    sget-object v2, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationEnd:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    :cond_1
    iput-object v2, v4, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFrames:I

    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_3

    sget-object v2, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationEnd:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    :cond_3
    iput-object v2, v4, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    :goto_0
    iget-object v2, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    iput-object v2, v4, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    new-instance v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;

    invoke-direct {v2}, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;-><init>()V

    new-instance v5, Lcom/adobe/magic_clean/CameraCleanAndroidShim;

    invoke-direct {v5}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;-><init>()V

    invoke-virtual {v5, v4, v2}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->GetCorners(Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    invoke-virtual {v4}, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->recycleBitmaps()V

    iget-object v4, v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mCCornersInfoVec:[Lcom/adobe/magic_clean/CCornersInfo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    array-length v7, v4

    if-lez v7, :cond_4

    new-instance v7, Lcom/adobe/magic_clean/CCornersInfo;

    aget-object v4, v4, v6

    iget-object v8, v4, Lcom/adobe/magic_clean/CCornersInfo;->mCornersType:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    invoke-virtual {v4}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v4

    iget-object v9, v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mCCornersInfoVec:[Lcom/adobe/magic_clean/CCornersInfo;

    aget-object v9, v9, v6

    iget-boolean v9, v9, Lcom/adobe/magic_clean/CCornersInfo;->mIsGoodForDisplay:Z

    invoke-direct {v7, v8, v4, v9}, Lcom/adobe/magic_clean/CCornersInfo;-><init>(Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;[Landroid/graphics/PointF;Z)V

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {v7}, Lcom/adobe/magic_clean/CCornersInfo;-><init>()V

    :goto_1
    iget-object p1, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    sget-object v4, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeBook:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    if-ne p1, v4, :cond_6

    invoke-virtual {v7}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p1

    iget-object v4, v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mCCornersInfoVec:[Lcom/adobe/magic_clean/CCornersInfo;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v4

    aget-object v4, v4, v5

    aput-object v4, p1, v5

    invoke-virtual {v7}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p1

    iget-object v4, v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mCCornersInfoVec:[Lcom/adobe/magic_clean/CCornersInfo;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v4

    const/4 v8, 0x2

    aget-object v4, v4, v8

    aput-object v4, p1, v8

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :cond_6
    :goto_2
    iget-boolean p1, v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mIsLowContrast:Z

    iput-boolean p1, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mIsLowContrast:Z

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mIsLowContrastBD:Z

    iget-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    iget-object v4, v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    if-ne p1, v4, :cond_8

    if-eq v4, v3, :cond_7

    goto :goto_3

    :cond_7
    if-ne v4, v3, :cond_9

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassificationConfidence:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassificationConfidence:I

    goto :goto_4

    :cond_8
    :goto_3
    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassificationConfidence:I

    if-lez p1, :cond_9

    invoke-virtual {p0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->AdjustDocClassificationConfidence()V

    :cond_9
    :goto_4
    iget-object p1, v2, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLiveCornersGray_GetBoundariesInLivePreview: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adobe/magic_clean/MagicCleanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_a

    iput-object v7, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    return v5

    :cond_a
    if-eqz p3, :cond_b

    iget-object p0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevCorners:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object p0, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    return v5

    :cond_b
    return v6
.end method

.method private IgnoreBoundaryChangesDueToTorchOn(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;)Z
    .locals 0

    iget-boolean p1, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mIsTorchActive:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOnFramesCount:I

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    sub-int/2addr p0, p1

    const/4 p1, 0x3

    if-gt p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private IsAmbientLightDarkerThan(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;D)Z
    .locals 0

    iget-wide p0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mBrightnessFromCamera:D

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private IsLowLight()Z
    .locals 0

    iget p0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowBrightnessFrameCount:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private LiveBoundaryTimeKeeperFunction()V
    .locals 12

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateInterval:J

    iget-wide v6, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperInterval:J

    div-long/2addr v4, v6

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateEnabled:Z

    :cond_0
    int-to-long v2, v0

    iget-wide v8, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryHintUpdateInterval:J

    div-long/2addr v8, v6

    rem-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryHintUpdateEnabled:Z

    :cond_1
    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnableCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnableCounter:I

    int-to-long v2, v0

    iget-wide v8, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnableInterval:J

    div-long v10, v8, v6

    rem-long/2addr v2, v10

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnabled:Z

    :cond_2
    int-to-long v2, v0

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    div-long/2addr v8, v6

    rem-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTriggerCapture:Z

    :cond_3
    return-void
.end method

.method private LivePreviewContainsDocument(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->-$$Nest$fputmLivePreviewContainsDoc(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Z)V

    new-instance p0, Lcom/adobe/magic_clean/CameraCleanDocDetectionAndroidShim;

    invoke-direct {p0}, Lcom/adobe/magic_clean/CameraCleanDocDetectionAndroidShim;-><init>()V

    iget-object v2, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mInputBufferGray:[B

    iget v3, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mWidth:I

    iget v4, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mHeight:I

    invoke-static {v2, v3, v4}, Lcom/adobe/magic_clean/CameraCleanUtils;->getRGBABitmapFromYUVBuffer([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;

    invoke-direct {v3, v2}, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;->mIsLiveCaptureCase:Z

    invoke-virtual {p0, v3}, Lcom/adobe/magic_clean/CameraCleanDocDetectionAndroidShim;->DetectDocType(Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;)Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;

    move-result-object p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;->mDocType:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    sget-object v2, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeDocument:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    if-ne p0, v2, :cond_0

    invoke-static {p1, v4}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->-$$Nest$fputmLivePreviewContainsDoc(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Z)V

    :cond_0
    sget-object p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "getLiveCornersGray_LivePreviewContainsDocument: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/adobe/magic_clean/MagicCleanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private RestoreToDefaults()V
    .locals 5

    new-instance v0, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CCornersInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevCorners:Lcom/adobe/magic_clean/CCornersInfo;

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintLookingForDocument:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOff:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevDetectionResult:Z

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForCaptureThreshold:I

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mIsLowContrastBD:Z

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFramesBD:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeperCounter:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnableCounter:I

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateEnabled:Z

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryHintUpdateEnabled:Z

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnabled:Z

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTriggerCapture:Z

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mSoftResetCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCaptureConditionsAnalyzed:Z

    if-ge v2, v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowLightAnalyzed:Z

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mGlareAnalyzed:Z

    iput-boolean v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mHardShadowsAnalyzed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOff:[B

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOffWidth:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOffHeight:I

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornersTorchOff:[Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOn:[B

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOnWidth:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageTorchOnHeight:I

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornersTorchOn:[Landroid/graphics/PointF;

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOnFramesCount:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTorchOffFramesCount:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mGlareAnalysisTimeoutCounter:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLowBrightnessFrameCount:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mStableBoundaryConfidence:I

    new-instance v0, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CCornersInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLastStableCornerInfo:Lcom/adobe/magic_clean/CCornersInfo;

    return-void
.end method

.method private SetAppropriateHint(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->CanSetHoldForCaptureHint(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintHoldForCapture:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object v0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->CanSetReadyForCaptureHint(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintReadyForCapture:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object p0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-nez v1, :cond_2

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintNone:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object p0, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    :cond_2
    return-void
.end method

.method private WithinTolerance(Lcom/adobe/magic_clean/CCornersInfo;Lcom/adobe/magic_clean/CCornersInfo;D)Z
    .locals 5

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v1, p0

    cmpg-double p0, v1, p3

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v1, p0

    cmpg-double p0, v1, p3

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v2, p0

    cmpg-double p0, v2, p3

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v2, p0

    cmpg-double p0, v2, p3

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    const/4 v2, 0x2

    aget-object p0, p0, v2

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v3

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v3, p0

    cmpg-double p0, v3, p3

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v3

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v2, p0

    cmpg-double p0, v2, p3

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    const/4 v2, 0x3

    aget-object p0, p0, v2

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object v3

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v3, p0

    cmpg-double p0, v3, p3

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p0

    aget-object p0, p0, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/adobe/magic_clean/CCornersInfo;->getPointsRef()[Landroid/graphics/PointF;

    move-result-object p1

    aget-object p1, p1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    cmpg-double p0, p0, p3

    if-gtz p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    mul-int p0, p2, p3

    int-to-double v0, p0

    const-wide v2, 0x40f2c00000000000L    # 76800.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    :goto_0
    move-wide v0, v2

    goto :goto_1

    :cond_0
    const-wide v2, 0x406fe00000000000L    # 255.0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    double-to-int p0, v0

    div-int/2addr p2, p0

    div-int/2addr p3, p0

    const/4 p0, 0x0

    invoke-static {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private native imageHasDarkShadow(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;)Z
.end method

.method private native imageHasGlareAfterTorch(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;Landroid/graphics/Bitmap;[Landroid/graphics/PointF;)Z
.end method

.method private resetLiveBoundary(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOff:[B

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mImageBufferTorchOn:[B

    if-eqz p1, :cond_2

    .line 6
    :cond_0
    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mSoftResetCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mSoftResetCount:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mSoftResetCount:I

    .line 8
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->RestoreToDefaults()V

    return-void
.end method


# virtual methods
.method public AdjustDocClassificationConfidence()V
    .locals 2

    iget v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassificationConfidence:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassificationConfidence:I

    return-void

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassificationConfidence:I

    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 0

    iget-object p0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryTimeKeeper:Ljava/util/Timer;

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public declared-synchronized getLiveCornersGray(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)Z
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevCorners:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iget-boolean v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mIsLowContrastBD:Z

    iput-boolean v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mIsLowContrast:Z

    iget v2, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mFrameNumber:I

    iput v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mFrames:I

    iget-object v2, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    sget-object v3, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeBook:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v2, v3, :cond_0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :try_start_1
    iput-wide v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeThresholdToResetBoundaryConfidenceHigh:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_9

    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mInputBufferGray:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    :try_start_3
    invoke-direct {p0, p1}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->IgnoreBoundaryChangesDueToTorchOn(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;)Z

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->GetBoundariesInLivePreview(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    iget-wide v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornerToleranceLimit:D

    invoke-direct {p0, p2, v5, v6, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->AreCurrentCornersWithinTolerance(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;DZ)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    iget v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I

    if-lt v2, v5, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->AnalyzeCaptureExperienceParams(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V

    iget-boolean v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryHintUpdateEnabled:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->SetAppropriateHint(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V

    iput-boolean v3, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryHintUpdateEnabled:Z

    :cond_1
    iget-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mOriginalCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iget-boolean v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateEnabled:Z

    const-wide v6, 0x3fb999999999999aL    # 0.1

    if-eqz v5, :cond_4

    iput-boolean v3, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateEnabled:Z

    iget-wide v8, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeTakenInGetLiveCorners:D

    iget-wide v10, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeThresholdToResetBoundaryConfidenceHigh:D

    cmpg-double v5, v8, v10

    if-gez v5, :cond_3

    iget v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mStableBoundaryConfidence:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLastStableCornerInfo:Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {p0, v5, v2, v6, v7}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->WithinTolerance(Lcom/adobe/magic_clean/CCornersInfo;Lcom/adobe/magic_clean/CCornersInfo;D)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLastStableCornerInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iput-boolean v4, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateEnabled:Z

    :cond_2
    iput v3, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mStableBoundaryConfidence:I

    :cond_3
    iput-boolean v4, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mIsBoundaryUpdated:Z

    goto :goto_3

    :cond_4
    iget-wide v8, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeTakenInGetLiveCorners:D

    iget-wide v10, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeThresholdToResetBoundaryConfidenceHigh:D

    cmpg-double v5, v8, v10

    if-gez v5, :cond_6

    iget-object v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLastStableCornerInfo:Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {p0, v5, v2, v6, v7}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->WithinTolerance(Lcom/adobe/magic_clean/CCornersInfo;Lcom/adobe/magic_clean/CCornersInfo;D)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mStableBoundaryConfidence:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mStableBoundaryConfidence:I

    iget-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLastStableCornerInfo:Lcom/adobe/magic_clean/CCornersInfo;

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mStableBoundaryConfidence:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mStableBoundaryConfidence:I

    if-gtz v2, :cond_6

    iput v3, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mStableBoundaryConfidence:I

    iget-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLastStableCornerInfo:Lcom/adobe/magic_clean/CCornersInfo;

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevCorners:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iput-boolean v3, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mIsBoundaryUpdated:Z

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->AdjustCurrentBoundaryConfidence()V

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_8

    :goto_2
    move v2, v4

    goto :goto_4

    :cond_8
    :goto_3
    move v2, v3

    goto :goto_4

    :cond_9
    :try_start_4
    invoke-direct {p0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->AdjustCurrentBoundaryConfidence()V

    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    if-nez v2, :cond_8

    goto :goto_2

    :goto_4
    iget-boolean v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevDetectionResult:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_b

    :try_start_5
    iget-boolean v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateEnabled:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintNone:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    sget-object v2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOff:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    invoke-direct {p0, v4}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->resetLiveBoundary(Z)V

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevCorners:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iget-object v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object v2, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    :goto_5
    :try_start_6
    iget v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    iget v6, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-lt v2, v6, :cond_c

    move v2, v4

    goto :goto_6

    :cond_c
    move v2, v3

    :goto_6
    if-eqz v2, :cond_e

    :try_start_7
    iget-boolean v6, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mIsBoundaryUpdated:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDisplayedCornersInfo:Ljava/util/ArrayList;

    iget-object v7, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v6, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mAllCornersInfo:Ljava/util/ArrayList;

    iget-object v7, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-ne v5, v4, :cond_f

    if-nez v2, :cond_f

    iget v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInvalidations:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInvalidations:I

    :cond_f
    if-nez v2, :cond_10

    sget-object v5, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintLookingForDocument:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object v5, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    sget-object v5, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOff:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object v5, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_10
    :try_start_8
    iget-object v5, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    iput-object v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevCorners:Lcom/adobe/magic_clean/CCornersInfo;

    iget p1, p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryInput;->mSenserOffset:I

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevSensorOffset:I

    iput-boolean v2, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevDetectionResult:Z

    iget-object p1, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iget-object p1, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mPrevLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iget p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFramesBD:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFramesBD:I

    iget v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFrames:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFrames:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v2, :cond_11

    :try_start_9
    iget v4, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForCaptureThreshold:I

    if-le p1, v4, :cond_11

    iput-boolean v3, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mIsLowContrastBD:Z

    iput v3, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFramesBD:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_11
    :try_start_a
    iget-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDisplayedCornersInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_13

    if-eqz v2, :cond_13

    iget-object p1, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    sget-object v3, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintReadyForCapture:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    if-ne p1, v3, :cond_13

    iget-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mInCropConfidence:Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez p1, :cond_12

    :try_start_b
    new-instance p1, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;

    invoke-direct {p1}, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_12
    :try_start_c
    iget v5, p1, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;->mNumInvalidations:I

    iget-wide v6, p1, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;->mLastStableFrames:D

    iget-wide v10, p1, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;->mCornersAreCloseThreshold:D

    iget-object v4, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDisplayedCornersInfo:Ljava/util/ArrayList;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-wide v8, v6

    move-object v3, p0

    :try_start_d
    invoke-direct/range {v3 .. v11}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->CalculateCropConfidence(Ljava/util/ArrayList;IDDD)I

    move-result p0

    iput p0, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mOutCropConfidence:I

    if-nez p0, :cond_14

    iget-object v4, v3, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mAllCornersInfo:Ljava/util/ArrayList;

    move-wide v8, v6

    invoke-direct/range {v3 .. v11}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->CalculateCropConfidence(Ljava/util/ArrayList;IDDD)I

    move-result p0

    iput p0, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mOutCropConfidence:I

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_7
    move-object p1, v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v3, p0

    goto :goto_7

    :cond_13
    move-object v3, p0

    :cond_14
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    long-to-double p0, p0

    const/16 v4, 0x3e8

    int-to-double v4, v4

    div-double/2addr p0, v4

    iput-wide p0, v3, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mTimeTakenInGetLiveCorners:D

    iget p0, v3, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFramesBD:I

    if-lez p0, :cond_15

    invoke-direct {v3}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->AdjustBoundaryConfidenceThresholds()V

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    iput-wide p0, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mTimeTaken:J

    iget p0, v3, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidence:I

    iput p0, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mBoundaryConfidence:I

    iget p0, v3, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I

    iput p0, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mBoundaryDisplayThreshold:I

    iget p0, v3, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForCaptureThreshold:I

    iput p0, p2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mBoundaryCaptureThreshold:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    monitor-exit v3

    return v2

    :goto_9
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw p1
.end method

.method public resetCropConfidenceParams()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mAllCornersInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDisplayedCornersInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInvalidations:I

    return-void
.end method

.method public resetLiveBoundary()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->resetLiveBoundary(Z)V

    .line 2
    sget-object v1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationEnd:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    .line 3
    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mDocClassificationConfidence:I

    .line 4
    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mNumInputFrames:I

    return-void
.end method

.method public setBoundaryConfidenceThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mBoundaryConfidenceForDisplayThreshold:I

    return-void
.end method

.method public setCornerToleranceLimit(D)V
    .locals 0

    iput-wide p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mCornerToleranceLimit:D

    return-void
.end method

.method public setCropConfidenceThresholds(Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mInCropConfidence:Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;

    return-void
.end method

.method public setDisplayedBoundaryUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryUpdateInterval:J

    return-void
.end method

.method public setEnableBetaFeatures(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mEnableBetaFeatures:Z

    return-void
.end method

.method public setLiveBoundaryCaptureEnableInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryCaptureEnableInterval:J

    return-void
.end method

.method public setLiveBoundaryHintUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->mLiveBoundaryHintUpdateInterval:J

    return-void
.end method
