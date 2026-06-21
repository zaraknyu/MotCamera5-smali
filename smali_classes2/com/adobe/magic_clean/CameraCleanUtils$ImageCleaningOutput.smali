.class public Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCleaningOutput"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mCleaningLevel:I

.field public mCleaningMasks:Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;

.field public mDocumentColorType:I

.field public mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public mIsTintRemoved:Z

.field public mTintPixel:Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mIsTintRemoved:Z

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mCleaningLevel:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mDocumentColorType:I

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;-><init>()V

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mTintPixel:Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;-><init>()V

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;->mCleaningMasks:Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;

    return-void
.end method
