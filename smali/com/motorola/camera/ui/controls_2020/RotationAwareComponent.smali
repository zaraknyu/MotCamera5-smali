.class public abstract Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# instance fields
.field public final valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-string p2, "ofInt(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->valueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public getLimitRotatedViews()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public getRotatedDrawables()Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getRotatedViews()Ljava/util/List;
.end method

.method public rotate(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    return-void
.end method

.method public final rotate(IZ)V
    .locals 8

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotateDrawables(IZ)V

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->getRotatedViews()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v5

    iget v6, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v6, v6, 0x168

    int-to-float v6, v6

    sub-float/2addr v6, v5

    cmpg-float v4, v6, v4

    const/high16 v7, 0x43b40000    # 360.0f

    if-gez v4, :cond_1

    add-float/2addr v6, v7

    :cond_1
    cmpl-float v3, v6, v3

    if-lez v3, :cond_2

    sub-float/2addr v6, v7

    :cond_2
    add-float/2addr v5, v6

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 10
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 12
    :cond_4
    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->getLimitRotatedViews()Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 15
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_6

    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v4

    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final rotateDrawables(IZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->getRotatedDrawables()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v2, :cond_8

    check-cast v1, Landroid/graphics/drawable/RotateDrawable;

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-ne v2, p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    sub-int v3, p1, v2

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 v3, v3, 0x168

    :goto_1
    const/16 v4, 0xb4

    if-le v3, v4, :cond_3

    add-int/lit16 v3, v3, -0x168

    :cond_3
    if-gez v3, :cond_5

    rsub-int v2, v2, 0x168

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit16 v2, v2, 0x9c4

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    rsub-int v3, p1, 0x168

    div-int/lit8 v3, v3, 0x5a

    mul-int/lit16 v3, v3, 0x9c4

    goto :goto_2

    :cond_5
    div-int/lit8 v2, v2, 0x5a

    mul-int/lit16 v2, v2, -0x9c4

    div-int/lit8 v3, p1, 0x5a

    mul-int/lit16 v3, v3, -0x9c4

    if-nez v3, :cond_6

    const/16 v3, -0x2710

    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_7

    const v5, 0x7f0b006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    goto :goto_3

    :cond_7
    const-wide/16 v4, 0x0

    :goto_3
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda4;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotateDrawableRotation$2;

    invoke-direct {v1}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "RotationAwareComponent"

    const-string v2, "Not RotateDrawable instance"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public show()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void
.end method
