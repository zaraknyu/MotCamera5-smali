.class public abstract Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static embedWatermarksToJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Z[Landroid/graphics/Bitmap;Z)Z
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->isUltraHdr()Z

    move-result v6

    iget v1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-static {v1, p1}, Lcom/motorola/camera/mcf/MotUtil;->getWmFirstPosition(IZ)I

    move-result v8

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->fromName(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lokio/Timeout;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lokio/Timeout;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$BorderComposer;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    instance-of v1, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/mlkit/common/internal/zze;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lokio/Timeout;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lokio/Timeout;-><init>(I)V

    :goto_0
    new-instance v9, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v6}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Z)V

    move-object v2, p0

    move v5, p1

    move-object v4, p2

    move v7, p3

    invoke-interface/range {v1 .. v9}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkComposer;->compose(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;[B[Landroid/graphics/Bitmap;ZZZILcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;)[B

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "JpegWatermarkService"

    const-string p1, "Watermarked JPEG was not successfully created"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    const/4 p0, 0x1

    return p0
.end method
