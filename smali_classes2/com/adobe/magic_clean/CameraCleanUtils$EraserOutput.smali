.class public Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EraserOutput"
.end annotation


# instance fields
.field public mBackgroundBmp:Landroid/graphics/Bitmap;

.field public mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;->mBackgroundBmp:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-void
.end method
