.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz v0, :cond_16

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v5, "mEventHandler"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getTransitionDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [I

    invoke-virtual {v4, v6}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v7

    sget-boolean v8, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accelerometer_rotation"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v3, :cond_2

    move v8, v3

    goto :goto_0

    :cond_2
    move v8, v2

    :goto_0
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1, v9, v10, v11, p0}, Landroid/graphics/Rect;->inset(IIII)V

    :cond_3
    const/16 p0, 0x5a

    const/16 v9, 0xb4

    const/16 v10, 0x10e

    if-nez v8, :cond_d

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_b

    :cond_4
    iget v8, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-eq v8, p0, :cond_9

    if-ne v8, v10, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getRotation(I)F

    move-result p0

    invoke-virtual {v4, p0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v10, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v10, v9, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/2addr v10, v5

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    neg-int v10, v10

    div-int/2addr v10, v5

    :goto_1
    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v11, v9, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    neg-int v9, v9

    div-int/2addr v9, v5

    :goto_2
    if-eqz v7, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    aget v2, v6, v2

    sub-int/2addr v7, v2

    add-int/2addr v7, v10

    neg-int v2, v7

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v5

    aget v2, v6, v2

    sub-int/2addr v7, v2

    add-int v2, v7, v10

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/2addr v7, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    aget v3, v6, v3

    :goto_4
    sub-int/2addr p1, v3

    add-int/2addr p1, v9

    :goto_5
    sub-int/2addr v7, p1

    neg-int p1, v7

    goto/16 :goto_13

    :cond_9
    :goto_6
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getRotation(I)F

    move-result p0

    invoke-virtual {v4, p0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v9, v10, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/2addr v9, v5

    goto :goto_7

    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    neg-int v9, v9

    div-int/2addr v9, v5

    :goto_7
    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v11, v10, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    neg-int v10, v10

    div-int/2addr v10, v5

    goto :goto_8

    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/2addr v10, v5

    :goto_8
    if-eqz v7, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    aget v2, v6, v2

    sub-int/2addr v7, v2

    add-int/2addr v7, v9

    neg-int v2, v7

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v5

    aget v2, v6, v2

    sub-int/2addr v7, v2

    add-int/2addr v7, v9

    move v2, v7

    :goto_9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/2addr v7, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    aget v3, v6, v3

    :goto_a
    sub-int/2addr p1, v3

    add-int/2addr p1, v10

    goto :goto_5

    :cond_d
    :goto_b
    iget v8, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-eq v8, p0, :cond_12

    if-ne v8, v10, :cond_e

    goto :goto_f

    :cond_e
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getRotation(I)F

    move-result p0

    invoke-virtual {v4, p0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v10, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v10, v9, :cond_f

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/2addr v10, v5

    goto :goto_c

    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    neg-int v10, v10

    div-int/2addr v10, v5

    :goto_c
    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v11, v9, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    goto :goto_d

    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    neg-int v9, v9

    div-int/2addr v9, v5

    :goto_d
    if-eqz v7, :cond_11

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    aget v2, v6, v2

    sub-int/2addr v7, v2

    add-int/2addr v7, v10

    neg-int v2, v7

    goto :goto_e

    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v5

    aget v2, v6, v2

    sub-int/2addr v7, v2

    add-int/2addr v7, v10

    move v2, v7

    :goto_e
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/2addr v7, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    aget v3, v6, v3

    goto/16 :goto_4

    :cond_12
    :goto_f
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v9, v10, :cond_13

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/2addr v9, v5

    goto :goto_10

    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    neg-int v9, v9

    div-int/2addr v9, v5

    :goto_10
    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v11, v10, :cond_14

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    neg-int v10, v10

    div-int/2addr v10, v5

    goto :goto_11

    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/2addr v10, v5

    :goto_11
    if-eqz v7, :cond_15

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    aget v2, v6, v2

    sub-int/2addr v7, v2

    add-int/2addr v7, v9

    neg-int v2, v7

    goto :goto_12

    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v5

    aget v2, v6, v2

    sub-int/2addr v7, v2

    add-int/2addr v7, v9

    move v2, v7

    :goto_12
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/2addr v7, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    aget v3, v6, v3

    goto/16 :goto_a

    :goto_13
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr p0, v2

    add-int/2addr v8, p1

    invoke-direct {v3, v2, p1, p0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->videoIndication:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    iget p0, v3, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-virtual {v4, p0}, Landroid/view/View;->setX(F)V

    iget p0, v3, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {v4, p0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    :cond_16
    return-object v1

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/CameraData;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p1

    if-ne p1, v3, :cond_17

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_17

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryProcessBar:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_17

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_17
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
