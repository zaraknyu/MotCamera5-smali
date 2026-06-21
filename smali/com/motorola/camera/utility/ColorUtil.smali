.class public abstract Lcom/motorola/camera/utility/ColorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

.field public static enable:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/utility/ColorUtil;->INSTANCE:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    return-void
.end method

.method public static final animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne p0, v0, :cond_2

    return-void

    :cond_2
    sget-boolean v1, Lcom/motorola/camera/utility/ColorUtil;->enable:Z

    if-eqz v1, :cond_4

    if-nez p2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const-string p2, "guidelineBegin"

    filled-new-array {v0, p0}, [I

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0025

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    return-void
.end method

.method public static final animatedSetGuidelineEnd(ILandroidx/constraintlayout/widget/Guideline;Z)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne p0, v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    return-void

    :cond_4
    :goto_2
    const-string p2, "guidelineEnd"

    filled-new-array {v0, p0}, [I

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static final applyWindowInsetsAsMargin(Landroid/app/Activity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method public static final applyWindowInsetsAsPadding(Landroidx/appcompat/app/AppCompatDialog;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;-><init>(I)V

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static barcodeVDCalculation(IILjava/lang/String;)I
    .locals 10

    const/4 v0, 0x2

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    packed-switch p1, :pswitch_data_0

    move p1, v3

    goto :goto_0

    :pswitch_0
    move p1, v1

    goto :goto_0

    :pswitch_1
    move p1, v2

    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 p2, 0x1

    if-ne p1, v2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    sub-int/2addr v1, p2

    move v4, v0

    :goto_1
    if-ltz v1, :cond_2

    aget-char v5, p0, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v5, v4

    invoke-virtual {p1, v3, v5}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    if-ge v4, p2, :cond_1

    move v4, v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length p1, p0

    move p2, v3

    :goto_2
    if-ge v3, p1, :cond_3

    aget-char v0, p0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    rem-int/2addr p2, v2

    if-eqz p2, :cond_4

    sub-int/2addr v2, p2

    return v2

    :cond_4
    return p2

    :cond_5
    if-ne p1, v1, :cond_9

    const/16 p1, 0x8

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    array-length v4, p0

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_3
    if-ge v5, v4, :cond_6

    aget-char v8, p0, v5

    aget v9, v0, v7

    add-int/2addr v7, p2

    rem-int/2addr v7, p1

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v9

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    rem-int/2addr v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    if-ne v6, v2, :cond_8

    return p2

    :cond_8
    sub-int/2addr v1, v6

    return v1

    :cond_9
    :goto_4
    return v3

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x4
        0x3
        0x2
        0x9
        0x8
        0x7
        0x6
        0x5
    .end array-data
.end method

.method public static final classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", returning null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ReflectionUtil"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertSize(Landroid/util/Size;I)Landroid/util/Size;
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public static count(Ljava/io/File;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->count(Ljava/io/File;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public static delete(Ljava/io/File;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v5, v2, v0

    invoke-static {v5}, Lcom/motorola/camera/utility/ColorUtil;->delete(Ljava/io/File;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez v1, :cond_3

    if-eqz p0, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_1
    return v0
.end method

.method public static findAspectRatio(Lcom/motorola/camera/VideoFormat;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSplitResolutionSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatioType;->DV:Lcom/motorola/camera/PreviewSize$AspectRatioType;

    invoke-static {v2}, Lcom/motorola/camera/PreviewSize;->getPreviewSizesForAspect(Lcom/motorola/camera/PreviewSize$AspectRatioType;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    iget-object v3, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-direct {v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Ljava/lang/Float;Ljava/util/List;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v0

    iget-object v2, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->getAspectRatio(Landroid/util/Size;)F

    move-result v3

    invoke-static {v3, v2}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {p0}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static getActiveArraySize()Landroid/graphics/Rect;
    .locals 7

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->getPreviewRectSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public static getArea(Landroid/util/Size;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getAspectRatio(Landroid/util/Size;)F
    .locals 2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-eqz p0, :cond_0

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dimension is zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getColor(Landroid/content/Context;I)I
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const v0, 0xffffff

    and-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v1, "#CAC1EA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "#DBBDE2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const p1, 0x7f0603fe

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getCurrentBrightness()F
    .locals 7

    const/high16 v0, 0x437f0000    # 255.0f

    const/16 v1, 0x100

    const/high16 v2, 0x7fc00000    # Float.NaN

    :try_start_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v4, "getInstance(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/os/PowerManager;

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getAutomaticScreenBrightness"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_2

    :goto_0
    int-to-float v1, v3

    div-float v2, v1, v0

    goto :goto_1

    :cond_0
    instance-of v0, v3, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :cond_1
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_2
    const-string/jumbo v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_2

    goto :goto_0

    :catch_1
    :cond_2
    :goto_1
    return v2
.end method

.method public static final getDeclaredInt(ILjava/lang/String;)I
    .locals 4

    const-class v0, Landroid/os/PowerManager;

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    instance-of v2, v1, Ljava/lang/NoSuchFieldException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using default value for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReflectionUtil"

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public static final getDefaultDpiAndScreenSizeOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_0

    :cond_0
    const v2, 0x3f99999a    # 1.2f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_1
    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "zz_moto_display_resolution_sizes"

    const-string v4, "array"

    const-string v5, "android"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    new-array v1, v3, [I

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    array-length v2, v1

    const/16 v6, 0x1a4

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->first([I)I

    move-result v1

    if-ne v2, v1, :cond_7

    const-string/jumbo v1, "zz_moto_display_resolution_densities"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    new-array v1, v3, [I

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_3
    array-length v2, v1

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->first([I)I

    move-result v1

    goto :goto_5

    :cond_7
    :goto_4
    :try_start_0
    invoke-static {v3}, Lmotorola/wrap/android/view/WindowManager_wrap;->getInitialDisplayDensity(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getDefaultDisplayDensity:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    :goto_5
    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v2, v4

    div-int/2addr v2, v1

    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x1b8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1c2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1e0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/Integer;

    move-result-object v1

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x352

    goto :goto_6

    :cond_8
    const/16 v2, 0x19c

    :goto_6
    iget v4, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    :goto_7
    const/4 v5, 0x5

    if-ge v3, v5, :cond_a

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v7, p0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v6, v7

    div-int/2addr v6, v5

    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v4, :cond_9

    iput v5, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v6, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    return-object v0
.end method

.method public static getPreviewRectSize()Lcom/motorola/camera/PreviewSize;
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    return-object v0
.end method

.method public static getTrueAspectRatio(Landroid/util/Size;)F
    .locals 1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dimension is zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasAspectRatio(Ljava/util/ArrayList;Landroid/util/Size;)Z
    .locals 1

    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCliAspectRatio(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Z
    .locals 1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCliStandardAspectRatioSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isSmallCliStandardAspectRatioSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p0, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p0, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO_ALT:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p0, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p0, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isSquareRatioSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p0, p1}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z
    .locals 1

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFullSizeAspectRatio(F)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->EQUIRECTANGULAR:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE18V7P7:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->FOLD_PORTRAIT:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->FOLD_LANDSCAPE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final isKeyguardLocked()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public static final isKeyguardSecure()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public static isNVUnsupportedAspectRatio(F)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V16:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V22:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSameAspectRatio(FF)Z
    .locals 1

    sub-float/2addr p0, p1

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 2
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 3
    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_ASPECT_TOLERANCE:Lcom/motorola/camera/AppFeatures$Feature;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p1, Ljava/util/EnumSet;

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3d75c28f    # 0.06f

    goto :goto_0

    :cond_0
    const p1, 0x3cf5c28f    # 0.03f

    :goto_0
    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameAspectRatio(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 0

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result p0

    return p0
.end method

.method public static isSameAspectRatio(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 8
    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p1

    .line 9
    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result p0

    return p0
.end method

.method public static final isSecureKeyGuardLocked()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSizeValid(Landroid/util/Size;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait(I)Z

    move-result p0

    return p0
.end method

.method public static final isTimerCapture(Lcom/google/zxing/Result;)Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "TIMER"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static final launchGallery(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget v1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f010022

    const v2, 0x7f010023

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setBrightnessForLaunch(Landroid/content/Intent;Landroidx/activity/ComponentActivity;)V

    iget p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    if-eqz p1, :cond_2

    const-string p1, "android.intent.extra.UID"

    const-string v2, "motcamera"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent;

    iget-boolean p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0, p0}, Lcom/motorola/camera/utility/ColorUtil;->supportsIntent(Landroid/content/Intent;Landroidx/activity/ComponentActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not find mediaId in SecureMediaIdsManager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not retrieve mediaId from the ActivityLaunchRequestInfo intent"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    invoke-static {v0, p0}, Lcom/motorola/camera/utility/ColorUtil;->supportsIntent(Landroid/content/Intent;Landroidx/activity/ComponentActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static onCaptureStarted()V
    .locals 3

    const-string v0, "TOTAL_CAPTURE_TIME_O"

    const/16 v1, 0xf

    invoke-static {v1, v0}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static onCaptureStopped(I)V
    .locals 3

    const-string v0, "TOTAL_CAPTURE_TIME_O"

    const/16 v1, 0xf

    invoke-static {v1, v0}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/utility/BoostManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/utility/BoostManager$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static readByteRecord(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 1

    invoke-static {p0, p1}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFile(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to read record from URL "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileUtility"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to read record for URL "

    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final requestDismissKeyguard(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/utility/ColorUtil;)V
    .locals 2

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;

    invoke-direct {v1, p1}, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;-><init>(Lcom/motorola/camera/utility/ColorUtil;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void

    :cond_0
    const-string p0, "KeyguardHelper"

    const-string v0, "Request dismiss keyguard, but not locked. Reporting success."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/motorola/camera/utility/ColorUtil;->onDismissSucceeded()V

    return-void
.end method

.method public static resolveActivityCompat$default(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x20000

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static saveRecord(Landroid/content/Context;[BLjava/lang/Long;)Landroid/net/Uri;
    .locals 22

    move-object/from16 v2, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v15, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    sget-object v1, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v3, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "compression"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "encryption"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "buffers"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/motorola/camera/background/common/IOMIMEType;->BINARY_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    sget-object v10, Lcom/motorola/camera/background/common/IOFormat;->BIN:Lcom/motorola/camera/background/common/IOFormat;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string/jumbo v4, "randomUUID(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "randomUUID"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v3, v4, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v9, v10, v7, v5, v6}, Lcom/motorola/camera/background/provider/FileDataContract;->createBaseFileName(Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    sget-object v13, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    const-string v13, "fileName"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->createBaseDir(Landroid/content/Context;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v0

    move-object/from16 v0, v17

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v8, v0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    move-object/from16 p1, v0

    add-int/lit8 v0, v8, 0x5

    div-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v8

    move-object/from16 v16, v1

    int-to-long v0, v0

    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v17

    cmp-long v0, v0, v17

    const-string v1, "com.motorola.camera5.background.provider.filedatacontract.FileProviderCustom"

    const/16 v21, 0x0

    if-gez v0, :cond_2

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v0

    move-object/from16 v0, v17

    check-cast v0, [B

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v2, v1, v14}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v13, Lcom/motorola/camera/background/provider/filedatacontract/FileStatus;

    invoke-direct {v13, v0, v8}, Lcom/motorola/camera/background/provider/filedatacontract/FileStatus;-><init>(Landroid/net/Uri;I)V

    goto :goto_3

    :goto_2
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    move-object/from16 v13, v21

    :goto_3
    if-eqz v13, :cond_5

    iget v0, v13, Lcom/motorola/camera/background/provider/filedatacontract/FileStatus;->size:I

    if-lez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v8, v21

    :goto_4
    if-eqz v8, :cond_4

    invoke-static {v2, v1, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    move-object v8, v0

    goto :goto_5

    :cond_4
    move-object/from16 v8, v21

    :goto_5
    if-eqz v8, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "getContentResolver(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, v13, Lcom/motorola/camera/background/provider/filedatacontract/FileStatus;->size:I

    const-wide/16 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v17, v0

    invoke-static/range {v2 .. v20}, Lcom/motorola/camera/background/provider/FileDataContract;->insertFileDatabase(Landroid/content/Context;JJLjava/lang/String;Landroid/net/Uri;Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;JJLcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;IIII)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    new-instance v3, Lkotlin/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "binArrayToFile: Error saving buffer with id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileDataContract"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v21

    :goto_6
    if-eqz v3, :cond_6

    iget-object v0, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_6

    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_6
    const-string v0, "FileUtility"

    const-string v1, "Failed to save byte data to file provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final setupBrightnessBump(Landroid/view/Window;Z)V
    .locals 7

    const-string/jumbo v0, "window"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "autoBrightnessAdjustment"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_1

    :catch_0
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpg-float p1, p1, v2

    if-nez p1, :cond_2

    :try_start_1
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v4, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->getCurrentBrightness()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getScreenBrightnessAdjustmentOffset()F

    move-result v2

    add-float/2addr v2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_2
    move v3, v4

    goto :goto_3

    :cond_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_2

    :catch_1
    :cond_2
    :goto_3
    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_3
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v3, 0x16

    invoke-direct {v2, v1, p0, v0, v3}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final setupProcessingPrimaryColor(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;)V
    .locals 5

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "elements1"

    const-string/jumbo v2, "stroke"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060405

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/CameraKpi;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x12

    invoke-direct {v3, v4, v1}, Lcom/motorola/camera/CameraKpi;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0, v0, v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/motorola/camera/CameraKpi;)V

    return-void
.end method

.method public static final supportsIntent(Landroid/content/Intent;Landroidx/activity/ComponentActivity;)Z
    .locals 1

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "getPackageManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/motorola/camera/utility/ColorUtil;->resolveActivityCompat$default(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 0

    return-void
.end method

.method public onDismissError()V
    .locals 0

    return-void
.end method

.method public abstract onDismissSucceeded()V
.end method
