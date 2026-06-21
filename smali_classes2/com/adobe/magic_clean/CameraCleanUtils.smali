.class public Lcom/adobe/magic_clean/CameraCleanUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;,
        Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;,
        Lcom/adobe/magic_clean/CameraCleanUtils$CCleaningMasks;,
        Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;,
        Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;,
        Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningOutput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$ImageCleaningInput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionInput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadOutput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadInput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$DewarpOutput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$EraserOutput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;,
        Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;,
        Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;,
        Lcom/adobe/magic_clean/CameraCleanUtils$CleaningLevel;,
        Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;,
        Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    }
.end annotation


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

.method public static RotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRGBABitmapFromYUVBuffer([BII)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanUtils;->getRGBABitmapFromYUVNative([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static native getRGBABitmapFromYUVNative([BII)Landroid/graphics/Bitmap;
.end method

.method private static native getRGBABitmapFromYUV_420_888([BI[BI[BIIII)Landroid/graphics/Bitmap;
.end method

.method public static getRGBABitmapFromYUV_420_888_Buffer([BI[BI[BIIII)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/adobe/magic_clean/CameraCleanUtils;->getRGBABitmapFromYUV_420_888([BI[BI[BIIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static setBasePathToModels(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/adobe/magic_clean/CameraCleanUtils;->setBasePathToModelsNative(Ljava/lang/String;)V

    return-void
.end method

.method private static native setBasePathToModelsNative(Ljava/lang/String;)V
.end method
