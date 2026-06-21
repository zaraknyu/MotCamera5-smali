.class public Lcom/adobe/magic_clean/CameraCleanDocDetectionAndroidShim;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MagicClean"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native detectDocType(Landroid/graphics/Bitmap;Z)Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;
.end method


# virtual methods
.method public DetectDocType(Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;)Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;->mInputBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/adobe/magic_clean/CameraCleanDocDetectionAndroidShim;->IsInputValid(Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v1, Lcom/adobe/magic_clean/DocDetectionUtils;->kImageDimensionsForDocDetectionNN:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/adobe/magic_clean/DocDetectionUtils;->kImageDimensionsForDocDetectionNN:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;->mInputBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;->mInputBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/adobe/magic_clean/DocDetectionUtils;->kImageDimensionsForDocDetectionNN:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-boolean p1, p1, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;->mIsLiveCaptureCase:Z

    invoke-direct {p0, v0, p1}, Lcom/adobe/magic_clean/CameraCleanDocDetectionAndroidShim;->detectDocType(Landroid/graphics/Bitmap;Z)Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_3

    new-instance p0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;

    invoke-direct {p0}, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;-><init>()V

    :cond_3
    return-object p0
.end method

.method public IsInputValid(Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
