.class public Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DewarpCurveInput"
.end annotation


# instance fields
.field public mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public mEnableBetaFeatures:Z

.field public mInputBmpBDSize:Landroid/graphics/Bitmap;

.field public mInputBmpNNMaskPage1:[B

.field public mInputBmpNNMaskPage2:[B

.field public mInputBmpOriginalSize:Landroid/graphics/Bitmap;

.field public mInputRotatedBmpForBD:Landroid/graphics/Bitmap;

.field public mIsImageRotated:Z

.field public mIsNNPageMaskAvailable:Z

.field public mOriginalCornersInfo:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mIsImageRotated:Z

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mIsNNPageMaskAvailable:Z

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeBook:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mDocSelectorType:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    invoke-virtual {p0}, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->recycleData()V

    return-void
.end method


# virtual methods
.method public recycleData()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputBmpOriginalSize:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputBmpOriginalSize:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputBmpBDSize:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputBmpBDSize:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputRotatedBmpForBD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputRotatedBmpForBD:Landroid/graphics/Bitmap;

    :cond_2
    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mOriginalCornersInfo:[Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputBmpNNMaskPage1:[B

    iput-object v1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputBmpNNMaskPage2:[B

    return-void
.end method
