.class public Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterThumbnailOutput"
.end annotation


# instance fields
.field public mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public mOutputImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;->mOutputImage:Landroid/graphics/Bitmap;

    return-void
.end method
