.class public Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeDetectionInput"
.end annotation


# instance fields
.field public mBDWorkflow:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;

.field public mCCornersInfoVec:[Lcom/adobe/magic_clean/CCornersInfo;

.field public mDeviceOrientation:Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

.field public mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public mEnableBetaFeatures:Z

.field public mInputImage:Landroid/graphics/Bitmap;

.field public mInputImageBD:Landroid/graphics/Bitmap;

.field public mInputImageDC:Landroid/graphics/Bitmap;

.field public mIsLowContrast:Z

.field public mMLAnalyticsInput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImage:Landroid/graphics/Bitmap;

    new-instance p1, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;

    invoke-direct {p1}, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;-><init>()V

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mBDWorkflow:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mIsLowContrast:Z

    sget-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationEnd:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeEnd:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mEnableBetaFeatures:Z

    new-instance p1, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;

    invoke-direct {p1}, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;-><init>()V

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mMLAnalyticsInput:Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;

    sget-object p1, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;->kDeviceOrientationLandscape:Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mDeviceOrientation:Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    return-void
.end method


# virtual methods
.method public recycleBitmaps()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImage:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImageBD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImageBD:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImageDC:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;->mInputImageDC:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method
