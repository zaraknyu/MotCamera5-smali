.class public final synthetic Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mcf/McfMetadataModificationCallable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    iput-boolean p2, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyMetadata([BII)[B
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    :try_start_0
    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    iget-object p1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p0, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;->f$1:Z

    if-eqz p0, :cond_1

    :try_start_1
    iget-object p1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    iget-object v0, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    if-eqz v0, :cond_0

    iput-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    iget-object p1, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    iput-object p1, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    :cond_0
    iput p2, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mPrimaryImageSize:I

    iput p3, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSecondaryImageSize:I

    :cond_1
    invoke-virtual {v1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "EXIF update failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SaveImageService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public save(II[B)[B
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    :try_start_0
    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    iget-object p3, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object p3, p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v1, p3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p0, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;->f$1:Z

    if-eqz p0, :cond_1

    :try_start_1
    iget-object p3, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object p3, p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    iget-object v0, p3, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    if-eqz v0, :cond_0

    iput-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    iget-object p3, p3, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    iput-object p3, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    :cond_0
    iput p1, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mPrimaryImageSize:I

    iput p2, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSecondaryImageSize:I

    :cond_1
    invoke-virtual {v1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "JpegWatermarkService"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
