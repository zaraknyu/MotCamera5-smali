.class public Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeDetectionOutput"
.end annotation


# instance fields
.field public mCCornersInfoVec:[Lcom/adobe/magic_clean/CCornersInfo;

.field public mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public mInputBmpBDSize:Landroid/graphics/Bitmap;

.field public mInputBmpNNMaskPage1:[B

.field public mInputBmpNNMaskPage2:[B

.field public mInputRotatedBmpForBD:Landroid/graphics/Bitmap;

.field public mIsImageRotated:Z

.field public mIsLowContrast:Z

.field public mIsNNPageMaskAvailable:Z

.field public mMLAnalyticsOutput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    sget-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationEnd:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mIsLowContrast:Z

    new-instance v1, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;

    invoke-direct {v1}, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;-><init>()V

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mMLAnalyticsOutput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;->mIsNNPageMaskAvailable:Z

    return-void
.end method
