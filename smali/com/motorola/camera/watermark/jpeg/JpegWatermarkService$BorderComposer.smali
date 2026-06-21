.class public final Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$BorderComposer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/watermark/jpeg/JpegWatermarkComposer;


# virtual methods
.method public final compose(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;[B[Landroid/graphics/Bitmap;ZZZILcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;)[B
    .locals 8

    array-length p0, p3

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p3, p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->fromName(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getCommonAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;

    move-result-object p0

    iget p3, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v0, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    iget v2, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-static {p3, v0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getRotatedSize(III)Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-static {p0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->computeBorderPx(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;I)I

    move-result v3

    new-instance v4, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;

    const/4 p0, 0x1

    move-object/from16 p3, p8

    invoke-direct {v4, p3, p0}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;I)V

    move-object v0, p2

    move v5, p4

    move v6, p5

    move v7, p6

    move v2, p7

    invoke-static/range {v0 .. v7}, Lcom/motorola/camera/mcf/MotUtil;->addBorderWatermarkToJpeg([BLjava/lang/Object;IILcom/motorola/camera/mcf/McfMetadataModificationCallable;ZZZ)[B

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    :cond_1
    return-object p0
.end method
