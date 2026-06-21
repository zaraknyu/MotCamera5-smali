.class public Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCameraCleanLiveBoundaryOutput"
.end annotation


# instance fields
.field public mBoundaryCaptureThreshold:I

.field public mBoundaryConfidence:I

.field public mBoundaryDisplayThreshold:I

.field public mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

.field public mFrames:I

.field public mIsBoundaryUpdated:Z

.field public mIsLowContrast:Z

.field public mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

.field public mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

.field public mOriginalCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

.field public mOutCropConfidence:I

.field public mTimeTaken:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CCornersInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    new-instance v0, Lcom/adobe/magic_clean/CCornersInfo;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CCornersInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mOriginalCornersInfo:Lcom/adobe/magic_clean/CCornersInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mIsLowContrast:Z

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mIsBoundaryUpdated:Z

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;->kLiveBoundaryHintNone:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryHint;

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOff:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mLiveBoundaryTorchHint:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    const/4 v1, 0x1

    iput v1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mOutCropConfidence:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mFrames:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mBoundaryConfidence:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mBoundaryDisplayThreshold:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mBoundaryCaptureThreshold:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;->mTimeTaken:J

    return-void
.end method
