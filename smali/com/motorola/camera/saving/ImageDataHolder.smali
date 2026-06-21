.class public final Lcom/motorola/camera/saving/ImageDataHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCameraId:Ljava/lang/String;

.field public mData:Ljava/nio/ByteBuffer;

.field public final mFinalHeight:I

.field public final mFinalWidth:I

.field public final mFlip:Z

.field public final mHeight:I

.field public mImageType:I

.field public final mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field public final mStride:[I

.field public final mWidth:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;IIII[IZLjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    iput-object p2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    iput p4, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    iput p5, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalWidth:I

    iput p6, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalHeight:I

    iput-object p7, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mStride:[I

    iput-boolean p8, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFlip:Z

    iput-object p9, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mCameraId:Ljava/lang/String;

    iput-object p10, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/nio/ByteBuffer;
    .locals 14

    iget v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v1, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    const/4 v13, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lez v3, :cond_2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v4

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Byte;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-gtz v3, :cond_1

    move v12, v4

    goto :goto_1

    :cond_1
    move v12, v3

    :goto_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sget-object v3, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    iget v3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    iget v4, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    iget v5, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalWidth:I

    iget v6, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalHeight:I

    iget-object v7, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mStride:[I

    iget-boolean v10, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFlip:Z

    move v11, v9

    move v9, v0

    invoke-static/range {v2 .. v12}, Lcom/motorola/camera/mcf/MotUtil;->createThumbnail([BIIII[IIIZII)[B

    move-result-object v0

    move v9, v11

    goto :goto_2

    :cond_2
    move-object v0, v13

    :goto_2
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Byte;->intValue()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    if-gtz v2, :cond_4

    move v10, v3

    goto :goto_4

    :cond_4
    move v10, v2

    :goto_4
    iget-object v2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget v7, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalHeight:I

    iget-boolean v8, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFlip:Z

    iget v3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    iget v4, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    iget-object v5, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mStride:[I

    iget v6, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalWidth:I

    invoke-static/range {v2 .. v10}, Lcom/motorola/camera/mcf/MotUtil;->compressJpeg([BII[IIIZII)[B

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v1, v13, v3, v0}, Lcom/motorola/camera/utility/ExifUtility;->appendExifToJpeg([BLandroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    return-object p0
.end method
