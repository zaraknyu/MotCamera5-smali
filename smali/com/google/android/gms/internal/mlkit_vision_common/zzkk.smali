.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getFoldGuideLine(Landroid/content/Context;Lcom/motorola/camera/EventListener;)Lkotlin/Pair;
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const-string v1, "getLayoutManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v2

    iget p1, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v2, p1

    sub-float p1, v1, v2

    const v2, 0x7f070584

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, p1

    if-eqz v0, :cond_0

    div-float p1, v1, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07007a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    mul-float/2addr v2, p1

    add-float/2addr v2, p1

    goto :goto_0

    :cond_0
    const p1, 0x7f07006f

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    const v2, 0x7f070079

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    const v2, 0x7f070078

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    add-float v2, v4, p1

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    div-float v4, v2, v1

    goto :goto_1

    :cond_1
    div-float v4, v2, v1

    sub-float v4, p1, v4

    :goto_1
    if-eqz v0, :cond_2

    div-float v2, v1, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr p0, v2

    add-float/2addr p0, v2

    goto :goto_2

    :cond_2
    const v3, 0x7f070077

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    const v5, 0x7f070083

    invoke-static {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v2

    :goto_2
    if-eqz v0, :cond_3

    div-float/2addr p0, v1

    goto :goto_3

    :cond_3
    div-float/2addr p0, v1

    sub-float p0, p1, p0

    :goto_3
    new-instance p1, Lkotlin/Pair;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
