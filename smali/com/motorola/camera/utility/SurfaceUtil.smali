.class public final Lcom/motorola/camera/utility/SurfaceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getUsage(ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
    .locals 2

    sget-object v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->Companion:Lcom/motorola/camera/utility/SurfaceUtil;

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGrallocUsageFlags:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x23f7b020

    if-eq v0, v1, :cond_4

    const v1, 0x5209eeeb

    if-eq v0, v1, :cond_2

    const v1, 0x5c13d641

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->DEFAULT:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;

    goto :goto_1

    :cond_2
    const-string v0, "mtk_g9x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->MTKG9X:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "qsm8250"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->QSM8250:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;

    goto :goto_1

    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GrallocUsageFlags not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SurfaceUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->DEFAULT:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;

    :goto_1
    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;
    .locals 7

    const-string/jumbo v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x23

    invoke-static {v3, p1, p2}, Lcom/motorola/camera/utility/SurfaceUtil;->getUsage(ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v4, 0x3

    invoke-static/range {v1 .. v6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    const-string p1, "newInstance(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-object p0
.end method

.method public static final newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;
    .locals 7

    const-string/jumbo v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3, p4}, Lcom/motorola/camera/utility/SurfaceUtil;->getUsage(ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    const-string p1, "newInstance(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;
    .locals 7

    const-string/jumbo v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3, p4}, Lcom/motorola/camera/utility/SurfaceUtil;->getUsage(ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    new-instance p0, Lcom/motorola/camera/utility/ImageReaderWrapper;

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;-><init>(Landroid/media/ImageReader;)V

    return-object p0
.end method
