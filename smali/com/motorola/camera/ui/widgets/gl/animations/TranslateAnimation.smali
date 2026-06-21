.class public final Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SourceFile"


# instance fields
.field public mCurrentCount:I

.field public final mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mDistance:F

.field public final mDuration:J

.field public final mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public final mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mStartTime:J

.field public final mType:I

.field public final mVelocity:F


# direct methods
.method public constructor <init>(Landroidx/collection/internal/Lock;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Landroidx/collection/internal/Lock;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDuration:J

    .line 4
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 6
    invoke-virtual {p4, p5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mVelocity:F

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, p5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 9
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 10
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 11
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 12
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->normalize()V

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mType:I

    const/4 p1, 0x2

    .line 14
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    .line 15
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Landroidx/collection/internal/Lock;)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mVelocity:F

    .line 20
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 21
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 22
    invoke-virtual {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    .line 23
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 24
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p2, p4

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 25
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p2, p4

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 26
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 27
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->normalize()V

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mType:I

    const-wide/16 p2, 0x0

    .line 29
    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDuration:J

    .line 30
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    .line 31
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mType:I

    if-ne v6, v9, :cond_c

    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz v9, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Landroidx/collection/internal/Lock;->onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v8

    :cond_0
    move/from16 p1, v8

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    sub-long v11, v9, v11

    long-to-float v11, v11

    iget-wide v12, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDuration:J

    long-to-float v12, v12

    div-float/2addr v11, v12

    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v12, :cond_4

    cmpl-float v12, v11, v15

    if-lez v12, :cond_7

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    add-int/2addr v11, v6

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    if-lez v11, :cond_2

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v8

    :cond_2
    iput-wide v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    if-ne v13, v6, :cond_3

    iput-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    :cond_3
    :goto_0
    move v11, v14

    goto :goto_1

    :cond_4
    cmpl-float v12, v11, v15

    if-lez v12, :cond_7

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    add-int/2addr v11, v6

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    if-lez v11, :cond_5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v8

    :cond_5
    iput-wide v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    invoke-static {v13}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_0

    :cond_6
    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    goto :goto_0

    :cond_7
    :goto_1
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-interface {v9, v11}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v9, v4

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    if-eqz v0, :cond_8

    const/high16 v11, -0x40800000    # -1.0f

    mul-float/2addr v4, v11

    mul-float/2addr v10, v11

    mul-float/2addr v3, v11

    :cond_8
    mul-float/2addr v4, v9

    mul-float/2addr v10, v9

    mul-float/2addr v3, v9

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz v0, :cond_9

    move-object v1, v2

    :cond_9
    invoke-direct {v9, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v0, v4

    iput v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v0, v10

    iput v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, v3

    iput v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_b

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v5, :cond_a

    invoke-virtual {v5, v9}, Landroidx/collection/internal/Lock;->onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    return v6

    :cond_c
    const/4 v10, 0x2

    if-ne v10, v9, :cond_0

    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz v9, :cond_e

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_3

    :cond_d
    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return v8

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    sub-long/2addr v9, v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v12, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v13, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v14, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v15, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    move/from16 p1, v8

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mVelocity:F

    mul-float/2addr v13, v8

    mul-float/2addr v14, v8

    mul-float/2addr v15, v8

    long-to-float v8, v9

    mul-float/2addr v13, v8

    mul-float/2addr v14, v8

    mul-float/2addr v15, v8

    iget v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v8, v13

    iput v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v8, v14

    iput v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v8, v15

    iput v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v1, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result v8

    cmpl-float v8, v8, v4

    if-ltz v8, :cond_f

    invoke-virtual {v12, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move/from16 v6, p1

    :cond_f
    invoke-virtual {v11, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v5, v12}, Landroidx/collection/internal/Lock;->onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move/from16 v8, p1

    goto :goto_4

    :cond_10
    if-nez v6, :cond_11

    invoke-virtual {v5, v0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_11
    return v6

    :goto_5
    return p1
.end method

.method public final startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    .line 5
    filled-new-array {p2}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/collection/internal/Lock;->onAnimationStart()V

    :cond_0
    return-void
.end method
