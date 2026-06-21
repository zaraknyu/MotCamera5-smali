.class public Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCleaningInput"
.end annotation


# instance fields
.field public mCleaningLevel:I

.field public mCleaningMasks:Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;

.field public mCorners:[Landroid/graphics/PointF;

.field public mCropAndCleanMode:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

.field public mEnableBetaFeatures:Z

.field public mInputImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mInputImage:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mCorners:[Landroid/graphics/PointF;

    iput p3, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mCleaningLevel:I

    sget-object p1, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->kCropAndCleanModeOverride:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mCropAndCleanMode:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mEnableBetaFeatures:Z

    new-instance p1, Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;

    invoke-direct {p1}, Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;-><init>()V

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;->mCleaningMasks:Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;

    return-void
.end method
