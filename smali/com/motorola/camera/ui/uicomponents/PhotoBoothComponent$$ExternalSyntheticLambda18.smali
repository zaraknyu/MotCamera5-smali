.class public final synthetic Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$3:Landroid/graphics/Canvas;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;->f$1:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iput-object p3, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;->f$3:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/motorola/camera/CameraData;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;->f$0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;->f$1:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->getAspectRatio(Landroid/util/Size;)F

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v5, 0x55a

    if-le v4, v1, :cond_0

    new-instance v1, Landroid/util/Size;

    int-to-float v4, v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-direct {v1, v3, v5}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/Size;

    int-to-float v4, v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-direct {v1, v5, v3}, Landroid/util/Size;-><init>(II)V

    :goto_0
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v5, v1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v1

    const/16 v5, 0xb4

    if-ne v1, v5, :cond_3

    :cond_2
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v4, v3}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v3, v4}, Landroid/util/Size;-><init>(II)V

    :goto_1
    invoke-static {v2, p1, v1}, Lcom/motorola/camera/Util;->loadThumbnailByTargetSize(Landroid/content/Context;Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_4

    const-string p1, "PhotoBoothComponent"

    const-string/jumbo v0, "srcBmp is null, aborting"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    if-lt v4, v5, :cond_5

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v2, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-direct {v4, v6, v2, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    const/16 v2, 0x592

    const/16 v5, 0x38

    if-eqz v0, :cond_9

    const/16 v6, 0xb08

    const/16 v7, 0x5ae

    if-eq v0, v1, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v7, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v7, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;->f$3:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, v4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
