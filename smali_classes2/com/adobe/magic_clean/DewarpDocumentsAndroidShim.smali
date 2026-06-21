.class public Lcom/adobe/magic_clean/DewarpDocumentsAndroidShim;
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

.method private native addWhitePaddingToImage(Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadInput;Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
.end method

.method private native computeDocumentCurveForDewarping(Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
.end method

.method private native runDocumentDewarping(Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
.end method


# virtual methods
.method public AddWhitePaddingToImage(Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadInput;Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 1

    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadInput;->mInputBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object p0, p2, Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/DewarpDocumentsAndroidShim;->addWhitePaddingToImage(Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadInput;Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object p0

    return-object p0
.end method

.method public ComputeDocumentCurveForDewarping(Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 1

    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputBmpOriginalSize:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object p0, p2, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/DewarpDocumentsAndroidShim;->computeDocumentCurveForDewarping(Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object p0

    return-object p0
.end method

.method public RunDocumentDewarping(Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 1

    iget-object v0, p1, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;->mDewarpCurveInput:Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;

    iget-object v0, v0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;->mInputBmpOriginalSize:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object p0, p2, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/DewarpDocumentsAndroidShim;->runDocumentDewarping(Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object p0

    return-object p0
.end method
