.class public final Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SourceFile"


# instance fields
.field public mCurrentCount:I

.field public final mDelta:F

.field public final mDuration:J

.field public final mEnd:F

.field public mPeakValue:F

.field public final mRepeatCount:I

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public final mStart:F

.field public mStartTime:J

.field public final mType:I


# direct methods
.method public constructor <init>(Landroidx/collection/internal/Lock;JFFII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Landroidx/collection/internal/Lock;)V

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatMode:I

    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatCount:I

    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDuration:J

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStart:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mEnd:F

    sub-float/2addr p5, p4

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDelta:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mType:I

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 14

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStart:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mEnd:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mType:I

    if-ne v3, v6, :cond_f

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_17

    invoke-virtual {v2, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v5

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    sub-long v8, v6, v8

    long-to-float v8, v8

    iget-wide v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDuration:J

    long-to-float v9, v9

    div-float/2addr v8, v9

    iget-boolean v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatMode:I

    const/4 v11, -0x1

    iget v12, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatCount:I

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v9, :cond_7

    cmpl-float v9, v8, v13

    if-lez v9, :cond_c

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    if-le v8, v12, :cond_4

    if-ne v12, v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_17

    invoke-virtual {v2, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v5

    :cond_4
    :goto_2
    iput-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    invoke-static {v10}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    if-eqz v2, :cond_6

    if-eq v2, v3, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_3

    :cond_6
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    goto :goto_6

    :cond_7
    cmpl-float v9, v8, v13

    if-lez v9, :cond_c

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    if-le v8, v12, :cond_a

    if-ne v12, v11, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_17

    invoke-virtual {v2, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v5

    :cond_a
    :goto_5
    iput-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    invoke-static {v10}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    goto :goto_6

    :cond_c
    move v4, v8

    :cond_d
    :goto_6
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDelta:F

    if-eqz v2, :cond_e

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-interface {p0, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v5

    sub-float/2addr v0, p0

    goto :goto_7

    :cond_e
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-interface {p0, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v5

    add-float v0, p0, p1

    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v0, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_8

    :cond_f
    const/4 v7, 0x2

    if-ne v7, v6, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    long-to-float v9, v6

    mul-float/2addr v8, v9

    mul-long/2addr v6, v6

    long-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v8, v6

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mPeakValue:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_10

    if-eqz v2, :cond_17

    invoke-virtual {v2, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v5

    :cond_10
    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mPeakValue:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v4

    mul-float/2addr v6, v8

    cmpg-float v4, p1, v0

    const/high16 v7, -0x40800000    # -1.0f

    if-gez v4, :cond_11

    add-float v4, p1, v6

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_13

    :cond_11
    cmpl-float v4, p1, v0

    if-lez v4, :cond_12

    add-float v8, p1, v6

    cmpg-float v8, v8, v0

    if-ltz v8, :cond_13

    :cond_12
    if-nez v4, :cond_15

    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_9

    :cond_14
    if-eqz v2, :cond_17

    invoke-virtual {v2, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v5

    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-float v1, p1, v6

    invoke-virtual {v0, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_a

    :cond_16
    return v3

    :cond_17
    return v5
.end method

.method public final cancelAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/collection/internal/Lock;->onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_0
    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mPeakValue:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/collection/internal/Lock;->onAnimationStart()V

    :cond_0
    return-void
.end method
