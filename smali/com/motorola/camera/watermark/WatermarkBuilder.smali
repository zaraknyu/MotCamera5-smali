.class public final Lcom/motorola/camera/watermark/WatermarkBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final context:Landroid/content/Context;

.field public imageHeight:I

.field public imageOrientation:I

.field public imageWidth:I

.field public watermarkContent:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

.field public watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

.field public watermarkStyle:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/watermark/WatermarkBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method public static calculateWatermarkSize(IIIII)Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    const/16 v1, 0x5a

    if-eq p4, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p4, v1, :cond_1

    :cond_0
    move p0, p1

    :cond_1
    int-to-float p1, p2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-static {p3, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result p1

    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p2
.end method


# virtual methods
.method public final build()[Landroid/graphics/Bitmap;
    .locals 44

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->loadStyles(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkStyle:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getCommonAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;

    move-result-object v2

    const-string v3, "commonAttributes == null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkStyle:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    instance-of v4, v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;

    const/4 v5, 0x2

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getFrameAttributes()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;

    move-result-object v9

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/graphics/Bitmap;

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;

    invoke-direct {v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;-><init>()V

    new-instance v8, Landroid/util/Size;

    iget v10, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    iget v11, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageHeight:I

    invoke-direct {v8, v10, v11}, Landroid/util/Size;-><init>(II)V

    invoke-static {v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    iput v10, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    iput v8, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageHeight:I

    new-instance v8, Lcom/motorola/camera/PreviewSize;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Landroid/util/Size;

    invoke-direct {v8, v10}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v8

    sget-object v10, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v10, v10, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v10}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v10

    invoke-static {v8, v10}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v14

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getLinePadding()I

    move-result v8

    mul-int/2addr v8, v5

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getImageLineHorizontalLength()I

    move-result v10

    add-int v15, v10, v8

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getLinePadding()I

    move-result v8

    mul-int/2addr v8, v5

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getImageLineVerticalLength()I

    move-result v10

    add-int/2addr v10, v8

    if-eqz v14, :cond_0

    move v10, v15

    :cond_0
    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getImageHorizontalLength()I

    move-result v8

    int-to-float v11, v8

    iget v8, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    invoke-static {v15, v11, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v8

    iget v12, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    invoke-static {v10, v11, v12}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v10

    iget v12, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    const/16 v13, 0xb4

    if-eqz v12, :cond_1

    if-ne v12, v13, :cond_2

    :cond_1
    move/from16 v43, v10

    move v10, v8

    move/from16 v8, v43

    :cond_2
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v3, :cond_4

    move/from16 v16, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getColor()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    if-eqz v17, :cond_3

    aget-object v13, v4, v12

    invoke-static {v13, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->addBackgroundToWatermark(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    aget-object v13, v4, v12

    if-eq v5, v13, :cond_3

    invoke-static {v13}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->safeRecycle(Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v12

    :cond_3
    move v5, v8

    aget-object v8, v4, v12

    move v13, v10

    move v10, v12

    iget v12, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    move/from16 v18, v13

    iget v13, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    const/16 v6, 0xb4

    const/16 v17, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawWireframeLine(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;IFIIZ)Landroid/graphics/Bitmap;

    add-int/lit8 v12, v10, 0x1

    move v8, v5

    move v13, v6

    move/from16 v5, v16

    move/from16 v10, v18

    goto :goto_0

    :cond_4
    move/from16 v16, v5

    move v5, v8

    move/from16 v18, v10

    move v6, v13

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkContent:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl()Z

    move-result v2

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    new-array v2, v3, [Landroid/graphics/Bitmap;

    aget-object v10, v4, v16

    aput-object v10, v2, v17

    aget-object v10, v4, v8

    aput-object v10, v2, v9

    aget-object v10, v4, v17

    aput-object v10, v2, v16

    aget-object v4, v4, v9

    aput-object v4, v2, v8

    move-object v4, v2

    :cond_5
    iget v2, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    if-eqz v2, :cond_6

    if-ne v2, v6, :cond_7

    :cond_6
    move/from16 v5, v18

    :cond_7
    iget-object v2, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkStyle:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    int-to-float v6, v15

    invoke-virtual {v7, v2, v6, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->initWatermarkAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;FI)V

    iget-object v2, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getSignatureEnabled()Z

    move-result v24

    iget-object v2, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result v30

    iget-object v2, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDateEnabled()Z

    move-result v33

    iget-object v2, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getTimeEnabled()Z

    move-result v34

    iget-object v2, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getShootingParamsEnabled()Z

    move-result v39

    new-instance v18, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    const/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v18 .. v25}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;-><init>(ZZZZZZZ)V

    move-object/from16 v2, v18

    new-instance v25, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    const/16 v26, 0x0

    const/16 v32, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v25 .. v32}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;-><init>(ZZZZZZZ)V

    move-object/from16 v5, v25

    new-instance v31, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    const/16 v38, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v31 .. v38}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;-><init>(ZZZZZZZ)V

    move-object/from16 v6, v31

    new-instance v35, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    const/16 v42, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-direct/range {v35 .. v42}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;-><init>(ZZZZZZZ)V

    move-object/from16 v10, v35

    filled-new-array {v2, v5, v6, v10}, [Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v2

    move/from16 v5, v17

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_9

    if-ge v5, v3, :cond_9

    aget-object v6, v4, v5

    aget-object v10, v2, v5

    iget-object v11, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkContent:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    invoke-virtual {v7, v1, v6, v10, v11}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->addWatermarksToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;)Landroid/graphics/Bitmap;

    move-result-object v6

    aget-object v10, v4, v5

    if-eq v6, v10, :cond_8

    invoke-static {v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->safeRecycle(Landroid/graphics/Bitmap;)V

    aput-object v6, v4, v5

    :cond_8
    aget-object v6, v4, v5

    invoke-static {v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->filterAlphaBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    iget-object v0, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkContent:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_a

    aget-object v0, v4, v9

    aget-object v1, v4, v17

    aget-object v2, v4, v16

    aget-object v3, v4, v8

    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_a
    aget-object v0, v4, v9

    aget-object v1, v4, v8

    aget-object v2, v4, v16

    aget-object v3, v4, v17

    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_b
    move/from16 v16, v5

    const/16 v17, 0x0

    instance-of v4, v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v4, :cond_e

    iget v3, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    iget v4, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageHeight:I

    iget v5, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    invoke-static {v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getRotatedSize(III)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v2, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->computeBorderPx(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;I)I

    move-result v4

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getWatermarkHeight()I

    move-result v5

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getWatermarkWidth()I

    move-result v6

    iget v7, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    iget v8, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageHeight:I

    iget v9, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    invoke-static {v7, v8, v6, v5, v9}, Lcom/motorola/camera/watermark/WatermarkBuilder;->calculateWatermarkSize(IIIII)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget v8, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    iget v9, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageHeight:I

    iget v10, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    invoke-static {v8, v9, v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getRotatedSize(III)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-static {v2, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->computeBorderPx(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    int-to-float v6, v6

    invoke-static {v5, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v6

    invoke-static {v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->roundUpToEven(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v8, v17

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getColor()I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {v7, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->addBackgroundToWatermark(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eq v8, v7, :cond_c

    invoke-static {v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->safeRecycle(Landroid/graphics/Bitmap;)V

    move-object v7, v8

    :cond_c
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;

    invoke-direct {v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;-><init>()V

    sget-object v9, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    int-to-float v5, v5

    invoke-virtual {v8, v9, v5, v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->initWatermarkAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;FI)V

    iget-object v5, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    iget-object v0, v0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkContent:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    invoke-virtual {v8, v1, v7, v5, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->addWatermarksToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v7, :cond_d

    invoke-static {v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->safeRecycle(Landroid/graphics/Bitmap;)V

    move-object v7, v0

    :cond_d
    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getColor()I

    move-result v0

    invoke-static {v3, v7, v4, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->attachWatermarkBottomWithFixedBorders(Landroid/util/Size;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->safeRecycle(Landroid/graphics/Bitmap;)V

    filled-new-array {v0}, [Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_e
    instance-of v1, v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    if-eqz v1, :cond_f

    invoke-virtual {v0, v2}, Lcom/motorola/camera/watermark/WatermarkBuilder;->createStandardWatermark(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;)[Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v17, 0x0

    aget-object v1, v0, v17

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->filterAlphaBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_f
    invoke-virtual {v0, v2}, Lcom/motorola/camera/watermark/WatermarkBuilder;->createStandardWatermark(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final createStandardWatermark(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;)[Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getWatermarkHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getWatermarkWidth()I

    move-result v1

    iget v2, p0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    iget v3, p0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageHeight:I

    iget v4, p0, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    invoke-static {v2, v3, v1, v0, v4}, Lcom/motorola/camera/watermark/WatermarkBuilder;->calculateWatermarkSize(IIIII)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->roundUpToEven(I)I

    move-result v1

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;

    invoke-direct {v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->addBackgroundToWatermark(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, v2, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->safeRecycle(Landroid/graphics/Bitmap;)V

    move-object v2, p1

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkStyle:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    int-to-float v0, v0

    invoke-virtual {v3, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->initWatermarkAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;FI)V

    iget-object p1, p0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    iget-object v0, p0, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkContent:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    iget-object p0, p0, Lcom/motorola/camera/watermark/WatermarkBuilder;->context:Landroid/content/Context;

    invoke-virtual {v3, p0, v2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->addWatermarksToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, v2, :cond_1

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->safeRecycle(Landroid/graphics/Bitmap;)V

    move-object v2, p0

    :cond_1
    filled-new-array {v2}, [Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
