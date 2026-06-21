.class public Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DewarpOutput"
.end annotation


# instance fields
.field public mDewarpedBmp:Landroid/graphics/Bitmap;

.field public mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public mIsDocDewarped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;->mIsDocDewarped:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;->mDewarpedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;->recycleData()V

    return-void
.end method


# virtual methods
.method public recycleData()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;->mDewarpedBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;->mDewarpedBmp:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
