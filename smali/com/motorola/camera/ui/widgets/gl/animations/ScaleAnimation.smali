.class public final Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SourceFile"


# instance fields
.field public mCurrentCount:I

.field public final mDelta:F

.field public final mDuration:J

.field public final mEnd:F

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public final mStart:F

.field public mStartTime:J


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;FF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Landroidx/collection/internal/Lock;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatMode:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDuration:J

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStart:F

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mEnd:F

    sub-float/2addr p3, p2

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDelta:F

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 12

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    const/4 v1, 0x0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mEnd:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v3, v2, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    sub-long v7, v5, v7

    long-to-float p1, v7

    iget-wide v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDuration:J

    long-to-float v7, v7

    div-float/2addr p1, v7

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStart:F

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatMode:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v7, :cond_7

    cmpl-float v7, p1, v4

    if-lez v7, :cond_c

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    if-lez p1, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v3, v2, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v1

    :cond_3
    iput-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    invoke-static {v9}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v2, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_2

    :cond_5
    iput-boolean v11, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    :cond_6
    :goto_3
    move p1, v10

    goto :goto_5

    :cond_7
    cmpl-float v7, p1, v4

    if-lez v7, :cond_c

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    if-lez p1, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2, v8, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_9
    return v1

    :cond_a
    iput-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    invoke-static {v9}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    goto :goto_3

    :cond_c
    :goto_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDelta:F

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v1

    sub-float/2addr v2, p0

    goto :goto_6

    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v1

    add-float v2, p0, v8

    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v2, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_7

    :cond_e
    return v11
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/collection/internal/Lock;->onAnimationStart()V

    :cond_0
    return-void
.end method
